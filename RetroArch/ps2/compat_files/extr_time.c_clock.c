
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int clock_t ;


 int SDL_GetTicks () ;

clock_t clock(void)
{
   return SDL_GetTicks();
}
