
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_28__ TYPE_9__ ;
typedef struct TYPE_27__ TYPE_8__ ;
typedef struct TYPE_26__ TYPE_7__ ;
typedef struct TYPE_25__ TYPE_6__ ;
typedef struct TYPE_24__ TYPE_5__ ;
typedef struct TYPE_23__ TYPE_4__ ;
typedef struct TYPE_22__ TYPE_3__ ;
typedef struct TYPE_21__ TYPE_2__ ;
typedef struct TYPE_20__ TYPE_1__ ;
typedef struct TYPE_19__ TYPE_11__ ;
typedef struct TYPE_18__ TYPE_10__ ;


struct TYPE_25__ {int height; int width; } ;
struct TYPE_23__ {struct vk_texture* staging; } ;
struct TYPE_28__ {int cmd; TYPE_8__* chain; TYPE_6__ vp; TYPE_5__* context; TYPE_4__ readback; } ;
typedef TYPE_9__ vk_t ;
struct vk_texture {scalar_t__ memory; int buffer; } ;
struct video_viewport {int height; int width; int y; int x; } ;
typedef int region ;
struct TYPE_18__ {int dstAccessMask; int srcAccessMask; int member_0; } ;
typedef TYPE_10__ VkMemoryBarrier ;
struct TYPE_22__ {int depth; int height; int width; } ;
struct TYPE_21__ {int y; int x; } ;
struct TYPE_20__ {int layerCount; int aspectMask; } ;
struct TYPE_19__ {TYPE_3__ imageExtent; TYPE_2__ imageOffset; TYPE_1__ imageSubresource; } ;
typedef TYPE_11__ VkBufferImageCopy ;
struct TYPE_26__ {int image; } ;
struct TYPE_27__ {TYPE_7__ backbuffer; } ;
struct TYPE_24__ {size_t current_swapchain_index; } ;


 int VK_ACCESS_HOST_READ_BIT ;
 int VK_ACCESS_TRANSFER_WRITE_BIT ;
 int VK_FORMAT_B8G8R8A8_UNORM ;
 int VK_IMAGE_ASPECT_COLOR_BIT ;
 int VK_IMAGE_LAYOUT_TRANSFER_SRC_OPTIMAL ;
 scalar_t__ VK_NULL_HANDLE ;
 int VK_PIPELINE_STAGE_HOST_BIT ;
 int VK_PIPELINE_STAGE_TRANSFER_BIT ;
 int VK_STRUCTURE_TYPE_MEMORY_BARRIER ;
 int VULKAN_TEXTURE_READBACK ;
 int memset (TYPE_11__*,int ,int) ;
 int vkCmdCopyImageToBuffer (int ,int ,int ,int ,int,TYPE_11__*) ;
 int vkCmdPipelineBarrier (int ,int ,int ,int ,int,TYPE_10__*,int ,int *,int ,int *) ;
 struct vk_texture vulkan_create_texture (TYPE_9__*,struct vk_texture*,int ,int ,int ,int *,int *,int ) ;
 int vulkan_viewport_info (TYPE_9__*,struct video_viewport*) ;

__attribute__((used)) static void vulkan_readback(vk_t *vk)
{
   VkBufferImageCopy region;
   struct vk_texture *staging;
   struct video_viewport vp;
   VkMemoryBarrier barrier = { VK_STRUCTURE_TYPE_MEMORY_BARRIER };

   vulkan_viewport_info(vk, &vp);
   memset(&region, 0, sizeof(region));
   region.imageSubresource.aspectMask = VK_IMAGE_ASPECT_COLOR_BIT;
   region.imageSubresource.layerCount = 1;
   region.imageOffset.x = vp.x;
   region.imageOffset.y = vp.y;
   region.imageExtent.width = vp.width;
   region.imageExtent.height = vp.height;
   region.imageExtent.depth = 1;

   staging = &vk->readback.staging[vk->context->current_swapchain_index];
   *staging = vulkan_create_texture(vk,
         staging->memory != VK_NULL_HANDLE ? staging : ((void*)0),
         vk->vp.width, vk->vp.height,
         VK_FORMAT_B8G8R8A8_UNORM,
         ((void*)0), ((void*)0), VULKAN_TEXTURE_READBACK);

   vkCmdCopyImageToBuffer(vk->cmd, vk->chain->backbuffer.image,
         VK_IMAGE_LAYOUT_TRANSFER_SRC_OPTIMAL,
         staging->buffer,
         1, &region);


   barrier.srcAccessMask = VK_ACCESS_TRANSFER_WRITE_BIT;
   barrier.dstAccessMask = VK_ACCESS_HOST_READ_BIT;
   vkCmdPipelineBarrier(vk->cmd,
         VK_PIPELINE_STAGE_TRANSFER_BIT,
         VK_PIPELINE_STAGE_HOST_BIT, 0,
         1, &barrier, 0, ((void*)0), 0, ((void*)0));
}
