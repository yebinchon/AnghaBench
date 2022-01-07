
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int SDL_cond ;


 int* calloc (int,int) ;

SDL_cond *SDL_CreateCond(void)
{
   bool *sleeping = calloc(1, sizeof(*sleeping));
   return (SDL_cond*)sleeping;
}
