
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char** curses_screen ;

void curses_clear_screen(void)
{
 int x;
 int y;
 for (y = 0; y < 24; y++)
  for (x = 0; x < 40; x++)
   curses_screen[y][x] = ' ';
}
