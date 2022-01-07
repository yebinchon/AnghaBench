
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vk_texture {int mapped; int size; int offset; int memory; } ;
typedef int VkDevice ;


 int vkMapMemory (int ,int ,int ,int ,int ,int *) ;

void vulkan_map_persistent_texture(
      VkDevice device,
      struct vk_texture *texture)
{
   vkMapMemory(device, texture->memory, texture->offset,
         texture->size, 0, &texture->mapped);
}
