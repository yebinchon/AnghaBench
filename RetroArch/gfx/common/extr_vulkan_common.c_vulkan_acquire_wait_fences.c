
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {unsigned int current_swapchain_index; scalar_t__* swapchain_fences; int* swapchain_fences_signalled; int device; } ;
struct TYPE_7__ {TYPE_1__ context; } ;
typedef TYPE_2__ gfx_ctx_vulkan_data_t ;
struct TYPE_8__ {int member_0; } ;
typedef TYPE_3__ VkFenceCreateInfo ;
typedef scalar_t__ VkFence ;


 int UINT64_MAX ;
 scalar_t__ VK_NULL_HANDLE ;
 int VK_STRUCTURE_TYPE_FENCE_CREATE_INFO ;
 int vkCreateFence (int ,TYPE_3__*,int *,scalar_t__*) ;
 int vkResetFences (int ,int,scalar_t__*) ;
 int vkWaitForFences (int ,int,scalar_t__*,int,int ) ;

__attribute__((used)) static void vulkan_acquire_wait_fences(gfx_ctx_vulkan_data_t *vk)
{
   VkFenceCreateInfo fence_info =
   { VK_STRUCTURE_TYPE_FENCE_CREATE_INFO };

   unsigned index = vk->context.current_swapchain_index;
   VkFence *next_fence = &vk->context.swapchain_fences[index];

   if (*next_fence != VK_NULL_HANDLE)
   {
      if (vk->context.swapchain_fences_signalled[index])
         vkWaitForFences(vk->context.device, 1, next_fence, 1, UINT64_MAX);
      vkResetFences(vk->context.device, 1, next_fence);
   }
   else
      vkCreateFence(vk->context.device, &fence_info, ((void*)0), next_fence);
   vk->context.swapchain_fences_signalled[index] = 0;
}
