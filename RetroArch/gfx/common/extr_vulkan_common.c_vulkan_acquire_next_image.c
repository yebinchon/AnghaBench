
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_4__ ;
typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


struct TYPE_12__ {int current_swapchain_index; int invalid_swapchain; int has_acquired_swapchain; int num_swapchain_images; scalar_t__* swapchain_semaphores; int device; int swap_interval; int swapchain_height; int swapchain_width; } ;
struct TYPE_13__ {scalar_t__ swapchain; TYPE_1__ context; int mailbox; scalar_t__ emulating_mailbox; } ;
typedef TYPE_2__ gfx_ctx_vulkan_data_t ;
struct TYPE_14__ {int member_0; } ;
typedef TYPE_3__ VkSemaphoreCreateInfo ;
typedef scalar_t__ VkResult ;
struct TYPE_15__ {int member_0; } ;
typedef TYPE_4__ VkFenceCreateInfo ;
typedef scalar_t__ VkFence ;


 int RARCH_ERR (char*,...) ;
 int UINT64_MAX ;
 scalar_t__ VK_ERROR_OUT_OF_DATE_KHR ;
 scalar_t__ VK_ERROR_SURFACE_LOST_KHR ;
 scalar_t__ VK_NOT_READY ;
 scalar_t__ VK_NULL_HANDLE ;
 int VK_STRUCTURE_TYPE_FENCE_CREATE_INFO ;
 int VK_STRUCTURE_TYPE_SEMAPHORE_CREATE_INFO ;
 scalar_t__ VK_SUCCESS ;
 scalar_t__ VK_TIMEOUT ;
 int retro_assert (int) ;
 int retro_sleep (int) ;
 int trigger_spurious_error_vkresult (scalar_t__*) ;
 scalar_t__ vkAcquireNextImageKHR (int ,scalar_t__,int ,scalar_t__,scalar_t__,int*) ;
 int vkCreateFence (int ,TYPE_4__*,int *,scalar_t__*) ;
 int vkCreateSemaphore (int ,TYPE_3__*,int *,scalar_t__*) ;
 int vkDestroyFence (int ,scalar_t__,int *) ;
 int vkWaitForFences (int ,int,scalar_t__*,int,int ) ;
 int vulkan_acquire_clear_fences (TYPE_2__*) ;
 int vulkan_acquire_wait_fences (TYPE_2__*) ;
 int vulkan_create_swapchain (TYPE_2__*,int ,int ,int ) ;
 int vulkan_destroy_swapchain (TYPE_2__*) ;
 scalar_t__ vulkan_emulated_mailbox_acquire_next_image (int *,int*) ;

void vulkan_acquire_next_image(gfx_ctx_vulkan_data_t *vk)
{
   unsigned index;
   VkResult err;
   VkFence fence;
   VkFenceCreateInfo fence_info =
   { VK_STRUCTURE_TYPE_FENCE_CREATE_INFO };
   VkSemaphoreCreateInfo sem_info =
   { VK_STRUCTURE_TYPE_SEMAPHORE_CREATE_INFO };

   bool is_retrying = 0;

retry:
   if (vk->swapchain == VK_NULL_HANDLE)
   {

      if (!vulkan_create_swapchain(vk, vk->context.swapchain_width,
               vk->context.swapchain_height, vk->context.swap_interval))
      {
         RARCH_ERR("[Vulkan]: Failed to create new swapchain.\n");
         return;
      }

      if (vk->swapchain == VK_NULL_HANDLE)
      {

         vk->context.current_swapchain_index = 0;
         vulkan_acquire_clear_fences(vk);
         vulkan_acquire_wait_fences(vk);
         vk->context.invalid_swapchain = 1;
         return;
      }
   }

   retro_assert(!vk->context.has_acquired_swapchain);

   if (vk->emulating_mailbox)
   {



      err = vulkan_emulated_mailbox_acquire_next_image(&vk->mailbox, &vk->context.current_swapchain_index);
      fence = VK_NULL_HANDLE;
   }
   else
   {
      vkCreateFence(vk->context.device, &fence_info, ((void*)0), &fence);
      err = vkAcquireNextImageKHR(vk->context.device,
            vk->swapchain, UINT64_MAX,
            VK_NULL_HANDLE, fence, &vk->context.current_swapchain_index);
   }

   if (err == VK_SUCCESS)
   {
      if (fence != VK_NULL_HANDLE)
         vkWaitForFences(vk->context.device, 1, &fence, 1, UINT64_MAX);
      vk->context.has_acquired_swapchain = 1;
   }
   else
      vk->context.has_acquired_swapchain = 0;





   if (fence != VK_NULL_HANDLE)
      vkDestroyFence(vk->context.device, fence, ((void*)0));

   if (err == VK_NOT_READY || err == VK_TIMEOUT)
   {

      vk->context.current_swapchain_index =
         (vk->context.current_swapchain_index + 1) % vk->context.num_swapchain_images;
   }
   else if (err == VK_ERROR_OUT_OF_DATE_KHR)
   {

      vulkan_destroy_swapchain(vk);

      if (is_retrying)
      {
         RARCH_ERR("[Vulkan]: Swapchain is out of date, trying to create new one. Have tried multiple times ...\n");
         retro_sleep(10);
      }
      else
         RARCH_ERR("[Vulkan]: Swapchain is out of date, trying to create new one.\n");
      is_retrying = 1;
      vulkan_acquire_clear_fences(vk);
      goto retry;
   }
   else if (err != VK_SUCCESS)
   {

      vulkan_destroy_swapchain(vk);
      RARCH_ERR("[Vulkan]: Failed to acquire from swapchain (err = %d).\n",
            (int)err);
      if (err == VK_ERROR_SURFACE_LOST_KHR)
         RARCH_ERR("[Vulkan]: Got VK_ERROR_SURFACE_LOST_KHR.\n");

      vk->context.invalid_swapchain = 1;
      vulkan_acquire_clear_fences(vk);
      return;
   }

   index = vk->context.current_swapchain_index;
   if (vk->context.swapchain_semaphores[index] == VK_NULL_HANDLE)
   {
      vkCreateSemaphore(vk->context.device, &sem_info,
            ((void*)0), &vk->context.swapchain_semaphores[index]);
   }
   vulkan_acquire_wait_fences(vk);
}
