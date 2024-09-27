
import 'package:coffeemerging/database.dart';
import 'package:coffeemerging/description.dart';
import 'package:flutter/material.dart';

class CoffeeExp extends StatelessWidget{
  @override
  Widget build(BuildContext context){
   

    return Scaffold(
backgroundColor: Color.fromARGB(255, 44, 40, 40),
body: Padding(
  padding: EdgeInsets.all(10),
  child: Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    mainAxisAlignment: MainAxisAlignment.start,
    children: [
      Text("deja",style: TextStyle(color: Colors.grey,fontSize: 40),),
      Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Text("Brew",style: TextStyle(color: Colors.white,fontSize: 40)),
          Spacer(),
          CircleAvatar(radius: 20,backgroundColor: Colors.brown,
          child: CircleAvatar(radius: 18,backgroundColor: const Color.fromARGB(255, 190, 172, 2),backgroundImage:AssetImage('assets/images/man.png')),
          ),
        ],
      ),
      SizedBox(
        height: 10,
      ),
      Container(
        color: Colors.black,
      height: 50,
      width: double.infinity,
      child: Padding(
        padding: EdgeInsets.all(10),
        child: Row(
          children: [
            Icon(Icons.search,color: Colors.white,),
            SizedBox(width:16,),
            Text("Browse your favourite coffee...",style: TextStyle(color: Colors.white54),)
          ],
        ),
        ),
        
      ),
      
      SizedBox(height: 15,),
      Expanded(
        child: GridView.builder(
          itemCount: 6,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2,crossAxisSpacing: 10,mainAxisSpacing:10 ),
         itemBuilder:(context, index){
          return Container(decoration: BoxDecoration(borderRadius: BorderRadius.circular(15),color: Colors.black),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
           children: [
            GestureDetector(
              onTap: () {
                Navigator.push(context,
                MaterialPageRoute(builder: (context)=>CappuccinoExp(imagepath: Database.coffeeLists[index]["image"], name: Database.coffeeLists[index]["name"], price: Database.coffeeLists[index]["price"]))
                );
              },
              child: Container(
                decoration: BoxDecoration(image:DecorationImage(image:AssetImage(Database.coffeeLists[index]['image']))),
               height: 100,
                width: double.infinity,
              ),
            ),
            SizedBox(height: 5,),
          
           ],

          ),
          );
         }),
      ),
    ],
  ),
  ),
  


    );
  }}