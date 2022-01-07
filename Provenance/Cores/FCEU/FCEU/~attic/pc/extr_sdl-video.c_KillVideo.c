
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ IconSurface ;
 int KillBlitToHigh () ;
 int KillOpenGL () ;
 int SDL_FreeSurface (scalar_t__) ;
 int SDL_INIT_VIDEO ;
 int SDL_QuitSubSystem (int ) ;
 int curbpp ;
 int inited ;
 scalar_t__ usingogl ;

int KillVideo(void)
{
 if(IconSurface)
 {
  SDL_FreeSurface(IconSurface);
  IconSurface=0;
 }

 if(inited&1)
 {





  if(curbpp>8)
   KillBlitToHigh();
  SDL_QuitSubSystem(SDL_INIT_VIDEO);
  inited&=~1;
  return(1);
 }
 inited=0;
 return(0);
}
