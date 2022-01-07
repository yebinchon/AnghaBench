
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {int mipmap_linear; int mipmap_nearest; int linear; int nearest; } ;
struct TYPE_9__ {TYPE_2__ samplers; TYPE_1__* context; } ;
typedef TYPE_3__ vk_t ;
struct TYPE_10__ {float mipLodBias; float maxAnisotropy; int compareEnable; float minLod; float maxLod; int unnormalizedCoordinates; void* mipmapMode; void* minFilter; void* magFilter; int borderColor; void* addressModeW; void* addressModeV; void* addressModeU; int member_0; } ;
typedef TYPE_4__ VkSamplerCreateInfo ;
struct TYPE_7__ {int device; } ;


 int VK_BORDER_COLOR_FLOAT_OPAQUE_WHITE ;
 void* VK_FILTER_LINEAR ;
 void* VK_FILTER_NEAREST ;
 float VK_LOD_CLAMP_NONE ;
 void* VK_SAMPLER_ADDRESS_MODE_CLAMP_TO_EDGE ;
 void* VK_SAMPLER_MIPMAP_MODE_LINEAR ;
 void* VK_SAMPLER_MIPMAP_MODE_NEAREST ;
 int VK_STRUCTURE_TYPE_SAMPLER_CREATE_INFO ;
 int vkCreateSampler (int ,TYPE_4__*,int *,int *) ;

__attribute__((used)) static void vulkan_init_samplers(vk_t *vk)
{
   VkSamplerCreateInfo info =
   { VK_STRUCTURE_TYPE_SAMPLER_CREATE_INFO };

   info.magFilter = VK_FILTER_NEAREST;
   info.minFilter = VK_FILTER_NEAREST;
   info.mipmapMode = VK_SAMPLER_MIPMAP_MODE_NEAREST;
   info.addressModeU = VK_SAMPLER_ADDRESS_MODE_CLAMP_TO_EDGE;
   info.addressModeV = VK_SAMPLER_ADDRESS_MODE_CLAMP_TO_EDGE;
   info.addressModeW = VK_SAMPLER_ADDRESS_MODE_CLAMP_TO_EDGE;
   info.mipLodBias = 0.0f;
   info.maxAnisotropy = 1.0f;
   info.compareEnable = 0;
   info.minLod = 0.0f;
   info.maxLod = 0.0f;
   info.unnormalizedCoordinates = 0;
   info.borderColor = VK_BORDER_COLOR_FLOAT_OPAQUE_WHITE;
   vkCreateSampler(vk->context->device,
         &info, ((void*)0), &vk->samplers.nearest);

   info.magFilter = VK_FILTER_LINEAR;
   info.minFilter = VK_FILTER_LINEAR;
   vkCreateSampler(vk->context->device,
         &info, ((void*)0), &vk->samplers.linear);

   info.maxLod = VK_LOD_CLAMP_NONE;
   info.magFilter = VK_FILTER_NEAREST;
   info.minFilter = VK_FILTER_NEAREST;
   info.mipmapMode = VK_SAMPLER_MIPMAP_MODE_NEAREST;
   vkCreateSampler(vk->context->device,
         &info, ((void*)0), &vk->samplers.mipmap_nearest);

   info.magFilter = VK_FILTER_LINEAR;
   info.minFilter = VK_FILTER_LINEAR;
   info.mipmapMode = VK_SAMPLER_MIPMAP_MODE_LINEAR;
   vkCreateSampler(vk->context->device,
         &info, ((void*)0), &vk->samplers.mipmap_linear);
}
