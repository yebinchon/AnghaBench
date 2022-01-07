
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int SDL_Surface ;


 int FCEUD_Message (int ) ;
 int InitJoysticks () ;
 int KillJoysticks () ;
 int KillVideo () ;
 int SDL_GetError () ;
 int SDL_INIT_VIDEO ;
 int SDL_InitSubSystem (int) ;
 int SDL_QuitSubSystem (int) ;
 int * SDL_SetVideoMode (int,int,int,int ) ;
 int SDL_WM_SetCaption (char*,int ) ;
 int SDL_WasInit (int) ;
 int bcpj ;
 int bcpv ;

int ButtonConfigBegin(void)
{
 SDL_Surface *screen;
 SDL_QuitSubSystem(SDL_INIT_VIDEO);
 bcpv=KillVideo();
 bcpj=KillJoysticks();

 if(!(SDL_WasInit(SDL_INIT_VIDEO)&SDL_INIT_VIDEO))
  if(SDL_InitSubSystem(SDL_INIT_VIDEO)==-1)
  {
   FCEUD_Message(SDL_GetError());
   return(0);
  }

 screen = SDL_SetVideoMode(300, 1, 8, 0);
 SDL_WM_SetCaption("Button Config",0);
 InitJoysticks();

 return(1);
}
