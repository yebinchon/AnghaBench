
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vk_descriptor_pool {int pool; int sets; struct vk_descriptor_pool* next; } ;
struct vk_descriptor_manager {struct vk_descriptor_pool* head; } ;
typedef int VkDevice ;


 int VULKAN_DESCRIPTOR_MANAGER_BLOCK_SETS ;
 int free (struct vk_descriptor_pool*) ;
 int memset (struct vk_descriptor_manager*,int ,int) ;
 int vkDestroyDescriptorPool (int ,int ,int *) ;
 int vkFreeDescriptorSets (int ,int ,int ,int ) ;

void vulkan_destroy_descriptor_manager(
      VkDevice device,
      struct vk_descriptor_manager *manager)
{
   struct vk_descriptor_pool *node = manager->head;

   while (node)
   {
      struct vk_descriptor_pool *next = node->next;

      vkFreeDescriptorSets(device, node->pool,
            VULKAN_DESCRIPTOR_MANAGER_BLOCK_SETS, node->sets);
      vkDestroyDescriptorPool(device, node->pool, ((void*)0));

      free(node);
      node = next;
   }

   memset(manager, 0, sizeof(*manager));
}
