
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32 ;


 scalar_t__ FCEUI_IsMovieActive () ;
 int GUI_GetMouseState (int*,int*,int*) ;
 int PtoV (int,int) ;
 int SDL_BUTTON (int) ;
 int SDL_GetMouseState (int*,int*) ;

void GetMouseData(uint32 *d)
{
 if(FCEUI_IsMovieActive()<0)
   return;

 int x,y;
 uint32 t;

 t=SDL_GetMouseState(&x,&y);




 d[2]=0;
 if(t&SDL_BUTTON(1))
  d[2]|=1;
 if(t&SDL_BUTTON(3))
  d[2]|=2;
 t=PtoV(x,y);
 d[0]=t&0xFFFF;
 d[1]=(t>>16)&0xFFFF;
}
