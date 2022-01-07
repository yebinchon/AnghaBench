
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
int get_sdl_shift(int sdl)
{
   if (sdl == 0)
      return 16;
   else return (7 - sdl);
}
