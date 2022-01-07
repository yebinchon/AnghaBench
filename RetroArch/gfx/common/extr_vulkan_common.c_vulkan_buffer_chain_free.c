
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vk_buffer_node {int buffer; struct vk_buffer_node* next; } ;
struct vk_buffer_chain {struct vk_buffer_node* head; } ;
typedef int VkDevice ;


 int free (struct vk_buffer_node*) ;
 int memset (struct vk_buffer_chain*,int ,int) ;
 int vulkan_destroy_buffer (int ,int *) ;

void vulkan_buffer_chain_free(
      VkDevice device,
      struct vk_buffer_chain *chain)
{
   struct vk_buffer_node *node = chain->head;
   while (node)
   {
      struct vk_buffer_node *next = node->next;
      vulkan_destroy_buffer(device, &node->buffer);

      free(node);
      node = next;
   }
   memset(chain, 0, sizeof(*chain));
}
