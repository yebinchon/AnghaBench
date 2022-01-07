
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int mqbox_t ;
struct TYPE_4__ {int mqueue; } ;
typedef TYPE_1__ mqbox_st ;


 int __lwp_mqbox_free (TYPE_1__*) ;
 TYPE_1__* __lwp_mqbox_open (int ) ;
 int __lwp_thread_dispatchenable () ;
 int __lwpmq_close (int *,int ) ;

void MQ_Close(mqbox_t mqbox)
{
 mqbox_st *mbox;

 mbox = __lwp_mqbox_open(mqbox);
 if(!mbox) return;

 __lwpmq_close(&mbox->mqueue,0);
 __lwp_thread_dispatchenable();

 __lwp_mqbox_free(mbox);
}
