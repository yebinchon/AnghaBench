
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int int16_t ;
struct TYPE_4__ {int middle; int right; int left; int delta_y; int y; int delta_x; int x; } ;
struct TYPE_5__ {TYPE_1__ mouse; } ;
typedef TYPE_2__ input_ctx_wayland_data_t ;
__attribute__((used)) static int16_t input_wl_mouse_state(input_ctx_wayland_data_t *wl, unsigned id, bool screen)
{
   switch (id)
   {
      case 129:
         return screen ? wl->mouse.x : wl->mouse.delta_x;
      case 128:
         return screen ? wl->mouse.y : wl->mouse.delta_y;
      case 132:
         return wl->mouse.left;
      case 130:
         return wl->mouse.right;
      case 131:
         return wl->mouse.middle;


   }

   return 0;
}
