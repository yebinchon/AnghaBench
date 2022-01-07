
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char** curses_screen ;

void curses_clear_rectangle(int x1, int y1, int x2, int y2)
{
 int x;
 int y;
 for (y = y1; y <= y2; y++)
  for (x = x1; x <= x2; x++)
   curses_screen[y][x] = ' ';
}
