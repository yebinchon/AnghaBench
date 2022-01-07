
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int mouse_x; int mouse_y; int mouse_l; int mouse_m; int mouse_r; } ;
typedef TYPE_1__ sdl_input_t ;
typedef int int16_t ;
__attribute__((used)) static int16_t sdl_lightgun_device_state(sdl_input_t *sdl, unsigned id)
{
   switch (id)
   {
      case 129:
         return sdl->mouse_x;
      case 128:
         return sdl->mouse_y;
      case 131:
         return sdl->mouse_l;
      case 134:
         return sdl->mouse_m;
      case 130:
         return sdl->mouse_r;
      case 132:
         return sdl->mouse_m && sdl->mouse_r;
      case 133:
         return sdl->mouse_m && sdl->mouse_l;
   }

   return 0;
}
