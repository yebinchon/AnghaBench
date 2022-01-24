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
struct TYPE_4__ {int /*<<< orphan*/  device; } ;
struct TYPE_5__ {TYPE_1__ context; } ;
typedef  TYPE_2__ gfx_ctx_vulkan_data_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  vkAcquireNextImageKHR ; 
 int /*<<< orphan*/  vkCreateSwapchainKHR ; 
 int /*<<< orphan*/  vkDestroySwapchainKHR ; 
 int /*<<< orphan*/  vkGetSwapchainImagesKHR ; 
 int /*<<< orphan*/  vkQueuePresentKHR ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static bool FUNC2(gfx_ctx_vulkan_data_t *vk)
{
   if (!FUNC1(vk->context.device))
      return false;

   FUNC0(vk->context.device, vkCreateSwapchainKHR);
   FUNC0(vk->context.device, vkDestroySwapchainKHR);
   FUNC0(vk->context.device, vkGetSwapchainImagesKHR);
   FUNC0(vk->context.device, vkAcquireNextImageKHR);
   FUNC0(vk->context.device, vkQueuePresentKHR);
   return true;
}