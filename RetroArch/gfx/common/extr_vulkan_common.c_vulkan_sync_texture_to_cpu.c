
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {TYPE_1__* context; } ;
typedef TYPE_2__ vk_t ;
struct vk_texture {scalar_t__ memory; int need_manual_cache_management; } ;
struct TYPE_8__ {scalar_t__ memory; int size; scalar_t__ offset; int member_0; } ;
typedef TYPE_3__ VkMappedMemoryRange ;
struct TYPE_6__ {int device; } ;


 scalar_t__ VK_NULL_HANDLE ;
 int VK_STRUCTURE_TYPE_MAPPED_MEMORY_RANGE ;
 int VK_WHOLE_SIZE ;
 int vkInvalidateMappedMemoryRanges (int ,int,TYPE_3__*) ;

void vulkan_sync_texture_to_cpu(vk_t *vk, const struct vk_texture *tex)
{
   VkMappedMemoryRange range = { VK_STRUCTURE_TYPE_MAPPED_MEMORY_RANGE };
   if (!tex || !tex->need_manual_cache_management || tex->memory == VK_NULL_HANDLE)
      return;

   range.memory = tex->memory;
   range.offset = 0;
   range.size = VK_WHOLE_SIZE;
   vkInvalidateMappedMemoryRanges(vk->context->device, 1, &range);
}
