
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__* swapchain_images; int has_acquired_swapchain; scalar_t__* swapchain_semaphores; scalar_t__* swapchain_fences; int device; } ;
struct TYPE_5__ {scalar_t__ swapchain; TYPE_1__ context; int mailbox; } ;
typedef TYPE_2__ gfx_ctx_vulkan_data_t ;


 scalar_t__ VK_NULL_HANDLE ;
 unsigned int VULKAN_MAX_SWAPCHAIN_IMAGES ;
 int memset (scalar_t__*,int ,int) ;
 int vkDestroyFence (int ,scalar_t__,int *) ;
 int vkDestroySemaphore (int ,scalar_t__,int *) ;
 int vkDestroySwapchainKHR (int ,scalar_t__,int *) ;
 int vkDeviceWaitIdle (int ) ;
 int vulkan_emulated_mailbox_deinit (int *) ;

__attribute__((used)) static void vulkan_destroy_swapchain(gfx_ctx_vulkan_data_t *vk)
{
   unsigned i;

   vulkan_emulated_mailbox_deinit(&vk->mailbox);
   if (vk->swapchain != VK_NULL_HANDLE)
   {
      vkDeviceWaitIdle(vk->context.device);
      vkDestroySwapchainKHR(vk->context.device, vk->swapchain, ((void*)0));
      memset(vk->context.swapchain_images, 0, sizeof(vk->context.swapchain_images));
      vk->swapchain = VK_NULL_HANDLE;
      vk->context.has_acquired_swapchain = 0;
   }

   for (i = 0; i < VULKAN_MAX_SWAPCHAIN_IMAGES; i++)
   {
      if (vk->context.swapchain_semaphores[i] != VK_NULL_HANDLE)
         vkDestroySemaphore(vk->context.device,
               vk->context.swapchain_semaphores[i], ((void*)0));
      if (vk->context.swapchain_fences[i] != VK_NULL_HANDLE)
         vkDestroyFence(vk->context.device,
               vk->context.swapchain_fences[i], ((void*)0));
   }

   memset(vk->context.swapchain_semaphores, 0, sizeof(vk->context.swapchain_semaphores));
   memset(vk->context.swapchain_fences, 0, sizeof(vk->context.swapchain_fences));
}
