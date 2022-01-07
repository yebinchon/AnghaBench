
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vulkan_context {int dummy; } ;
struct vk_buffer_node {int buffer; } ;
typedef int VkBufferUsageFlags ;


 scalar_t__ calloc (int,int) ;
 int vulkan_create_buffer (struct vulkan_context const*,size_t,int ) ;

__attribute__((used)) static struct vk_buffer_node *vulkan_buffer_chain_alloc_node(
      const struct vulkan_context *context,
      size_t size, VkBufferUsageFlags usage)
{
   struct vk_buffer_node *node = (struct vk_buffer_node*)
      calloc(1, sizeof(*node));
   if (!node)
      return ((void*)0);

   node->buffer = vulkan_create_buffer(
         context, size, usage);
   return node;
}
