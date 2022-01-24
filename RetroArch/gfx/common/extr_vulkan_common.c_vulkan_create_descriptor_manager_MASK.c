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
struct vk_descriptor_manager {unsigned int num_sizes; int head; int /*<<< orphan*/  set_layout; int /*<<< orphan*/  sizes; } ;
typedef  int /*<<< orphan*/  manager ;
typedef  int /*<<< orphan*/  VkDevice ;
typedef  int /*<<< orphan*/  VkDescriptorSetLayout ;
typedef  int /*<<< orphan*/  VkDescriptorPoolSize ;

/* Variables and functions */
 unsigned int VULKAN_MAX_DESCRIPTOR_POOL_SIZES ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/  const*,unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (struct vk_descriptor_manager*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int FUNC3 (int /*<<< orphan*/ ,struct vk_descriptor_manager*) ; 

struct vk_descriptor_manager FUNC4(
      VkDevice device,
      const VkDescriptorPoolSize *sizes,
      unsigned num_sizes,
      VkDescriptorSetLayout set_layout)
{
   struct vk_descriptor_manager manager;
   FUNC1(&manager, 0, sizeof(manager));
   FUNC2(num_sizes <= VULKAN_MAX_DESCRIPTOR_POOL_SIZES);
   FUNC0(manager.sizes, sizes, num_sizes * sizeof(*sizes));
   manager.num_sizes  = num_sizes;
   manager.set_layout = set_layout;

   manager.head       = FUNC3(device, &manager);
   FUNC2(manager.head);
   return manager;
}