
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int int16_t ;
struct TYPE_4__ {int delta_x; int delta_y; int left; int middle; int right; } ;
struct TYPE_5__ {TYPE_1__ mouse; } ;
typedef TYPE_2__ input_ctx_wayland_data_t ;
__attribute__((used)) static int16_t input_wl_lightgun_state(input_ctx_wayland_data_t *wl, unsigned id)
{
   switch (id)
   {
      case 129:
         return wl->mouse.delta_x;
      case 128:
         return wl->mouse.delta_y;
      case 131:
         return wl->mouse.left;
      case 134:
         return wl->mouse.middle;
      case 130:
         return wl->mouse.right;
      case 132:
         return wl->mouse.middle && wl->mouse.right;
      case 133:
         return wl->mouse.middle && wl->mouse.left;
   }

   return 0;
}
