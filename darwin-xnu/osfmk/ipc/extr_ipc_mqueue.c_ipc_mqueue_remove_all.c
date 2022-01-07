
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct waitq_set {int dummy; } ;
typedef TYPE_1__* ipc_mqueue_t ;
struct TYPE_4__ {struct waitq_set imq_set_queue; } ;


 int assert (int ) ;
 int imq_lock (TYPE_1__*) ;
 int waitq_set_unlink_all_unlock (struct waitq_set*) ;
 int waitqs_is_set (struct waitq_set*) ;

void
ipc_mqueue_remove_all(ipc_mqueue_t mqueue)
{
 struct waitq_set *mq_setq = &mqueue->imq_set_queue;

 imq_lock(mqueue);
 assert(waitqs_is_set(mq_setq));
 waitq_set_unlink_all_unlock(mq_setq);

}
