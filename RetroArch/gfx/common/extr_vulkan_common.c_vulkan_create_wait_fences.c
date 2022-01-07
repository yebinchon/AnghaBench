
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {unsigned int num_swapchain_images; int * swapchain_fences; int device; } ;
struct TYPE_7__ {TYPE_1__ context; } ;
typedef TYPE_2__ gfx_ctx_vulkan_data_t ;
struct TYPE_8__ {int member_0; } ;
typedef TYPE_3__ VkFenceCreateInfo ;


 int VK_STRUCTURE_TYPE_FENCE_CREATE_INFO ;
 int vkCreateFence (int ,TYPE_3__*,int *,int *) ;

__attribute__((used)) static void vulkan_create_wait_fences(gfx_ctx_vulkan_data_t *vk)
{
   VkFenceCreateInfo fence_info =
   { VK_STRUCTURE_TYPE_FENCE_CREATE_INFO };

   unsigned i;
   for (i = 0; i < vk->context.num_swapchain_images; i++)
   {
      if (!vk->context.swapchain_fences[i])
      {
         vkCreateFence(vk->context.device, &fence_info, ((void*)0),
               &vk->context.swapchain_fences[i]);
      }
   }
}
