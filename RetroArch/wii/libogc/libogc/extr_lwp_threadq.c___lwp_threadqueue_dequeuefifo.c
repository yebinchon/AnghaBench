
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_8__ {int fifo; } ;
struct TYPE_9__ {int sync_state; TYPE_1__ queues; } ;
typedef TYPE_2__ lwp_thrqueue ;
struct TYPE_10__ {int timer; } ;
typedef TYPE_3__ lwp_cntrl ;






 int _CPU_ISR_Disable (int ) ;
 int _CPU_ISR_Restore (int ) ;
 scalar_t__ __lwp_queue_firstnodeI (int *) ;
 int __lwp_queue_isempty (int *) ;
 int __lwp_thread_unblock (TYPE_3__*) ;
 int __lwp_wd_deactivate (int *) ;
 int __lwp_wd_isactive (int *) ;
 int __lwp_wd_remove_ticks (int *) ;
 TYPE_3__* _thr_executing ;

lwp_cntrl* __lwp_threadqueue_dequeuefifo(lwp_thrqueue *queue)
{
 u32 level;
 lwp_cntrl *ret;

 _CPU_ISR_Disable(level);
 if(!__lwp_queue_isempty(&queue->queues.fifo)) {
  ret = (lwp_cntrl*)__lwp_queue_firstnodeI(&queue->queues.fifo);
  if(!__lwp_wd_isactive(&ret->timer)) {
   _CPU_ISR_Restore(level);
   __lwp_thread_unblock(ret);
  } else {
   __lwp_wd_deactivate(&ret->timer);
   _CPU_ISR_Restore(level);
   __lwp_wd_remove_ticks(&ret->timer);
   __lwp_thread_unblock(ret);
  }
  return ret;
 }

 switch(queue->sync_state) {
  case 129:
  case 130:
   _CPU_ISR_Restore(level);
   return ((void*)0);
  case 131:
  case 128:
   queue->sync_state = 130;
   _CPU_ISR_Restore(level);
   return _thr_executing;
 }
 return ((void*)0);
}
