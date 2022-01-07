
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int vk_t ;
struct vk_texture {scalar_t__ type; int layout; int image; int buffer; int height; int width; } ;
typedef int region ;
typedef int VkCommandBuffer ;
struct TYPE_7__ {int layerCount; int aspectMask; } ;
struct TYPE_6__ {int depth; int height; int width; } ;
struct TYPE_8__ {TYPE_2__ imageSubresource; TYPE_1__ imageExtent; } ;
typedef TYPE_3__ VkBufferImageCopy ;


 int VK_ACCESS_SHADER_READ_BIT ;
 int VK_ACCESS_TRANSFER_WRITE_BIT ;
 int VK_IMAGE_ASPECT_COLOR_BIT ;
 int VK_IMAGE_LAYOUT_SHADER_READ_ONLY_OPTIMAL ;
 int VK_IMAGE_LAYOUT_TRANSFER_DST_OPTIMAL ;
 int VK_IMAGE_LAYOUT_UNDEFINED ;
 int VK_PIPELINE_STAGE_FRAGMENT_SHADER_BIT ;
 int VK_PIPELINE_STAGE_TOP_OF_PIPE_BIT ;
 int VK_PIPELINE_STAGE_TRANSFER_BIT ;
 scalar_t__ VULKAN_TEXTURE_DYNAMIC ;
 scalar_t__ VULKAN_TEXTURE_STAGING ;
 int memset (TYPE_3__*,int ,int) ;
 int retro_assert (int) ;
 int vkCmdCopyBufferToImage (int ,int ,int ,int ,int,TYPE_3__*) ;
 int vulkan_image_layout_transition (int *,int ,int ,int ,int ,int ,int ,int ,int ) ;
 int vulkan_sync_texture_to_gpu (int *,struct vk_texture*) ;

void vulkan_copy_staging_to_dynamic(vk_t *vk, VkCommandBuffer cmd,
      struct vk_texture *dynamic,
      struct vk_texture *staging)
{
   VkBufferImageCopy region;

   retro_assert(dynamic->type == VULKAN_TEXTURE_DYNAMIC);
   retro_assert(staging->type == VULKAN_TEXTURE_STAGING);

   vulkan_sync_texture_to_gpu(vk, staging);
   vulkan_image_layout_transition(vk, cmd, dynamic->image,
         VK_IMAGE_LAYOUT_UNDEFINED, VK_IMAGE_LAYOUT_TRANSFER_DST_OPTIMAL,
         0, VK_ACCESS_TRANSFER_WRITE_BIT,
         VK_PIPELINE_STAGE_TOP_OF_PIPE_BIT,
         VK_PIPELINE_STAGE_TRANSFER_BIT);

   memset(&region, 0, sizeof(region));
   region.imageExtent.width = dynamic->width;
   region.imageExtent.height = dynamic->height;
   region.imageExtent.depth = 1;
   region.imageSubresource.aspectMask = VK_IMAGE_ASPECT_COLOR_BIT;
   region.imageSubresource.layerCount = 1;

   vkCmdCopyBufferToImage(cmd,
         staging->buffer,
         dynamic->image, VK_IMAGE_LAYOUT_TRANSFER_DST_OPTIMAL,
         1, &region);

   vulkan_image_layout_transition(vk, cmd,
         dynamic->image,
         VK_IMAGE_LAYOUT_TRANSFER_DST_OPTIMAL,
         VK_IMAGE_LAYOUT_SHADER_READ_ONLY_OPTIMAL,
         VK_ACCESS_TRANSFER_WRITE_BIT,
         VK_ACCESS_SHADER_READ_BIT,
         VK_PIPELINE_STAGE_TRANSFER_BIT,
         VK_PIPELINE_STAGE_FRAGMENT_SHADER_BIT);

   dynamic->layout = VK_IMAGE_LAYOUT_SHADER_READ_ONLY_OPTIMAL;
}
