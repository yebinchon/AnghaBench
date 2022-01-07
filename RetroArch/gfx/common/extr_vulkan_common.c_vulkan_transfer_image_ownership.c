
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef void* uint32_t ;
typedef int VkPipelineStageFlags ;
struct TYPE_4__ {int layerCount; int levelCount; int aspectMask; } ;
struct TYPE_5__ {TYPE_1__ subresourceRange; int image; void* dstQueueFamilyIndex; void* srcQueueFamilyIndex; void* newLayout; void* oldLayout; scalar_t__ dstAccessMask; scalar_t__ srcAccessMask; int member_0; } ;
typedef TYPE_2__ VkImageMemoryBarrier ;
typedef void* VkImageLayout ;
typedef int VkImage ;
typedef int VkCommandBuffer ;


 int VK_IMAGE_ASPECT_COLOR_BIT ;
 int VK_REMAINING_ARRAY_LAYERS ;
 int VK_REMAINING_MIP_LEVELS ;
 int VK_STRUCTURE_TYPE_IMAGE_MEMORY_BARRIER ;
 int vkCmdPipelineBarrier (int ,int ,int ,int,int ,int *,int ,int *,int,TYPE_2__*) ;

void vulkan_transfer_image_ownership(VkCommandBuffer cmd,
      VkImage image, VkImageLayout layout,
      VkPipelineStageFlags src_stages,
      VkPipelineStageFlags dst_stages,
      uint32_t src_queue_family,
      uint32_t dst_queue_family)
{
   VkImageMemoryBarrier barrier =
   { VK_STRUCTURE_TYPE_IMAGE_MEMORY_BARRIER };

   barrier.srcAccessMask = 0;
   barrier.dstAccessMask = 0;
   barrier.oldLayout = layout;
   barrier.newLayout = layout;
   barrier.srcQueueFamilyIndex = src_queue_family;
   barrier.dstQueueFamilyIndex = dst_queue_family;
   barrier.image = image;
   barrier.subresourceRange.aspectMask = VK_IMAGE_ASPECT_COLOR_BIT;
   barrier.subresourceRange.levelCount = VK_REMAINING_MIP_LEVELS;
   barrier.subresourceRange.layerCount = VK_REMAINING_ARRAY_LAYERS;

   vkCmdPipelineBarrier(cmd, src_stages, dst_stages,
         0, 0, ((void*)0), 0, ((void*)0), 1, &barrier);
}
