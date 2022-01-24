#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_15__   TYPE_4__ ;
typedef  struct TYPE_14__   TYPE_3__ ;
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
struct TYPE_12__ {int current_swapchain_index; int invalid_swapchain; int has_acquired_swapchain; int num_swapchain_images; scalar_t__* swapchain_semaphores; int /*<<< orphan*/  device; int /*<<< orphan*/  swap_interval; int /*<<< orphan*/  swapchain_height; int /*<<< orphan*/  swapchain_width; } ;
struct TYPE_13__ {scalar_t__ swapchain; TYPE_1__ context; int /*<<< orphan*/  mailbox; scalar_t__ emulating_mailbox; } ;
typedef  TYPE_2__ gfx_ctx_vulkan_data_t ;
struct TYPE_14__ {int /*<<< orphan*/  member_0; } ;
typedef  TYPE_3__ VkSemaphoreCreateInfo ;
typedef  scalar_t__ VkResult ;
struct TYPE_15__ {int /*<<< orphan*/  member_0; } ;
typedef  TYPE_4__ VkFenceCreateInfo ;
typedef  scalar_t__ VkFence ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int /*<<< orphan*/  UINT64_MAX ; 
 scalar_t__ VK_ERROR_OUT_OF_DATE_KHR ; 
 scalar_t__ VK_ERROR_SURFACE_LOST_KHR ; 
 scalar_t__ VK_NOT_READY ; 
 scalar_t__ VK_NULL_HANDLE ; 
 int /*<<< orphan*/  VK_STRUCTURE_TYPE_FENCE_CREATE_INFO ; 
 int /*<<< orphan*/  VK_STRUCTURE_TYPE_SEMAPHORE_CREATE_INFO ; 
 scalar_t__ VK_SUCCESS ; 
 scalar_t__ VK_TIMEOUT ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ,scalar_t__,scalar_t__,int*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,TYPE_4__*,int /*<<< orphan*/ *,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,TYPE_3__*,int /*<<< orphan*/ *,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int,scalar_t__*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_2__*) ; 
 scalar_t__ FUNC13 (int /*<<< orphan*/ *,int*) ; 

void FUNC14(gfx_ctx_vulkan_data_t *vk)
{
   unsigned index;
   VkResult err;
   VkFence fence;
   VkFenceCreateInfo fence_info =
   { VK_STRUCTURE_TYPE_FENCE_CREATE_INFO };
   VkSemaphoreCreateInfo sem_info =
   { VK_STRUCTURE_TYPE_SEMAPHORE_CREATE_INFO };

   bool is_retrying = false;

retry:
   if (vk->swapchain == VK_NULL_HANDLE)
   {
      /* We don't have a swapchain, try to create one now. */
      if (!FUNC11(vk, vk->context.swapchain_width,
               vk->context.swapchain_height, vk->context.swap_interval))
      {
         FUNC0("[Vulkan]: Failed to create new swapchain.\n");
         return;
      }

      if (vk->swapchain == VK_NULL_HANDLE)
      {
         /* We still don't have a swapchain, so just fake it ... */
         vk->context.current_swapchain_index = 0;
         FUNC9(vk);
         FUNC10(vk);
         vk->context.invalid_swapchain = true;
         return;
      }
   }

   FUNC1(!vk->context.has_acquired_swapchain);

   if (vk->emulating_mailbox)
   {
      /* Non-blocking acquire. If we don't get a swapchain frame right away,
       * just skip rendering to the swapchain this frame, similar to what
       * MAILBOX would do. */
      err = FUNC13(&vk->mailbox, &vk->context.current_swapchain_index);
      fence = VK_NULL_HANDLE;
   }
   else
   {
      FUNC5(vk->context.device, &fence_info, NULL, &fence);
      err = FUNC4(vk->context.device,
            vk->swapchain, UINT64_MAX,
            VK_NULL_HANDLE, fence, &vk->context.current_swapchain_index);
   }

   if (err == VK_SUCCESS)
   {
      if (fence != VK_NULL_HANDLE)
         FUNC8(vk->context.device, 1, &fence, true, UINT64_MAX);
      vk->context.has_acquired_swapchain = true;
   }
   else
      vk->context.has_acquired_swapchain = false;

#ifdef WSI_HARDENING_TEST
   trigger_spurious_error_vkresult(&err);
#endif

   if (fence != VK_NULL_HANDLE)
      FUNC7(vk->context.device, fence, NULL);

   if (err == VK_NOT_READY || err == VK_TIMEOUT)
   {
      /* Just pretend we have a swapchain index, round-robin style. */
      vk->context.current_swapchain_index =
         (vk->context.current_swapchain_index + 1) % vk->context.num_swapchain_images;
   }
   else if (err == VK_ERROR_OUT_OF_DATE_KHR)
   {
      /* Throw away the old swapchain and try again. */
      FUNC12(vk);

      if (is_retrying)
      {
         FUNC0("[Vulkan]: Swapchain is out of date, trying to create new one. Have tried multiple times ...\n");
         FUNC2(10);
      }
      else
         FUNC0("[Vulkan]: Swapchain is out of date, trying to create new one.\n");
      is_retrying = true;
      FUNC9(vk);
      goto retry;
   }
   else if (err != VK_SUCCESS)
   {
      /* We are screwed, don't try anymore. Maybe it will work later. */
      FUNC12(vk);
      FUNC0("[Vulkan]: Failed to acquire from swapchain (err = %d).\n",
            (int)err);
      if (err == VK_ERROR_SURFACE_LOST_KHR)
         FUNC0("[Vulkan]: Got VK_ERROR_SURFACE_LOST_KHR.\n");
      /* Force driver to reset swapchain image handles. */
      vk->context.invalid_swapchain = true;
      FUNC9(vk);
      return;
   }

   index = vk->context.current_swapchain_index;
   if (vk->context.swapchain_semaphores[index] == VK_NULL_HANDLE)
   {
      FUNC6(vk->context.device, &sem_info,
            NULL, &vk->context.swapchain_semaphores[index]);
   }
   FUNC10(vk);
}