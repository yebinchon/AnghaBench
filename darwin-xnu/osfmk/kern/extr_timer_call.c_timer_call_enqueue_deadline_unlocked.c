
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


typedef void* uint64_t ;
typedef int uint32_t ;
typedef TYPE_1__* timer_call_t ;
typedef int timer_call_param_t ;
typedef int mpqueue_head_t ;
typedef TYPE_2__* call_entry_t ;
struct TYPE_13__ {int param1; TYPE_1__* queue; } ;
struct TYPE_12__ {int lock; void* ttd; int flags; void* soft_deadline; scalar_t__ async_dequeue; } ;


 int DBG (char*,TYPE_1__*,int *) ;
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
 int timer_call_enqueue_deadline_unlocked_async1 ;
 int timer_call_enqueue_deadline_unlocked_async2 ;
 int timer_call_entry_dequeue (TYPE_1__*) ;
 int timer_call_entry_enqueue_deadline (TYPE_1__*,int *,void*) ;
 int timer_longterm_dequeued_locked (TYPE_1__*) ;
 int * timer_longterm_queue ;
 int timer_queue_lock_spin (int *) ;
 int timer_queue_unlock (int *) ;

__inline__ mpqueue_head_t *
timer_call_enqueue_deadline_unlocked(
 timer_call_t call,
 mpqueue_head_t *queue,
 uint64_t deadline,
 uint64_t soft_deadline,
 uint64_t ttd,
 timer_call_param_t param1,
 uint32_t callout_flags)
{
 call_entry_t entry = TCE(call);
 mpqueue_head_t *old_queue;

 DBG("timer_call_enqueue_deadline_unlocked(%p,%p,)\n", call, queue);

 simple_lock(&call->lock);

 old_queue = MPQUEUE(entry->queue);

 if (old_queue != ((void*)0)) {
  timer_queue_lock_spin(old_queue);
  if (call->async_dequeue) {
   call->async_dequeue = FALSE;
   entry->queue = ((void*)0);
  } else if (old_queue != queue) {
   timer_call_entry_dequeue(call);



  }
  if (old_queue == timer_longterm_queue)
   timer_longterm_dequeued_locked(call);
  if (old_queue != queue) {
   timer_queue_unlock(old_queue);
   timer_queue_lock_spin(queue);
  }
 } else {
  timer_queue_lock_spin(queue);
 }

 call->soft_deadline = soft_deadline;
 call->flags = callout_flags;
 TCE(call)->param1 = param1;
 call->ttd = ttd;

 timer_call_entry_enqueue_deadline(call, queue, deadline);
 timer_queue_unlock(queue);
 simple_unlock(&call->lock);

 return (old_queue);
}
