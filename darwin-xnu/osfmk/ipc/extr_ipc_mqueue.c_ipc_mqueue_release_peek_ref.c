
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


typedef TYPE_1__* ipc_mqueue_t ;
struct TYPE_7__ {int imq_wait_queue; } ;


 int assert (int) ;
 int imq_held (TYPE_1__*) ;
 int imq_is_set (TYPE_1__*) ;
 int imq_unlock (TYPE_1__*) ;
 int ip_release_mq (TYPE_1__*) ;
 int waitq_clear_prepost_locked (int *) ;

void ipc_mqueue_release_peek_ref(ipc_mqueue_t mq)
{
 assert(!imq_is_set(mq));
 assert(imq_held(mq));





 waitq_clear_prepost_locked(&mq->imq_wait_queue);

 imq_unlock(mq);





 ip_release_mq(mq);
}
