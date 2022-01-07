
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int joypad; scalar_t__ controller; } ;
typedef TYPE_1__ sdl_joypad_t ;
typedef int int16_t ;
typedef int SDL_GameControllerAxis ;


 int SDL_GameControllerGetAxis (scalar_t__,int ) ;
 int SDL_JoystickGetAxis (int ,unsigned int) ;

__attribute__((used)) static int16_t sdl_pad_get_axis(sdl_joypad_t *pad, unsigned axis)
{





   return SDL_JoystickGetAxis(pad->joypad, axis);
}
