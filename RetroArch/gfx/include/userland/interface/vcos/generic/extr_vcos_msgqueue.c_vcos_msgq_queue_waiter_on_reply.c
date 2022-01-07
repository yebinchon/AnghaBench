
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int VCOS_MSG_WAITER_T ;
typedef int VCOS_MSG_T ;
struct TYPE_3__ {int sem; } ;
typedef TYPE_1__ VCOS_MSGQUEUE_T ;


 int msgq_append (TYPE_1__*,int *) ;
 int vcos_semaphore_post (int *) ;

__attribute__((used)) static void vcos_msgq_queue_waiter_on_reply(VCOS_MSG_WAITER_T *waiter,
                                            VCOS_MSG_T *msg)
{
   VCOS_MSGQUEUE_T *queue = (VCOS_MSGQUEUE_T*)waiter;
   msgq_append(queue, msg);
   vcos_semaphore_post(&queue->sem);
}
