#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {scalar_t__* swapchain_images; int has_acquired_swapchain; scalar_t__* swapchain_semaphores; scalar_t__* swapchain_fences; int /*<<< orphan*/  device; } ;
struct TYPE_5__ {scalar_t__ swapchain; TYPE_1__ context; int /*<<< orphan*/  mailbox; } ;
typedef  TYPE_2__ gfx_ctx_vulkan_data_t ;

/* Variables and functions */
 scalar_t__ VK_NULL_HANDLE ; 
 unsigned int VULKAN_MAX_SWAPCHAIN_IMAGES ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC6(gfx_ctx_vulkan_data_t *vk)
{
   unsigned i;

   FUNC5(&vk->mailbox);
   if (vk->swapchain != VK_NULL_HANDLE)
   {
      FUNC4(vk->context.device);
      FUNC3(vk->context.device, vk->swapchain, NULL);
      FUNC0(vk->context.swapchain_images, 0, sizeof(vk->context.swapchain_images));
      vk->swapchain = VK_NULL_HANDLE;
      vk->context.has_acquired_swapchain = false;
   }

   for (i = 0; i < VULKAN_MAX_SWAPCHAIN_IMAGES; i++)
   {
      if (vk->context.swapchain_semaphores[i] != VK_NULL_HANDLE)
         FUNC2(vk->context.device,
               vk->context.swapchain_semaphores[i], NULL);
      if (vk->context.swapchain_fences[i] != VK_NULL_HANDLE)
         FUNC1(vk->context.device,
               vk->context.swapchain_fences[i], NULL);
   }

   FUNC0(vk->context.swapchain_semaphores, 0, sizeof(vk->context.swapchain_semaphores));
   FUNC0(vk->context.swapchain_fences, 0, sizeof(vk->context.swapchain_fences));
}