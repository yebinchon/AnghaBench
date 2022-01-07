
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_3__ {int joypad; scalar_t__ controller; } ;
typedef TYPE_1__ sdl_joypad_t ;
typedef int SDL_GameControllerButton ;


 int SDL_GameControllerGetButton (scalar_t__,int ) ;
 int SDL_JoystickGetButton (int ,unsigned int) ;

__attribute__((used)) static uint8_t sdl_pad_get_button(sdl_joypad_t *pad, unsigned button)
{





   return SDL_JoystickGetButton(pad->joypad, button);
}
