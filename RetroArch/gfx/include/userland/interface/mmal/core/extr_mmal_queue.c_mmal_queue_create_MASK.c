#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int /*<<< orphan*/  lock; scalar_t__ first; scalar_t__* last; scalar_t__ length; int /*<<< orphan*/  semaphore; } ;
typedef  TYPE_1__ MMAL_QUEUE_T ;

/* Variables and functions */
 scalar_t__ VCOS_SUCCESS ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 TYPE_1__* FUNC2 (int,char*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 

MMAL_QUEUE_T *FUNC8(void)
{
   MMAL_QUEUE_T *queue;

   queue = FUNC2(sizeof(*queue), "MMAL queue");
   if(!queue) return 0;

   if(FUNC3(&queue->lock, "MMAL queue lock") != VCOS_SUCCESS )
   {
      FUNC1(queue);
      return 0;
   }

   if(FUNC7(&queue->semaphore, "MMAL queue sema", 0) != VCOS_SUCCESS )
   {
      FUNC4(&queue->lock);
      FUNC1(queue);
      return 0;
   }

   /* gratuitous lock for coverity */ FUNC5(&queue->lock);
   queue->length = 0;
   queue->first = 0;
   queue->last = &queue->first;
   FUNC0(queue, NULL);
   /* gratuitous unlock for coverity */ FUNC6(&queue->lock);

   return queue;
}