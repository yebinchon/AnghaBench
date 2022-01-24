#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint32_t ;
typedef  int /*<<< orphan*/  VkPipelineStageFlags ;
struct TYPE_4__ {int /*<<< orphan*/  layerCount; int /*<<< orphan*/  levelCount; int /*<<< orphan*/  aspectMask; } ;
struct TYPE_5__ {TYPE_1__ subresourceRange; int /*<<< orphan*/  image; void* dstQueueFamilyIndex; void* srcQueueFamilyIndex; void* newLayout; void* oldLayout; void* dstAccessMask; void* srcAccessMask; int /*<<< orphan*/  member_0; } ;
typedef  TYPE_2__ VkImageMemoryBarrier ;
typedef  void* VkImageLayout ;
typedef  int /*<<< orphan*/  VkImage ;
typedef  int /*<<< orphan*/  VkCommandBuffer ;
typedef  void* VkAccessFlags ;

/* Variables and functions */
 int /*<<< orphan*/  VK_IMAGE_ASPECT_COLOR_BIT ; 
 void* VK_QUEUE_FAMILY_IGNORED ; 
 int /*<<< orphan*/  VK_REMAINING_ARRAY_LAYERS ; 
 int /*<<< orphan*/  VK_STRUCTURE_TYPE_IMAGE_MEMORY_BARRIER ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,TYPE_2__*) ; 

void FUNC1(
      VkCommandBuffer cmd, VkImage image, uint32_t levels,
      VkImageLayout old_layout, VkImageLayout new_layout,
      VkAccessFlags src_access, VkAccessFlags dst_access,
      VkPipelineStageFlags src_stages, VkPipelineStageFlags dst_stages)
{
   VkImageMemoryBarrier barrier        = { VK_STRUCTURE_TYPE_IMAGE_MEMORY_BARRIER };

   barrier.srcAccessMask               = src_access;
   barrier.dstAccessMask               = dst_access;
   barrier.oldLayout                   = old_layout;
   barrier.newLayout                   = new_layout;
   barrier.srcQueueFamilyIndex         = VK_QUEUE_FAMILY_IGNORED;
   barrier.dstQueueFamilyIndex         = VK_QUEUE_FAMILY_IGNORED;
   barrier.image                       = image;
   barrier.subresourceRange.aspectMask = VK_IMAGE_ASPECT_COLOR_BIT;
   barrier.subresourceRange.levelCount = levels;
   barrier.subresourceRange.layerCount = VK_REMAINING_ARRAY_LAYERS;

   FUNC0(cmd,
         src_stages,
         dst_stages,
         false,
         0, NULL,
         0, NULL,
         1, &barrier);
}