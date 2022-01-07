
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ BACKGROUND ;
 scalar_t__ MENUHEADER ;
 scalar_t__ MENUITEM ;
 int cprintf (char*,int) ;
 int cputs (char*) ;
 int gotoxy (int,int) ;
 size_t** keysets ;
 scalar_t__* pressed ;
 int putch (char) ;
 int textattr (scalar_t__) ;

void showjoy(int x,int y,int num)
{
  textattr(BACKGROUND+MENUITEM);
  gotoxy(x,y);
  cprintf("Keyset %i",num);
  gotoxy(x+1,y+2);
  cputs("\\ | /");
  gotoxy(x+1,y+3);
  cputs("-   -");
  gotoxy(x+1,y+4);
  cputs("/ | \\");
  textattr(BACKGROUND+MENUHEADER);
  gotoxy(x+3,y+3);putch(pressed[keysets[num][0]]?'@':' ');
  gotoxy(x,y+5);putch(pressed[keysets[num][1]]?'@':' ');
  gotoxy(x+3,y+5);putch(pressed[keysets[num][2]]?'@':' ');
  gotoxy(x+6,y+5);putch(pressed[keysets[num][3]]?'@':' ');
  gotoxy(x,y+3);putch(pressed[keysets[num][4]]?'@':' ');
  gotoxy(x+6,y+3);putch(pressed[keysets[num][5]]?'@':' ');
  gotoxy(x,y+1);putch(pressed[keysets[num][6]]?'@':' ');
  gotoxy(x+3,y+1);putch(pressed[keysets[num][7]]?'@':' ');
  gotoxy(x+6,y+1);putch(pressed[keysets[num][8]]?'@':' ');
}
