
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FCEUGI ;


 int InitJoysticks () ;
 int InitVideo (int *) ;
 int KillJoysticks () ;
 int SDL_INIT_VIDEO ;
 int SDL_QuitSubSystem (int ) ;
 scalar_t__ bcpj ;
 scalar_t__ bcpv ;

void ButtonConfigEnd(void)
{
 extern FCEUGI *CurGame;
 KillJoysticks();
 SDL_QuitSubSystem(SDL_INIT_VIDEO);
 if(bcpv) InitVideo(CurGame);
 if(bcpj) InitJoysticks();
}
