
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {int monitor_index; } ;
typedef TYPE_2__ video_frame_info_t ;
struct vulkan_display_surface_info {unsigned int width; unsigned int height; int monitor_index; } ;
struct TYPE_6__ {int swapchain_height; int swapchain_width; } ;
struct TYPE_9__ {TYPE_1__ context; } ;
struct TYPE_8__ {TYPE_4__ vk; int height; int width; int swap_interval; } ;
typedef TYPE_3__ khr_display_ctx_data_t ;


 int RARCH_ERR (char*) ;
 int VULKAN_WSI_DISPLAY ;
 int gfx_ctx_khr_display_destroy (void*) ;
 int vulkan_surface_create (TYPE_4__*,int ,struct vulkan_display_surface_info*,int *,int ,int ,int ) ;

__attribute__((used)) static bool gfx_ctx_khr_display_set_video_mode(void *data,
      video_frame_info_t *video_info,
      unsigned width, unsigned height,
      bool fullscreen)
{
   struct vulkan_display_surface_info info;
   khr_display_ctx_data_t *khr = (khr_display_ctx_data_t*)data;

   if (!fullscreen)
   {
      width = 0;
      height = 0;
   }

   info.width = width;
   info.height = height;
   info.monitor_index = video_info->monitor_index;

   if (!vulkan_surface_create(&khr->vk, VULKAN_WSI_DISPLAY, &info, ((void*)0),
            0, 0, khr->swap_interval))
   {
      RARCH_ERR("[Vulkan]: Failed to create KHR_display surface.\n");
      goto error;
   }

   khr->width = khr->vk.context.swapchain_width;
   khr->height = khr->vk.context.swapchain_height;

   return 1;

error:
   gfx_ctx_khr_display_destroy(data);
   return 0;
}
