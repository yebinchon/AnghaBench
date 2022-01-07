
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_6__ ;
typedef struct TYPE_15__ TYPE_5__ ;
typedef struct TYPE_14__ TYPE_4__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


typedef int u64 ;
typedef int u32 ;
struct TYPE_11__ {int fifo; } ;
struct TYPE_15__ {int sync_state; TYPE_1__ queues; } ;
typedef TYPE_5__ lwp_thrqueue ;
struct TYPE_14__ {TYPE_3__* queue; int ret_code; } ;
struct TYPE_12__ {int node; } ;
struct TYPE_16__ {int timer; TYPE_4__ wait; TYPE_2__ object; } ;
typedef TYPE_6__ lwp_cntrl ;
struct TYPE_13__ {int timeout_state; } ;






 int _CPU_ISR_Disable (int) ;
 int _CPU_ISR_Restore (int) ;
 int __lwp_queue_appendI (int *,int *) ;
 int __lwp_thread_unblock (TYPE_6__*) ;
 int __lwp_wd_deactivate (int *) ;
 int __lwp_wd_isactive (int *) ;
 int __lwp_wd_remove_ticks (int *) ;
 int printf (char*,TYPE_6__*,int) ;

void __lwp_threadqueue_enqueuefifo(lwp_thrqueue *queue,lwp_cntrl *thethread,u64 timeout)
{
 u32 level,sync_state;

 _CPU_ISR_Disable(level);

 sync_state = queue->sync_state;
 queue->sync_state = 129;



 switch(sync_state) {
  case 129:
   break;
  case 131:
   __lwp_queue_appendI(&queue->queues.fifo,&thethread->object.node);
   _CPU_ISR_Restore(level);
   return;
  case 128:
   thethread->wait.ret_code = thethread->wait.queue->timeout_state;
   _CPU_ISR_Restore(level);
   break;
  case 130:
   if(__lwp_wd_isactive(&thethread->timer)) {
    __lwp_wd_deactivate(&thethread->timer);
    _CPU_ISR_Restore(level);
    __lwp_wd_remove_ticks(&thethread->timer);
   } else
    _CPU_ISR_Restore(level);

   break;
 }
 __lwp_thread_unblock(thethread);
}
