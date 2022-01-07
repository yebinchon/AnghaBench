
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_4__ {int msq_buffers; int wait_queue; } ;
typedef TYPE_1__ mq_cntrl ;


 int __lwp_threadqueue_flush (int *,int ) ;
 int __lwp_wkspace_free (int ) ;
 int __lwpmq_flush_support (TYPE_1__*) ;

void __lwpmq_close(mq_cntrl *mqueue,u32 status)
{
 __lwp_threadqueue_flush(&mqueue->wait_queue,status);
 __lwpmq_flush_support(mqueue);
 __lwp_wkspace_free(mqueue->msq_buffers);
}
