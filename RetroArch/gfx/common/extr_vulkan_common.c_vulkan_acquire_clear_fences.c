
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {unsigned int num_swapchain_images; int* swapchain_fences_signalled; scalar_t__* swapchain_fences; int device; } ;
struct TYPE_5__ {TYPE_1__ context; } ;
typedef TYPE_2__ gfx_ctx_vulkan_data_t ;


 scalar_t__ VK_NULL_HANDLE ;
 int vkDestroyFence (int ,scalar_t__,int *) ;

__attribute__((used)) static void vulkan_acquire_clear_fences(gfx_ctx_vulkan_data_t *vk)
{
   unsigned i;
   for (i = 0; i < vk->context.num_swapchain_images; i++)
   {
      if (vk->context.swapchain_fences[i])
      {
         vkDestroyFence(vk->context.device,
               vk->context.swapchain_fences[i], ((void*)0));
         vk->context.swapchain_fences[i] = VK_NULL_HANDLE;
      }
      vk->context.swapchain_fences_signalled[i] = 0;
   }
}
