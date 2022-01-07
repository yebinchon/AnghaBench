
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int* state; } ;
typedef TYPE_1__ x11_input_t ;
typedef enum retro_key { ____Placeholder_retro_key } retro_key ;


 int* rarch_keysym_lut ;

__attribute__((used)) static bool x_keyboard_pressed(x11_input_t *x11, unsigned key)
{
   int keycode = rarch_keysym_lut[(enum retro_key)key];
   return x11->state[keycode >> 3] & (1 << (keycode & 7));
}
