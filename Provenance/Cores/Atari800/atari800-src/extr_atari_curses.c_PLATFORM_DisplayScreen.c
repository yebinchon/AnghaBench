
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int A_REVERSE ;





 int addch (int) ;
 int curses_mode ;
 int** curses_screen ;
 int move (int,int) ;
 int refresh () ;

void PLATFORM_DisplayScreen(void)
{
 int x;
 int y;
 for (y = 0; y < 24; y++) {
  for (x = 0; x < 40; x++) {
   int ch = curses_screen[y][x];
   switch (curses_mode) {
   default:
   case 131:
    move(y, x);
    break;
   case 132:
    move(y, 20 + x);
    break;
   case 130:
    move(y, 40 + x);
    break;
   case 129:
    move(y, x + x);
    break;
   case 128:
    move(y, x + x);
    addch(ch);
    ch = ' ' + (ch & A_REVERSE);
    break;
   }
   addch(ch);
  }
 }
 refresh();
}
