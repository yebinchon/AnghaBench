
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint8_t ;
typedef scalar_t__ uint16_t ;
struct TYPE_4__ {scalar_t__ num_hats; scalar_t__ num_buttons; int joypad; } ;
typedef TYPE_1__ sdl_joypad_t ;


 scalar_t__ GET_HAT (scalar_t__) ;
 unsigned int GET_HAT_DIR (scalar_t__) ;




 int SDL_HAT_DOWN ;
 int SDL_HAT_LEFT ;
 int SDL_HAT_RIGHT ;
 int SDL_HAT_UP ;
 scalar_t__ sdl_pad_get_button (TYPE_1__*,scalar_t__) ;
 int sdl_pad_get_hat (TYPE_1__*,scalar_t__) ;
 int * sdl_pads ;

__attribute__((used)) static bool sdl_joypad_button(unsigned port, uint16_t joykey)
{
   unsigned hat_dir = 0;
   sdl_joypad_t *pad = (sdl_joypad_t*)&sdl_pads[port];
   if (!pad || !pad->joypad)
      return 0;

   hat_dir = GET_HAT_DIR(joykey);

   if (hat_dir)
   {
      uint8_t dir;
      uint16_t hat = GET_HAT(joykey);

      if (hat >= pad->num_hats)
         return 0;

      dir = sdl_pad_get_hat(pad, hat);

      switch (hat_dir)
      {
         case 128:
            return dir & SDL_HAT_UP;
         case 131:
            return dir & SDL_HAT_DOWN;
         case 130:
            return dir & SDL_HAT_LEFT;
         case 129:
            return dir & SDL_HAT_RIGHT;
         default:
            break;
      }
      return 0;
   }


   if (joykey < pad->num_buttons && sdl_pad_get_button(pad, joykey))
      return 1;

   return 0;
}
