
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct vk_descriptor_manager {scalar_t__ count; TYPE_1__* current; } ;
typedef int VkDevice ;
typedef int VkDescriptorSet ;
struct TYPE_3__ {int * sets; struct TYPE_3__* next; } ;


 scalar_t__ VULKAN_DESCRIPTOR_MANAGER_BLOCK_SETS ;
 int retro_assert (TYPE_1__*) ;
 TYPE_1__* vulkan_alloc_descriptor_pool (int ,struct vk_descriptor_manager*) ;

VkDescriptorSet vulkan_descriptor_manager_alloc(
      VkDevice device, struct vk_descriptor_manager *manager)
{
   if (manager->count < VULKAN_DESCRIPTOR_MANAGER_BLOCK_SETS)
      return manager->current->sets[manager->count++];

   while (manager->current->next)
   {
      manager->current = manager->current->next;
      manager->count = 0;
      return manager->current->sets[manager->count++];
   }

   manager->current->next = vulkan_alloc_descriptor_pool(device, manager);
   retro_assert(manager->current->next);

   manager->current = manager->current->next;
   manager->count = 0;
   return manager->current->sets[manager->count++];
}
