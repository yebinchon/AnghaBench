
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u32 ;
typedef int lwp_thrqueue ;
struct TYPE_4__ {int ret_code; } ;
struct TYPE_5__ {TYPE_1__ wait; } ;
typedef TYPE_2__ lwp_cntrl ;


 TYPE_2__* __lwp_threadqueue_dequeue (int *) ;

void __lwp_threadqueue_flush(lwp_thrqueue *queue,u32 status)
{
 lwp_cntrl *thethread;
 while((thethread=__lwp_threadqueue_dequeue(queue))) {
  thethread->wait.ret_code = status;
 }
}
