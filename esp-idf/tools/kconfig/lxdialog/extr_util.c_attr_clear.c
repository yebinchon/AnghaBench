
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int chtype ;
typedef int WINDOW ;


 int touchwin (int *) ;
 int waddch (int *,char) ;
 int wattrset (int *,int ) ;
 int wmove (int *,int,int ) ;

void attr_clear(WINDOW * win, int height, int width, chtype attr)
{
 int i, j;

 wattrset(win, attr);
 for (i = 0; i < height; i++) {
  wmove(win, i, 0);
  for (j = 0; j < width; j++)
   waddch(win, ' ');
 }
 touchwin(win);
}
