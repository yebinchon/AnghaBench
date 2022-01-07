
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u32 ;
typedef int lwp_thrqueue ;
struct TYPE_5__ {int node; } ;
struct TYPE_6__ {int timer; TYPE_1__ object; int cur_state; } ;
typedef TYPE_2__ lwp_cntrl ;


 int _CPU_ISR_Disable (int ) ;
 int _CPU_ISR_Restore (int ) ;
 int __lwp_queue_extractI (int *) ;
 int __lwp_statewaitthreadqueue (int ) ;
 int __lwp_thread_unblock (TYPE_2__*) ;
 int __lwp_wd_deactivate (int *) ;
 int __lwp_wd_isactive (int *) ;
 int __lwp_wd_remove_ticks (int *) ;

void __lwp_threadqueue_extractfifo(lwp_thrqueue *queue,lwp_cntrl *thethread)
{
 u32 level;

 _CPU_ISR_Disable(level);
 if(!__lwp_statewaitthreadqueue(thethread->cur_state)) {
  _CPU_ISR_Restore(level);
  return;
 }

 __lwp_queue_extractI(&thethread->object.node);
 if(!__lwp_wd_isactive(&thethread->timer)) {
  _CPU_ISR_Restore(level);
 } else {
  __lwp_wd_deactivate(&thethread->timer);
  _CPU_ISR_Restore(level);
  __lwp_wd_remove_ticks(&thethread->timer);
 }
 __lwp_thread_unblock(thethread);
}
