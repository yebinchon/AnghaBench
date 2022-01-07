
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_25__ TYPE_3__ ;
typedef struct TYPE_24__ TYPE_2__ ;
typedef struct TYPE_23__ TYPE_1__ ;
typedef struct TYPE_22__ TYPE_17__ ;
typedef struct TYPE_21__ TYPE_12__ ;


typedef TYPE_2__* timer_call_t ;
struct TYPE_25__ {int earliest_soft_deadline; int head; } ;
typedef TYPE_3__ mpqueue_head_t ;
struct TYPE_23__ {TYPE_2__* lock_data; } ;
struct TYPE_21__ {TYPE_1__ interlock; } ;
struct TYPE_24__ {int flags; TYPE_12__ lock; } ;
struct TYPE_22__ {scalar_t__ deadline; TYPE_2__* queue; } ;


 int DBG (char*,TYPE_3__*,TYPE_3__*) ;
 int DBG_FUNC_NONE ;
 int DECR_TIMER_ASYNC_DEQ ;
 int KDEBUG_TRACE ;
 TYPE_17__* TCE (TYPE_2__*) ;
 TYPE_2__* TIMER_CALL (int ) ;
 int TIMER_CALL_LOCAL ;
 int TIMER_KDEBUG_TRACE (int ,int,int ,int ,int ,int,int ) ;
 int UINT64_MAX ;
 int VM_KERNEL_UNSLIDE_OR_PERM (TYPE_2__*) ;
 int assert (int) ;
 int ml_get_interrupts_enabled () ;
 int qe (TYPE_2__*) ;
 scalar_t__ queue_empty (int *) ;
 int queue_end (int *,int ) ;
 int queue_first (int *) ;
 int queue_next (int ) ;
 scalar_t__ serverperfmode ;
 int simple_lock_try (TYPE_12__*) ;
 int simple_unlock (TYPE_12__*) ;
 int timer_call_entry_dequeue (TYPE_2__*) ;
 int timer_call_entry_dequeue_async (TYPE_2__*) ;
 int timer_call_entry_enqueue_deadline (TYPE_2__*,TYPE_3__*,scalar_t__) ;
 int timer_queue_lock_spin (TYPE_3__*) ;
 int timer_queue_migrate_lock_skips ;
 int timer_queue_unlock (TYPE_3__*) ;

int
timer_queue_migrate(mpqueue_head_t *queue_from, mpqueue_head_t *queue_to)
{
 timer_call_t call;
 timer_call_t head_to;
 int timers_migrated = 0;

 DBG("timer_queue_migrate(%p,%p)\n", queue_from, queue_to);

 assert(!ml_get_interrupts_enabled());
 assert(queue_from != queue_to);

 if (serverperfmode) {






  return -4;
 }
        timer_queue_lock_spin(queue_to);

 head_to = TIMER_CALL(queue_first(&queue_to->head));
 if (queue_empty(&queue_to->head)) {
  timers_migrated = -1;
  goto abort1;
 }

        timer_queue_lock_spin(queue_from);

 if (queue_empty(&queue_from->head)) {
  timers_migrated = -2;
  goto abort2;
 }

 call = TIMER_CALL(queue_first(&queue_from->head));
 if (TCE(call)->deadline < TCE(head_to)->deadline) {
  timers_migrated = 0;
  goto abort2;
 }


 do {
  if (call->flags & TIMER_CALL_LOCAL) {
   timers_migrated = -3;
   goto abort2;
  }
  call = TIMER_CALL(queue_next(qe(call)));
 } while (!queue_end(&queue_from->head, qe(call)));


 while (!queue_empty(&queue_from->head)) {
  call = TIMER_CALL(queue_first(&queue_from->head));
  if (!simple_lock_try(&call->lock)) {
   timer_queue_migrate_lock_skips++;
   timer_call_entry_dequeue_async(call);
   continue;
  }
  timer_call_entry_dequeue(call);
  timer_call_entry_enqueue_deadline(
   call, queue_to, TCE(call)->deadline);
  timers_migrated++;
  simple_unlock(&call->lock);
 }
 queue_from->earliest_soft_deadline = UINT64_MAX;
abort2:
        timer_queue_unlock(queue_from);
abort1:
        timer_queue_unlock(queue_to);

 return timers_migrated;
}
