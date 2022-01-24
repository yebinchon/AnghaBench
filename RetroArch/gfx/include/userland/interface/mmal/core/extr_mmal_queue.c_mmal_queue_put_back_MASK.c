#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {struct TYPE_8__* next; } ;
struct TYPE_7__ {int /*<<< orphan*/  lock; int /*<<< orphan*/  semaphore; TYPE_2__** last; TYPE_2__* first; int /*<<< orphan*/  length; } ;
typedef  TYPE_1__ MMAL_QUEUE_T ;
typedef  TYPE_2__ MMAL_BUFFER_HEADER_T ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

void FUNC4(MMAL_QUEUE_T *queue, MMAL_BUFFER_HEADER_T *buffer)
{
   if(!queue || !buffer) return;

   FUNC1(&queue->lock);
   FUNC0(queue, buffer);
   queue->length++;
   buffer->next = queue->first;
   queue->first = buffer;
   if(queue->last == &queue->first) queue->last = &buffer->next;
   FUNC3(&queue->semaphore);
   FUNC2(&queue->lock);
}