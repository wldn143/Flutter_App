import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Home_page extends StatefulWidget {
   Home_page({
    Key key,
  }) : super(key: key);

  @override
  _Home_pageState createState() => _Home_pageState();
}

class _Home_pageState extends State<Home_page> {
  List<BottomNavigationBarItem> btmNavItems =[
    BottomNavigationBarItem(icon: Icon(Icons.home),title:Text('')),
    BottomNavigationBarItem(icon:Icon(Icons.search),title:Text('')),
    BottomNavigationBarItem(icon:Icon(Icons.add),title:Text('')),
    BottomNavigationBarItem(icon:Icon(Icons.mail),title:Text('')),
    BottomNavigationBarItem(icon:Icon(Icons.add_circle),title:Text('')),
  ];

  int _selectedIndex=0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.amberAccent,
      ),
      bottomNavigationBar: BottomNavigationBar(
        showSelectedLabels: false,
        showUnselectedLabels: false,
        items:btmNavItems,
        unselectedItemColor: Colors.grey,
        selectedItemColor: Colors.black87,
        currentIndex:_selectedIndex,
      onTap: _onBtmItemClick,
      ),
    );
  }

   void _onBtmItemClick(int index){
    print(index);
    setState(() {
      _selectedIndex=index;
    });
   }
}