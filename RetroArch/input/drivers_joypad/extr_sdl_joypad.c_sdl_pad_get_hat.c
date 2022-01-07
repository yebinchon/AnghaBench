
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_4__ {int joypad; scalar_t__ controller; } ;
typedef TYPE_1__ sdl_joypad_t ;


 int SDL_JoystickGetHat (int ,unsigned int) ;
 int sdl_pad_get_button (TYPE_1__*,unsigned int) ;

__attribute__((used)) static uint8_t sdl_pad_get_hat(sdl_joypad_t *pad, unsigned hat)
{




   return SDL_JoystickGetHat(pad->joypad, hat);
}
