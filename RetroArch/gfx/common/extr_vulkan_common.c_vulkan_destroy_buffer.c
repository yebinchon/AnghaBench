
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vk_buffer {int buffer; int memory; } ;
typedef int VkDevice ;


 int memset (struct vk_buffer*,int ,int) ;
 int vkDestroyBuffer (int ,int ,int *) ;
 int vkFreeMemory (int ,int ,int *) ;
 int vkUnmapMemory (int ,int ) ;

void vulkan_destroy_buffer(
      VkDevice device,
      struct vk_buffer *buffer)
{
   vkUnmapMemory(device, buffer->memory);
   vkFreeMemory(device, buffer->memory, ((void*)0));

   vkDestroyBuffer(device, buffer->buffer, ((void*)0));

   memset(buffer, 0, sizeof(*buffer));
}
