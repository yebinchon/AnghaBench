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
struct TYPE_7__ {int /*<<< orphan*/  lock; int /*<<< orphan*/  semaphore; TYPE_2__** last; int /*<<< orphan*/  length; } ;
typedef  TYPE_1__ MMAL_QUEUE_T ;
typedef  TYPE_2__ MMAL_BUFFER_HEADER_T ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

void FUNC5(MMAL_QUEUE_T *queue, MMAL_BUFFER_HEADER_T *buffer)
{
   FUNC1(queue && buffer);
   if(!queue || !buffer) return;

   FUNC2(&queue->lock);
   FUNC0(queue, buffer);
   queue->length++;
   *queue->last = buffer;
   buffer->next = 0;
   queue->last = &buffer->next;
   // There is a possible advantage to putting the semaphore_post outside
   // the lock as that would avoid the case where we set the semaphore, causing
   // a task switch to a waiting get thread which then blocks because we still
   // have the lock.  However this allows a race condition if we have (legit) code
   // of the (simplified) form:
   // if (mmal_queue_length(q) > 0) b = mmal_queue_get(q);
   // where the _get should always succeed
   // This has an easy fix if we have a fn that returns the count in a semaphore
   // but by not all OSs support that (e.g. Win32)
   FUNC4(&queue->semaphore);
   FUNC3(&queue->lock);
}