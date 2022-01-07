
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int need_new_swapchain; int swapchain; } ;
struct TYPE_4__ {int swap_interval; TYPE_1__ vk; int egl; } ;
typedef TYPE_2__ gfx_ctx_wayland_data_t ;







 int egl_set_swap_interval (int *,int) ;
 int wl_api ;

__attribute__((used)) static void gfx_ctx_wl_set_swap_interval(void *data, int swap_interval)
{
   gfx_ctx_wayland_data_t *wl = (gfx_ctx_wayland_data_t*)data;

   switch (wl_api)
   {
      case 131:
      case 130:
      case 129:



         break;
      case 128:
         break;
      case 132:
      default:
         break;
   }
}
