
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_9__ {float alpha; unsigned int last_index; int* dirty; struct vk_texture* textures_optimal; struct vk_texture* textures; } ;
struct TYPE_10__ {TYPE_2__ menu; TYPE_1__* context; } ;
typedef TYPE_3__ vk_t ;
typedef int uint8_t ;
typedef int uint32_t ;
typedef int uint16_t ;
struct vk_texture {scalar_t__ type; scalar_t__ memory; int stride; int size; int offset; } ;
struct TYPE_11__ {int member_3; int member_2; int member_1; int member_0; } ;
typedef TYPE_4__ VkComponentMapping ;
struct TYPE_8__ {unsigned int current_swapchain_index; int device; } ;


 int VK_COMPONENT_SWIZZLE_A ;
 int VK_COMPONENT_SWIZZLE_B ;
 int VK_COMPONENT_SWIZZLE_G ;
 int VK_COMPONENT_SWIZZLE_R ;
 int VK_FORMAT_B4G4R4A4_UNORM_PACK16 ;
 int VK_FORMAT_B8G8R8A8_UNORM ;
 scalar_t__ VULKAN_TEXTURE_DYNAMIC ;
 scalar_t__ VULKAN_TEXTURE_STAGING ;
 scalar_t__ VULKAN_TEXTURE_STREAMED ;
 int memcpy (int *,int const*,unsigned int) ;
 int vkMapMemory (int ,scalar_t__,int ,int ,int ,void**) ;
 int vkUnmapMemory (int ,scalar_t__) ;
 struct vk_texture vulkan_create_texture (TYPE_3__*,struct vk_texture*,unsigned int,unsigned int,int ,int *,TYPE_4__ const*,scalar_t__) ;
 int vulkan_sync_texture_to_gpu (TYPE_3__*,struct vk_texture*) ;

__attribute__((used)) static void vulkan_set_texture_frame(void *data,
      const void *frame, bool rgb32, unsigned width, unsigned height,
      float alpha)
{
   unsigned y, stride;
   uint8_t *ptr = ((void*)0);
   uint8_t *dst = ((void*)0);
   const uint8_t *src = ((void*)0);
   vk_t *vk = (vk_t*)data;
   unsigned index = 0;
   struct vk_texture *texture = ((void*)0);
   struct vk_texture *texture_optimal = ((void*)0);
   const VkComponentMapping br_swizzle = {
      VK_COMPONENT_SWIZZLE_B,
      VK_COMPONENT_SWIZZLE_G,
      VK_COMPONENT_SWIZZLE_R,
      VK_COMPONENT_SWIZZLE_A,
   };

   if (!vk)
      return;

   index = vk->context->current_swapchain_index;
   texture = &vk->menu.textures[index];
   texture_optimal = &vk->menu.textures_optimal[index];



   *texture = vulkan_create_texture(vk,
         texture->memory ? texture : ((void*)0),
         width, height,
         rgb32 ? VK_FORMAT_B8G8R8A8_UNORM : VK_FORMAT_B4G4R4A4_UNORM_PACK16,
         ((void*)0), rgb32 ? ((void*)0) : &br_swizzle,
         texture_optimal->memory ? VULKAN_TEXTURE_STAGING : VULKAN_TEXTURE_STREAMED);

   vkMapMemory(vk->context->device, texture->memory,
         texture->offset, texture->size, 0, (void**)&ptr);

   dst = ptr;
   src = (const uint8_t*)frame;
   stride = (rgb32 ? sizeof(uint32_t) : sizeof(uint16_t)) * width;

   for (y = 0; y < height; y++, dst += texture->stride, src += stride)
      memcpy(dst, src, stride);

   vk->menu.alpha = alpha;
   vk->menu.last_index = index;

   if (texture->type == VULKAN_TEXTURE_STAGING)
   {
      *texture_optimal = vulkan_create_texture(vk,
            texture_optimal->memory ? texture_optimal : ((void*)0),
            width, height,
            rgb32 ? VK_FORMAT_B8G8R8A8_UNORM : VK_FORMAT_B4G4R4A4_UNORM_PACK16,
            ((void*)0), rgb32 ? ((void*)0) : &br_swizzle,
            VULKAN_TEXTURE_DYNAMIC);
   }
   else
       vulkan_sync_texture_to_gpu(vk, texture);

   vkUnmapMemory(vk->context->device, texture->memory);
   vk->menu.dirty[index] = 1;
}
