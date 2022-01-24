#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct queue_elem {int dummy; } ;
struct TYPE_4__ {size_t size; int ptr; struct queue_elem** elems; } ;
typedef  TYPE_1__ msg_queue_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (int,int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 

msg_queue_t *FUNC2(size_t size)
{
   struct queue_elem **elems = NULL;
   msg_queue_t *queue        = (msg_queue_t*)FUNC0(1, sizeof(*queue));

   if (!queue)
      return NULL;

   queue->size = size + 1;

   elems = (struct queue_elem**)FUNC0(queue->size,
         sizeof(struct queue_elem*));

   if (!elems)
   {
      FUNC1(queue);
      return NULL;
   }

   queue->elems = elems;
   queue->ptr   = 1;

   return queue;
}