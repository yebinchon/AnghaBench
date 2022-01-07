
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint64_t ;
typedef TYPE_1__* ipc_mqueue_t ;
struct TYPE_3__ {int imq_wait_queue; } ;


 int WAITQ_KEEP_LOCKED ;
 int waitq_prepost_reserve (int *,int ,int ) ;

void
imq_reserve_and_lock(ipc_mqueue_t mq, uint64_t *reserved_prepost)
{
 *reserved_prepost = waitq_prepost_reserve(&mq->imq_wait_queue, 0,
        WAITQ_KEEP_LOCKED);

}
