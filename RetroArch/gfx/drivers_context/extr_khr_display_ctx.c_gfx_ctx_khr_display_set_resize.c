
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int invalid_swapchain; } ;
struct TYPE_7__ {int need_new_swapchain; TYPE_1__ context; scalar_t__ created_new_swapchain; } ;
struct TYPE_6__ {unsigned int width; unsigned int height; TYPE_3__ vk; int swap_interval; } ;
typedef TYPE_2__ khr_display_ctx_data_t ;


 int RARCH_ERR (char*) ;
 int vulkan_acquire_next_image (TYPE_3__*) ;
 int vulkan_create_swapchain (TYPE_3__*,unsigned int,unsigned int,int ) ;

__attribute__((used)) static bool gfx_ctx_khr_display_set_resize(void *data,
      unsigned width, unsigned height)
{
   khr_display_ctx_data_t *khr = (khr_display_ctx_data_t*)data;

   khr->width = width;
   khr->height = height;
   if (!vulkan_create_swapchain(&khr->vk, khr->width, khr->height,
            khr->swap_interval))
   {
      RARCH_ERR("[Vulkan]: Failed to update swapchain.\n");
      return 0;
   }

   if (khr->vk.created_new_swapchain)
      vulkan_acquire_next_image(&khr->vk);

   khr->vk.context.invalid_swapchain = 1;
   khr->vk.need_new_swapchain = 0;
   return 0;
}
