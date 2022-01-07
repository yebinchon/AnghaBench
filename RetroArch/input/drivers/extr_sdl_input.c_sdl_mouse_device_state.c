
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int mouse_b5; int mouse_b4; int mouse_m; int mouse_y; int mouse_x; int mouse_wd; int mouse_wu; int mouse_r; int mouse_l; } ;
typedef TYPE_1__ sdl_input_t ;
typedef int int16_t ;
__attribute__((used)) static int16_t sdl_mouse_device_state(sdl_input_t *sdl, unsigned id)
{
   switch (id)
   {
      case 134:
         return sdl->mouse_l;
      case 132:
         return sdl->mouse_r;
      case 130:
         return sdl->mouse_wu;
      case 131:
         return sdl->mouse_wd;
      case 129:
         return sdl->mouse_x;
      case 128:
         return sdl->mouse_y;
      case 133:
         return sdl->mouse_m;
      case 136:
         return sdl->mouse_b4;
      case 135:
         return sdl->mouse_b5;
   }

   return 0;
}
