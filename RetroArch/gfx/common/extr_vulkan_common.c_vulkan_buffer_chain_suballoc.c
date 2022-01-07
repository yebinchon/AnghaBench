
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint8_t ;
struct vk_buffer_range {int offset; int buffer; int * data; } ;
struct vk_buffer_chain {size_t offset; int alignment; TYPE_2__* current; } ;
typedef int VkDeviceSize ;
struct TYPE_3__ {int size; int buffer; scalar_t__ mapped; } ;
struct TYPE_4__ {TYPE_1__ buffer; } ;



__attribute__((used)) static bool vulkan_buffer_chain_suballoc(struct vk_buffer_chain *chain,
      size_t size, struct vk_buffer_range *range)
{
   VkDeviceSize next_offset = chain->offset + size;
   if (next_offset <= chain->current->buffer.size)
   {
      range->data = (uint8_t*)chain->current->buffer.mapped + chain->offset;
      range->buffer = chain->current->buffer.buffer;
      range->offset = chain->offset;
      chain->offset = (next_offset + chain->alignment - 1)
         & ~(chain->alignment - 1);

      return 1;
   }

   return 0;
}
