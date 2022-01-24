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
typedef  int /*<<< orphan*/  vulkan_filter_chain_t ;
struct TYPE_5__ {scalar_t__ filter_chain; TYPE_1__* context; int /*<<< orphan*/  render_pass; int /*<<< orphan*/  vk_vp; } ;
typedef  TYPE_2__ vk_t ;
struct vulkan_filter_chain_swapchain_info {int /*<<< orphan*/  num_indices; int /*<<< orphan*/  render_pass; int /*<<< orphan*/  format; int /*<<< orphan*/  viewport; } ;
struct TYPE_4__ {int /*<<< orphan*/  num_swapchain_images; int /*<<< orphan*/  swapchain_format; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,struct vulkan_filter_chain_swapchain_info*) ; 

__attribute__((used)) static void FUNC2(vk_t *vk)
{
   struct vulkan_filter_chain_swapchain_info info;

   info.viewport    = vk->vk_vp;
   info.format      = vk->context->swapchain_format;
   info.render_pass = vk->render_pass;
   info.num_indices = vk->context->num_swapchain_images;

   if (!FUNC1((vulkan_filter_chain_t*)vk->filter_chain, &info))
      FUNC0("Failed to update filter chain info. This will probably lead to a crash ...\n");
}