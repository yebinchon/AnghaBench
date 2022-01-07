
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct vulkan_context {int device; int memory_properties; } ;
struct vk_buffer {size_t size; int mapped; int memory; int buffer; } ;
struct TYPE_7__ {int memoryTypeBits; int size; } ;
typedef TYPE_1__ VkMemoryRequirements ;
struct TYPE_8__ {int memoryTypeIndex; int allocationSize; int member_0; } ;
typedef TYPE_2__ VkMemoryAllocateInfo ;
typedef int VkBufferUsageFlags ;
struct TYPE_9__ {size_t size; int sharingMode; int usage; int member_0; } ;
typedef TYPE_3__ VkBufferCreateInfo ;


 int VK_MEMORY_PROPERTY_HOST_COHERENT_BIT ;
 int VK_MEMORY_PROPERTY_HOST_VISIBLE_BIT ;
 int VK_SHARING_MODE_EXCLUSIVE ;
 int VK_STRUCTURE_TYPE_BUFFER_CREATE_INFO ;
 int VK_STRUCTURE_TYPE_MEMORY_ALLOCATE_INFO ;
 int vkAllocateMemory (int ,TYPE_2__*,int *,int *) ;
 int vkBindBufferMemory (int ,int ,int ,int ) ;
 int vkCreateBuffer (int ,TYPE_3__*,int *,int *) ;
 int vkGetBufferMemoryRequirements (int ,int ,TYPE_1__*) ;
 int vkMapMemory (int ,int ,int ,size_t,int ,int *) ;
 int vulkan_find_memory_type (int *,int ,int) ;

struct vk_buffer vulkan_create_buffer(
      const struct vulkan_context *context,
      size_t size, VkBufferUsageFlags usage)
{
   struct vk_buffer buffer;
   VkMemoryRequirements mem_reqs;
   VkMemoryAllocateInfo alloc = { VK_STRUCTURE_TYPE_MEMORY_ALLOCATE_INFO };
   VkBufferCreateInfo info = { VK_STRUCTURE_TYPE_BUFFER_CREATE_INFO };

   info.size = size;
   info.usage = usage;
   info.sharingMode = VK_SHARING_MODE_EXCLUSIVE;
   vkCreateBuffer(context->device, &info, ((void*)0), &buffer.buffer);

   vkGetBufferMemoryRequirements(context->device, buffer.buffer, &mem_reqs);

   alloc.allocationSize = mem_reqs.size;
   alloc.memoryTypeIndex = vulkan_find_memory_type(
         &context->memory_properties,
         mem_reqs.memoryTypeBits,
         VK_MEMORY_PROPERTY_HOST_VISIBLE_BIT |
         VK_MEMORY_PROPERTY_HOST_COHERENT_BIT);
   vkAllocateMemory(context->device, &alloc, ((void*)0), &buffer.memory);
   vkBindBufferMemory(context->device, buffer.buffer, buffer.memory, 0);

   buffer.size = size;

   vkMapMemory(context->device,
         buffer.memory, 0, buffer.size, 0, &buffer.mapped);
   return buffer;
}
