
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int SDL_cond ;


 int free (int *) ;

void SDL_DestroyCond(SDL_cond *sleeping)
{
   free(sleeping);
}
