
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int invalid_swapchain; } ;
struct TYPE_7__ {int need_new_swapchain; int created_new_swapchain; TYPE_1__ context; } ;
struct TYPE_6__ {int buffer_scale; int surface; TYPE_3__ vk; int swap_interval; int win; } ;
typedef TYPE_2__ gfx_ctx_wayland_data_t ;







 int RARCH_ERR (char*) ;
 int vulkan_acquire_next_image (TYPE_3__*) ;
 int vulkan_create_swapchain (TYPE_3__*,unsigned int,unsigned int,int ) ;
 int wl_api ;
 int wl_egl_window_resize (int ,unsigned int,unsigned int,int ,int ) ;
 int wl_surface_set_buffer_scale (int ,int ) ;

__attribute__((used)) static bool gfx_ctx_wl_set_resize(void *data, unsigned width, unsigned height)
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

   wl_surface_set_buffer_scale(wl->surface, wl->buffer_scale);
   return 1;
}
