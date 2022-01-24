#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct vulkan_context {int /*<<< orphan*/  device; int /*<<< orphan*/  memory_properties; } ;
struct vk_buffer {size_t size; int /*<<< orphan*/  mapped; int /*<<< orphan*/  memory; int /*<<< orphan*/  buffer; } ;
struct TYPE_7__ {int /*<<< orphan*/  memoryTypeBits; int /*<<< orphan*/  size; } ;
typedef  TYPE_1__ VkMemoryRequirements ;
struct TYPE_8__ {int /*<<< orphan*/  memoryTypeIndex; int /*<<< orphan*/  allocationSize; int /*<<< orphan*/  member_0; } ;
typedef  TYPE_2__ VkMemoryAllocateInfo ;
typedef  int /*<<< orphan*/  VkBufferUsageFlags ;
struct TYPE_9__ {size_t size; int /*<<< orphan*/  sharingMode; int /*<<< orphan*/  usage; int /*<<< orphan*/  member_0; } ;
typedef  TYPE_3__ VkBufferCreateInfo ;

/* Variables and functions */
 int VK_MEMORY_PROPERTY_HOST_COHERENT_BIT ; 
 int VK_MEMORY_PROPERTY_HOST_VISIBLE_BIT ; 
 int /*<<< orphan*/  VK_SHARING_MODE_EXCLUSIVE ; 
 int /*<<< orphan*/  VK_STRUCTURE_TYPE_BUFFER_CREATE_INFO ; 
 int /*<<< orphan*/  VK_STRUCTURE_TYPE_MEMORY_ALLOCATE_INFO ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,TYPE_2__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,TYPE_3__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,size_t,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 

struct vk_buffer FUNC6(
      const struct vulkan_context *context,
      size_t size, VkBufferUsageFlags usage)
{
   struct vk_buffer buffer;
   VkMemoryRequirements mem_reqs;
   VkMemoryAllocateInfo alloc = { VK_STRUCTURE_TYPE_MEMORY_ALLOCATE_INFO };
   VkBufferCreateInfo info    = { VK_STRUCTURE_TYPE_BUFFER_CREATE_INFO };

   info.size                  = size;
   info.usage                 = usage;
   info.sharingMode           = VK_SHARING_MODE_EXCLUSIVE;
   FUNC2(context->device, &info, NULL, &buffer.buffer);

   FUNC3(context->device, buffer.buffer, &mem_reqs);

   alloc.allocationSize       = mem_reqs.size;
   alloc.memoryTypeIndex      = FUNC5(
         &context->memory_properties,
         mem_reqs.memoryTypeBits,
         VK_MEMORY_PROPERTY_HOST_VISIBLE_BIT |
         VK_MEMORY_PROPERTY_HOST_COHERENT_BIT);
   FUNC0(context->device, &alloc, NULL, &buffer.memory);
   FUNC1(context->device, buffer.buffer, buffer.memory, 0);

   buffer.size = size;

   FUNC4(context->device,
         buffer.memory, 0, buffer.size, 0, &buffer.mapped);
   return buffer;
}