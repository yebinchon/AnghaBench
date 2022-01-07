
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char chtype ;
typedef int WINDOW ;


 char ACS_HLINE ;
 char ACS_LLCORNER ;
 char ACS_LRCORNER ;
 char ACS_ULCORNER ;
 char ACS_URCORNER ;
 char ACS_VLINE ;
 int waddch (int *,char) ;
 int wattrset (int *,int ) ;
 int wmove (int *,int,int) ;

void
draw_box(WINDOW * win, int y, int x, int height, int width,
  chtype box, chtype border)
{
 int i, j;

 wattrset(win, 0);
 for (i = 0; i < height; i++) {
  wmove(win, y + i, x);
  for (j = 0; j < width; j++)
   if (!i && !j)
    waddch(win, border | ACS_ULCORNER);
   else if (i == height - 1 && !j)
    waddch(win, border | ACS_LLCORNER);
   else if (!i && j == width - 1)
    waddch(win, box | ACS_URCORNER);
   else if (i == height - 1 && j == width - 1)
    waddch(win, box | ACS_LRCORNER);
   else if (!i)
    waddch(win, border | ACS_HLINE);
   else if (i == height - 1)
    waddch(win, box | ACS_HLINE);
   else if (!j)
    waddch(win, border | ACS_VLINE);
   else if (j == width - 1)
    waddch(win, box | ACS_VLINE);
   else
    waddch(win, box | ' ');
 }
}
