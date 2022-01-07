
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vk_descriptor_manager {unsigned int num_sizes; int head; int set_layout; int sizes; } ;
typedef int manager ;
typedef int VkDevice ;
typedef int VkDescriptorSetLayout ;
typedef int VkDescriptorPoolSize ;


 unsigned int VULKAN_MAX_DESCRIPTOR_POOL_SIZES ;
 int memcpy (int ,int const*,unsigned int) ;
 int memset (struct vk_descriptor_manager*,int ,int) ;
 int retro_assert (int) ;
 int vulkan_alloc_descriptor_pool (int ,struct vk_descriptor_manager*) ;

struct vk_descriptor_manager vulkan_create_descriptor_manager(
      VkDevice device,
      const VkDescriptorPoolSize *sizes,
      unsigned num_sizes,
      VkDescriptorSetLayout set_layout)
{
   struct vk_descriptor_manager manager;
   memset(&manager, 0, sizeof(manager));
   retro_assert(num_sizes <= VULKAN_MAX_DESCRIPTOR_POOL_SIZES);
   memcpy(manager.sizes, sizes, num_sizes * sizeof(*sizes));
   manager.num_sizes = num_sizes;
   manager.set_layout = set_layout;

   manager.head = vulkan_alloc_descriptor_pool(device, &manager);
   retro_assert(manager.head);
   return manager;
}
