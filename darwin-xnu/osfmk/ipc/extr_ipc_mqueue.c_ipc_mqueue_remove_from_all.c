
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct waitq {int dummy; } ;
typedef int kern_return_t ;
typedef TYPE_1__* ipc_mqueue_t ;
struct TYPE_4__ {struct waitq imq_wait_queue; } ;


 int assert (int ) ;
 int imq_lock (TYPE_1__*) ;
 int waitq_unlink_all_unlock (struct waitq*) ;
 int waitq_valid (struct waitq*) ;

void
ipc_mqueue_remove_from_all(ipc_mqueue_t mqueue)
{
 struct waitq *mq_waitq = &mqueue->imq_wait_queue;
 kern_return_t kr;

 imq_lock(mqueue);

 assert(waitq_valid(mq_waitq));
 kr = waitq_unlink_all_unlock(mq_waitq);

}
