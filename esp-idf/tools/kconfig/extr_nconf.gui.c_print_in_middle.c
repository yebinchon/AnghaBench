
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int chtype ;
typedef int WINDOW ;


 int getyx (int *,int,int) ;
 int mvwprintw (int *,int,int,char*,char const*) ;
 int refresh () ;
 int * stdscr ;
 int strlen (char const*) ;
 int wattrset (int *,int ) ;

void print_in_middle(WINDOW *win,
  int starty,
  int startx,
  int width,
  const char *string,
  chtype color)
{ int length, x, y;
 float temp;


 if (win == ((void*)0))
  win = stdscr;
 getyx(win, y, x);
 if (startx != 0)
  x = startx;
 if (starty != 0)
  y = starty;
 if (width == 0)
  width = 80;

 length = strlen(string);
 temp = (width - length) / 2;
 x = startx + (int)temp;
 (void) wattrset(win, color);
 mvwprintw(win, y, x, "%s", string);
 refresh();
}
