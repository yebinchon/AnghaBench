
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint32_t ;
typedef int VkPipelineStageFlags ;
struct TYPE_4__ {int layerCount; int levelCount; int aspectMask; } ;
struct TYPE_5__ {TYPE_1__ subresourceRange; int image; void* dstQueueFamilyIndex; void* srcQueueFamilyIndex; void* newLayout; void* oldLayout; void* dstAccessMask; void* srcAccessMask; int member_0; } ;
typedef TYPE_2__ VkImageMemoryBarrier ;
typedef void* VkImageLayout ;
typedef int VkImage ;
typedef int VkCommandBuffer ;
typedef void* VkAccessFlags ;


 int VK_IMAGE_ASPECT_COLOR_BIT ;
 void* VK_QUEUE_FAMILY_IGNORED ;
 int VK_REMAINING_ARRAY_LAYERS ;
 int VK_STRUCTURE_TYPE_IMAGE_MEMORY_BARRIER ;
 int vkCmdPipelineBarrier (int ,int ,int ,int,int ,int *,int ,int *,int,TYPE_2__*) ;

void vulkan_image_layout_transition_levels(
      VkCommandBuffer cmd, VkImage image, uint32_t levels,
      VkImageLayout old_layout, VkImageLayout new_layout,
      VkAccessFlags src_access, VkAccessFlags dst_access,
      VkPipelineStageFlags src_stages, VkPipelineStageFlags dst_stages)
{
   VkImageMemoryBarrier barrier = { VK_STRUCTURE_TYPE_IMAGE_MEMORY_BARRIER };

   barrier.srcAccessMask = src_access;
   barrier.dstAccessMask = dst_access;
   barrier.oldLayout = old_layout;
   barrier.newLayout = new_layout;
   barrier.srcQueueFamilyIndex = VK_QUEUE_FAMILY_IGNORED;
   barrier.dstQueueFamilyIndex = VK_QUEUE_FAMILY_IGNORED;
   barrier.image = image;
   barrier.subresourceRange.aspectMask = VK_IMAGE_ASPECT_COLOR_BIT;
   barrier.subresourceRange.levelCount = levels;
   barrier.subresourceRange.layerCount = VK_REMAINING_ARRAY_LAYERS;

   vkCmdPipelineBarrier(cmd,
         src_stages,
         dst_stages,
         0,
         0, ((void*)0),
         0, ((void*)0),
         1, &barrier);
}
