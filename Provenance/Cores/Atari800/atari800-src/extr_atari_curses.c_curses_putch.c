
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int UBYTE ;


 int A_REVERSE ;
 int** curses_screen ;

void curses_putch(int x, int y, int ascii, UBYTE fg, UBYTE bg)
{

 switch (ascii) {
 case 18:
  ascii = '-';
  break;
 case 17:
 case 3:
  ascii = '/';
  break;
 case 26:
 case 5:
  ascii = '\\';
  break;
 case 124:
  ascii = '|';
  break;
 default:
  break;
 }
 if ((bg & 0xf) > (fg & 0xf))
  curses_screen[y][x] = ascii + A_REVERSE;
 else
  curses_screen[y][x] = ascii;
}
