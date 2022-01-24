#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct vk_descriptor_pool {int /*<<< orphan*/  pool; int /*<<< orphan*/  sets; struct vk_descriptor_pool* next; } ;
struct vk_descriptor_manager {struct vk_descriptor_pool* head; } ;
typedef  int /*<<< orphan*/  VkDevice ;

/* Variables and functions */
 int /*<<< orphan*/  VULKAN_DESCRIPTOR_MANAGER_BLOCK_SETS ; 
 int /*<<< orphan*/  FUNC0 (struct vk_descriptor_pool*) ; 
 int /*<<< orphan*/  FUNC1 (struct vk_descriptor_manager*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void FUNC4(
      VkDevice device,
      struct vk_descriptor_manager *manager)
{
   struct vk_descriptor_pool *node = manager->head;

   while (node)
   {
      struct vk_descriptor_pool *next = node->next;

      FUNC3(device, node->pool,
            VULKAN_DESCRIPTOR_MANAGER_BLOCK_SETS, node->sets);
      FUNC2(device, node->pool, NULL);

      FUNC0(node);
      node = next;
   }

   FUNC1(manager, 0, sizeof(*manager));
}