#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct vulkan_context {int dummy; } ;
struct vk_buffer_node {int /*<<< orphan*/  buffer; } ;
typedef  int /*<<< orphan*/  VkBufferUsageFlags ;

/* Variables and functions */
 scalar_t__ FUNC0 (int,int) ; 
 int /*<<< orphan*/  FUNC1 (struct vulkan_context const*,size_t,int /*<<< orphan*/ ) ; 

__attribute__((used)) static struct vk_buffer_node *FUNC2(
      const struct vulkan_context *context,
      size_t size, VkBufferUsageFlags usage)
{
   struct vk_buffer_node *node = (struct vk_buffer_node*)
      FUNC0(1, sizeof(*node));
   if (!node)
      return NULL;

   node->buffer = FUNC1(
         context, size, usage);
   return node;
}