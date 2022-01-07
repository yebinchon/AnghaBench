
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {struct TYPE_6__* next; } ;
typedef TYPE_1__ VCOS_MSG_T ;
struct TYPE_7__ {int lock; int * tail; TYPE_1__* head; int sem; } ;
typedef TYPE_2__ VCOS_MSGQUEUE_T ;


 int vcos_assert (TYPE_1__*) ;
 int vcos_mutex_lock (int *) ;
 int vcos_mutex_unlock (int *) ;
 int vcos_semaphore_wait (int *) ;

VCOS_MSG_T *vcos_msg_wait(VCOS_MSGQUEUE_T *queue)
{
   VCOS_MSG_T *msg;
   vcos_semaphore_wait(&queue->sem);
   vcos_mutex_lock(&queue->lock);

   msg = queue->head;
   vcos_assert(msg);

   queue->head = msg->next;
   if (queue->head == ((void*)0))
      queue->tail = ((void*)0);

   vcos_mutex_unlock(&queue->lock);
   return msg;
}
