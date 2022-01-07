
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vk_t ;
struct vk_texture {scalar_t__ layout; int type; int image; } ;
typedef int VkCommandBuffer ;


 int VK_ACCESS_HOST_WRITE_BIT ;
 int VK_ACCESS_SHADER_READ_BIT ;
 scalar_t__ VK_IMAGE_LAYOUT_GENERAL ;
 scalar_t__ VK_IMAGE_LAYOUT_PREINITIALIZED ;
 int VK_PIPELINE_STAGE_FRAGMENT_SHADER_BIT ;
 int VK_PIPELINE_STAGE_HOST_BIT ;

 int retro_assert (int ) ;
 int vulkan_image_layout_transition (int *,int ,int ,scalar_t__,scalar_t__,int ,int ,int ,int ) ;

void vulkan_transition_texture(vk_t *vk, VkCommandBuffer cmd, struct vk_texture *texture)
{
   if (!texture->image)
      return;







   if (texture->layout != VK_IMAGE_LAYOUT_PREINITIALIZED &&
       texture->layout != VK_IMAGE_LAYOUT_GENERAL)
      return;

   switch (texture->type)
   {
      case 128:
         vulkan_image_layout_transition(vk, cmd, texture->image,
               texture->layout, VK_IMAGE_LAYOUT_GENERAL,
               VK_ACCESS_HOST_WRITE_BIT, VK_ACCESS_SHADER_READ_BIT,
               VK_PIPELINE_STAGE_HOST_BIT,
               VK_PIPELINE_STAGE_FRAGMENT_SHADER_BIT);
         break;

      default:
         retro_assert(0 && "Attempting to transition invalid texture type.\n");
         break;
   }
   texture->layout = VK_IMAGE_LAYOUT_GENERAL;
}
