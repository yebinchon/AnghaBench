
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct vk_descriptor_pool {int * sets; int pool; } ;
struct vk_descriptor_manager {int set_layout; int sizes; int num_sizes; } ;
typedef int VkDevice ;
struct TYPE_5__ {int descriptorSetCount; int * pSetLayouts; int descriptorPool; int member_0; } ;
typedef TYPE_1__ VkDescriptorSetAllocateInfo ;
struct TYPE_6__ {unsigned int maxSets; int flags; int pPoolSizes; int poolSizeCount; int member_0; } ;
typedef TYPE_2__ VkDescriptorPoolCreateInfo ;


 int VK_DESCRIPTOR_POOL_CREATE_FREE_DESCRIPTOR_SET_BIT ;
 int VK_STRUCTURE_TYPE_DESCRIPTOR_POOL_CREATE_INFO ;
 int VK_STRUCTURE_TYPE_DESCRIPTOR_SET_ALLOCATE_INFO ;
 unsigned int VULKAN_DESCRIPTOR_MANAGER_BLOCK_SETS ;
 scalar_t__ calloc (int,int) ;
 int vkAllocateDescriptorSets (int ,TYPE_1__*,int *) ;
 int vkCreateDescriptorPool (int ,TYPE_2__*,int *,int *) ;

__attribute__((used)) static struct vk_descriptor_pool *vulkan_alloc_descriptor_pool(
      VkDevice device,
      const struct vk_descriptor_manager *manager)
{
   unsigned i;
   VkDescriptorPoolCreateInfo pool_info = {
      VK_STRUCTURE_TYPE_DESCRIPTOR_POOL_CREATE_INFO };
   VkDescriptorSetAllocateInfo alloc_info = {
      VK_STRUCTURE_TYPE_DESCRIPTOR_SET_ALLOCATE_INFO };

   struct vk_descriptor_pool *pool =
      (struct vk_descriptor_pool*)calloc(1, sizeof(*pool));
   if (!pool)
      return ((void*)0);

   pool_info.maxSets = VULKAN_DESCRIPTOR_MANAGER_BLOCK_SETS;
   pool_info.poolSizeCount = manager->num_sizes;
   pool_info.pPoolSizes = manager->sizes;
   pool_info.flags = VK_DESCRIPTOR_POOL_CREATE_FREE_DESCRIPTOR_SET_BIT;

   vkCreateDescriptorPool(device, &pool_info, ((void*)0), &pool->pool);


   alloc_info.descriptorPool = pool->pool;
   alloc_info.descriptorSetCount = 1;
   alloc_info.pSetLayouts = &manager->set_layout;

   for (i = 0; i < VULKAN_DESCRIPTOR_MANAGER_BLOCK_SETS; i++)
      vkAllocateDescriptorSets(device, &alloc_info, &pool->sets[i]);

   return pool;
}
