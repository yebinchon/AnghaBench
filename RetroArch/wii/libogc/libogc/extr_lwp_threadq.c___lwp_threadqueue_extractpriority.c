
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_7__ ;
typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


typedef int u32 ;
typedef int lwp_thrqueue ;
struct TYPE_13__ {struct TYPE_13__* prev; struct TYPE_13__* next; } ;
typedef TYPE_2__ lwp_node ;
struct TYPE_15__ {TYPE_2__* last; TYPE_2__* first; } ;
struct TYPE_12__ {TYPE_7__ block2n; } ;
struct TYPE_14__ {int timer; TYPE_1__ wait; int cur_state; } ;
typedef TYPE_3__ lwp_cntrl ;


 int _CPU_ISR_Disable (int ) ;
 int _CPU_ISR_Restore (int ) ;
 TYPE_2__* __lwp_queue_head (TYPE_7__*) ;
 int __lwp_queue_isempty (TYPE_7__*) ;
 int __lwp_queue_onenode (TYPE_7__*) ;
 TYPE_2__* __lwp_queue_tail (TYPE_7__*) ;
 scalar_t__ __lwp_statewaitthreadqueue (int ) ;
 int __lwp_thread_unblock (TYPE_3__*) ;
 int __lwp_wd_deactivate (int *) ;
 int __lwp_wd_isactive (int *) ;
 int __lwp_wd_remove_ticks (int *) ;

void __lwp_threadqueue_extractpriority(lwp_thrqueue *queue,lwp_cntrl *thethread)
{
 u32 level;
 lwp_cntrl *first;
 lwp_node *curr,*next,*prev,*new_first,*new_sec,*last;

 curr = (lwp_node*)thethread;

 _CPU_ISR_Disable(level);
 if(__lwp_statewaitthreadqueue(thethread->cur_state)) {
  next = curr->next;
  prev = curr->prev;

  if(!__lwp_queue_isempty(&thethread->wait.block2n)) {
   new_first = thethread->wait.block2n.first;
   first = (lwp_cntrl*)new_first;
   last = thethread->wait.block2n.last;
   new_sec = new_first->next;

   prev->next = new_first;
   next->prev = new_first;
   new_first->next = next;
   new_first->prev = prev;

   if(!__lwp_queue_onenode(&thethread->wait.block2n)) {
    new_sec->prev = __lwp_queue_head(&first->wait.block2n);
    first->wait.block2n.first = new_sec;
    first->wait.block2n.last = last;
    last->next = __lwp_queue_tail(&first->wait.block2n);
   }
  } else {
   prev->next = next;
   next->prev = prev;
  }
  if(!__lwp_wd_isactive(&thethread->timer)) {
   _CPU_ISR_Restore(level);
   __lwp_thread_unblock(thethread);
  } else {
   __lwp_wd_deactivate(&thethread->timer);
   _CPU_ISR_Restore(level);
   __lwp_wd_remove_ticks(&thethread->timer);
   __lwp_thread_unblock(thethread);
  }
 } else
  _CPU_ISR_Restore(level);
}
