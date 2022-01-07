
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint64_t ;
typedef TYPE_1__* ipc_mqueue_t ;
struct TYPE_4__ {int imq_wait_queue; } ;


 int assert (int ) ;
 int imq_held (TYPE_1__*) ;
 int waitq_prepost_release_reserve (int ) ;
 int waitq_unlock (int *) ;

void
imq_release_and_unlock(ipc_mqueue_t mq, uint64_t reserved_prepost)
{
 assert(imq_held(mq));
 waitq_unlock(&mq->imq_wait_queue);
 waitq_prepost_release_reserve(reserved_prepost);
}
