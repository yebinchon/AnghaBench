
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vk_buffer_chain {int * current; int * head; int usage; scalar_t__ offset; void* alignment; void* block_size; } ;
typedef void* VkDeviceSize ;
typedef int VkBufferUsageFlags ;



struct vk_buffer_chain vulkan_buffer_chain_init(
      VkDeviceSize block_size,
      VkDeviceSize alignment,
      VkBufferUsageFlags usage)
{
   struct vk_buffer_chain chain;

   chain.block_size = block_size;
   chain.alignment = alignment;
   chain.offset = 0;
   chain.usage = usage;
   chain.head = ((void*)0);
   chain.current = ((void*)0);

   return chain;
}
