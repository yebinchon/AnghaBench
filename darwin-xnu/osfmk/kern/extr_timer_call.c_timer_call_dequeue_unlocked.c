
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


typedef TYPE_1__* timer_call_t ;
typedef int mpqueue_head_t ;
typedef TYPE_2__* call_entry_t ;
struct TYPE_12__ {TYPE_1__* queue; } ;
struct TYPE_11__ {int lock; scalar_t__ async_dequeue; } ;


 int DBG (char*,TYPE_1__*) ;
 int DBG_FUNC_NONE ;
 int DECR_TIMER_ASYNC_DEQ ;
 scalar_t__ FALSE ;
 int KDEBUG_TRACE ;
 int * MPQUEUE (TYPE_1__*) ;
 TYPE_2__* TCE (TYPE_1__*) ;
 int TIMER_KDEBUG_TRACE (int ,int,int ,scalar_t__,int ,int,int ) ;
 int VM_KERNEL_UNSLIDE_OR_PERM (TYPE_1__*) ;
 int simple_lock (int *) ;
 int simple_unlock (int *) ;
 int timer_call_dequeue_unlocked_async1 ;
 int timer_call_entry_dequeue (TYPE_1__*) ;
 int timer_longterm_dequeued_locked (TYPE_1__*) ;
 int * timer_longterm_queue ;
 int timer_queue_lock_spin (int *) ;
 int timer_queue_unlock (int *) ;

mpqueue_head_t *
timer_call_dequeue_unlocked(
 timer_call_t call)
{
 call_entry_t entry = TCE(call);
 mpqueue_head_t *old_queue;

 DBG("timer_call_dequeue_unlocked(%p)\n", call);

 simple_lock(&call->lock);
 old_queue = MPQUEUE(entry->queue);
 if (old_queue != ((void*)0)) {
  timer_queue_lock_spin(old_queue);
  if (call->async_dequeue) {
   call->async_dequeue = FALSE;
   entry->queue = ((void*)0);
  } else {
   timer_call_entry_dequeue(call);
  }
  if (old_queue == timer_longterm_queue)
   timer_longterm_dequeued_locked(call);
  timer_queue_unlock(old_queue);
 }
 simple_unlock(&call->lock);
 return (old_queue);
}
