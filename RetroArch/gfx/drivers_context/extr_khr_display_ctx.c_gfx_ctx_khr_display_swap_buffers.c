
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int current_swapchain_index; } ;
struct TYPE_7__ {TYPE_1__ context; } ;
struct TYPE_6__ {TYPE_3__ vk; } ;
typedef TYPE_2__ khr_display_ctx_data_t ;


 int vulkan_acquire_next_image (TYPE_3__*) ;
 int vulkan_present (TYPE_3__*,int ) ;

__attribute__((used)) static void gfx_ctx_khr_display_swap_buffers(void *data, void *data2)
{
   khr_display_ctx_data_t *khr = (khr_display_ctx_data_t*)data;
   vulkan_present(&khr->vk, khr->vk.context.current_swapchain_index);
   vulkan_acquire_next_image(&khr->vk);
}
