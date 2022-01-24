#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {struct TYPE_5__* next; } ;
typedef  TYPE_1__ VCOS_MSG_T ;
struct TYPE_6__ {int /*<<< orphan*/  lock; int /*<<< orphan*/  sem; int /*<<< orphan*/ * tail; TYPE_1__* head; } ;
typedef  TYPE_2__ VCOS_MSGQUEUE_T ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

VCOS_MSG_T *FUNC3(VCOS_MSGQUEUE_T *queue)
{
   VCOS_MSG_T *msg;
   FUNC0(&queue->lock);

   msg = queue->head;

   /* if there's a message, remove it from the queue */
   if (msg)
   {
      queue->head = msg->next;
      if (queue->head == NULL)
         queue->tail = NULL;

      /* keep the semaphore count consistent */

      /* coverity[lock_order]
       * the semaphore must have a non-zero count so cannot block here.
       */
      FUNC2(&queue->sem);
   }

   FUNC1(&queue->lock);
   return msg;
}