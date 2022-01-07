
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__* Joysticks ;
 int MAX_JOYSTICKS ;
 int SDL_INIT_JOYSTICK ;
 int SDL_JoystickClose (scalar_t__) ;
 int SDL_QuitSubSystem (int ) ;
 int jinited ;

int KillJoysticks (void)
{
 int n;

 if(!jinited) return(0);
 for (n = 0; n < MAX_JOYSTICKS; n++)
 {
  if (Joysticks[n] != 0)
      SDL_JoystickClose(Joysticks[n]);
  Joysticks[n]=0;
 }
 SDL_QuitSubSystem(SDL_INIT_JOYSTICK);
 return(1);
}
