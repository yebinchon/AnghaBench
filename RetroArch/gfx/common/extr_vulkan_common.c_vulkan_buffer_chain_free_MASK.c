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
struct vk_buffer_node {int /*<<< orphan*/  buffer; struct vk_buffer_node* next; } ;
struct vk_buffer_chain {struct vk_buffer_node* head; } ;
typedef  int /*<<< orphan*/  VkDevice ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct vk_buffer_node*) ; 
 int /*<<< orphan*/  FUNC1 (struct vk_buffer_chain*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

void FUNC3(
      VkDevice device,
      struct vk_buffer_chain *chain)
{
   struct vk_buffer_node *node = chain->head;
   while (node)
   {
      struct vk_buffer_node *next = node->next;
      FUNC2(device, &node->buffer);

      FUNC0(node);
      node = next;
   }
   FUNC1(chain, 0, sizeof(*chain));
}