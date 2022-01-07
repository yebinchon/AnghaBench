
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct vk_texture {int layout; int view; } ;
struct TYPE_5__ {int dstBinding; int descriptorCount; TYPE_2__* pImageInfo; int descriptorType; void* dstSet; TYPE_3__* pBufferInfo; int member_0; } ;
typedef TYPE_1__ VkWriteDescriptorSet ;
typedef int VkSampler ;
typedef void* VkDeviceSize ;
typedef int VkDevice ;
typedef void* VkDescriptorSet ;
struct TYPE_6__ {int imageLayout; int imageView; int sampler; } ;
typedef TYPE_2__ VkDescriptorImageInfo ;
struct TYPE_7__ {void* range; void* offset; int buffer; } ;
typedef TYPE_3__ VkDescriptorBufferInfo ;
typedef int VkBuffer ;


 int VK_DESCRIPTOR_TYPE_COMBINED_IMAGE_SAMPLER ;
 int VK_DESCRIPTOR_TYPE_UNIFORM_BUFFER ;
 int VK_STRUCTURE_TYPE_WRITE_DESCRIPTOR_SET ;
 int vkUpdateDescriptorSets (int ,int,TYPE_1__*,int ,int *) ;

__attribute__((used)) static void vulkan_write_quad_descriptors(
      VkDevice device,
      VkDescriptorSet set,
      VkBuffer buffer,
      VkDeviceSize offset,
      VkDeviceSize range,
      const struct vk_texture *texture,
      VkSampler sampler)
{
   VkDescriptorBufferInfo buffer_info;
   VkWriteDescriptorSet write = { VK_STRUCTURE_TYPE_WRITE_DESCRIPTOR_SET };

   buffer_info.buffer = buffer;
   buffer_info.offset = offset;
   buffer_info.range = range;

   write.dstSet = set;
   write.dstBinding = 0;
   write.descriptorCount = 1;
   write.descriptorType = VK_DESCRIPTOR_TYPE_UNIFORM_BUFFER;
   write.pBufferInfo = &buffer_info;
   vkUpdateDescriptorSets(device, 1, &write, 0, ((void*)0));

   if (texture)
   {
      VkDescriptorImageInfo image_info;

      image_info.sampler = sampler;
      image_info.imageView = texture->view;
      image_info.imageLayout = texture->layout;

      write.dstSet = set;
      write.dstBinding = 1;
      write.descriptorCount = 1;
      write.descriptorType = VK_DESCRIPTOR_TYPE_COMBINED_IMAGE_SAMPLER;
      write.pImageInfo = &image_info;
      vkUpdateDescriptorSets(device, 1, &write, 0, ((void*)0));
   }
}
