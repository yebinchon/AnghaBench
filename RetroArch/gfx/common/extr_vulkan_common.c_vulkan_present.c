
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int has_acquired_swapchain; int queue_lock; int queue; int * swapchain_semaphores; } ;
struct TYPE_8__ {scalar_t__ swapchain; TYPE_1__ context; } ;
typedef TYPE_2__ gfx_ctx_vulkan_data_t ;
typedef scalar_t__ VkResult ;
struct TYPE_9__ {int swapchainCount; scalar_t__* pSwapchains; unsigned int* pImageIndices; scalar_t__* pResults; int waitSemaphoreCount; int * pWaitSemaphores; int member_0; } ;
typedef TYPE_3__ VkPresentInfoKHR ;


 int RARCH_LOG (char*) ;
 scalar_t__ VK_NULL_HANDLE ;
 int VK_STRUCTURE_TYPE_PRESENT_INFO_KHR ;
 scalar_t__ VK_SUCCESS ;
 int retro_sleep (int) ;
 int slock_lock (int ) ;
 int slock_unlock (int ) ;
 int trigger_spurious_error_vkresult (scalar_t__*) ;
 scalar_t__ vkQueuePresentKHR (int ,TYPE_3__*) ;
 int vulkan_destroy_swapchain (TYPE_2__*) ;

void vulkan_present(gfx_ctx_vulkan_data_t *vk, unsigned index)
{
   VkPresentInfoKHR present = { VK_STRUCTURE_TYPE_PRESENT_INFO_KHR };
   VkResult result = VK_SUCCESS;
   VkResult err = VK_SUCCESS;

   if (!vk->context.has_acquired_swapchain)
      return;
   vk->context.has_acquired_swapchain = 0;


   if (vk->swapchain == VK_NULL_HANDLE)
   {
      retro_sleep(10);
      return;
   }

   present.swapchainCount = 1;
   present.pSwapchains = &vk->swapchain;
   present.pImageIndices = &index;
   present.pResults = &result;
   present.waitSemaphoreCount = 1;
   present.pWaitSemaphores = &vk->context.swapchain_semaphores[index];





   err = vkQueuePresentKHR(vk->context.queue, &present);





   if (err != VK_SUCCESS || result != VK_SUCCESS)
   {
      RARCH_LOG("[Vulkan]: QueuePresent failed, destroying swapchain.\n");
      vulkan_destroy_swapchain(vk);
   }




}
