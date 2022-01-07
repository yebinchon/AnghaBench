
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int wait_queue; } ;
typedef TYPE_1__ mq_cntrl ;


 int LWP_MQ_STATUS_UNSATISFIED_NOWAIT ;
 int __lwp_threadqueue_flush (int *,int ) ;

void __lwpmq_flush_waitthreads(mq_cntrl *mqueue)
{
 __lwp_threadqueue_flush(&mqueue->wait_queue,LWP_MQ_STATUS_UNSATISFIED_NOWAIT);
}
