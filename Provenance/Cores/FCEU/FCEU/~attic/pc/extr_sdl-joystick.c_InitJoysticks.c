
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int * Joysticks ;
 int MAX_JOYSTICKS ;
 int SDL_INIT_JOYSTICK ;
 int SDL_InitSubSystem (int ) ;
 int SDL_JoystickOpen (int) ;
 int SDL_NumJoysticks () ;
 int jinited ;

int InitJoysticks (void)
{
 int n;
 int total;

        SDL_InitSubSystem(SDL_INIT_JOYSTICK);
 total=SDL_NumJoysticks();
 if(total>MAX_JOYSTICKS) total=MAX_JOYSTICKS;

 for (n = 0; n < total; n++)
 {

  Joysticks[n] = SDL_JoystickOpen(n);


   continue;
 }
 jinited=1;
 return(1);
}
