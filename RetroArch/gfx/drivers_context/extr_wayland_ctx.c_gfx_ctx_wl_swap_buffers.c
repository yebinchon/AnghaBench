
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int current_swapchain_index; } ;
struct TYPE_7__ {TYPE_1__ context; } ;
struct TYPE_6__ {int input; TYPE_3__ vk; int egl; } ;
typedef TYPE_2__ gfx_ctx_wayland_data_t ;







 int egl_swap_buffers (int *) ;
 int flush_wayland_fd (int *) ;
 int vulkan_acquire_next_image (TYPE_3__*) ;
 int vulkan_present (TYPE_3__*,int ) ;
 int wl_api ;

__attribute__((used)) static void gfx_ctx_wl_swap_buffers(void *data, void *data2)
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
