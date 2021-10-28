import 'package:flutter/material.dart';
import 'package:smartpillplanner/page/home_page.dart';
import 'package:smartpillplanner/page/home_page.dart';
import 'package:smartpillplanner/page/calendar_page.dart';
import 'package:smartpillplanner/page/account_page.dart';
import 'package:smartpillplanner/page/settings_page.dart';

class Nav extends StatefulWidget {
  const Nav({Key? key}) : super(key: key);

  @override
  _NavState createState() => _NavState();
}

class _NavState extends State<Nav> {
  int _selectedIndex = 0;
  static const List<Widget> _widgetOptions = <Widget>[
    Home(),
    Account(),
    Calendar(),
    Settings(),
  ];

  void _onItemTap(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
            backgroundColor: Colors.blueGrey,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Account',
            backgroundColor: Colors.blueGrey,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.calendar_today),
            label: 'Calendar',
            backgroundColor: Colors.blueGrey,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: 'Settings',
            backgroundColor: Colors.blueGrey,
          ),
        ],
        currentIndex: _selectedIndex,
        onTap: _onItemTap,
      ),
    );
  }
}
