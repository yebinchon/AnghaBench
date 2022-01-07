
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ controller; } ;


 unsigned int MAX_USERS ;
 char const* SDL_GameControllerNameForIndex (unsigned int) ;
 char const* SDL_JoystickName (unsigned int) ;
 char const* SDL_JoystickNameForIndex (unsigned int) ;
 TYPE_1__* sdl_pads ;

__attribute__((used)) static const char *sdl_joypad_name(unsigned pad)
{
   if (pad >= MAX_USERS)
      return ((void*)0);






   return SDL_JoystickName(pad);

}
