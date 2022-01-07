
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_8__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef scalar_t__ uint64_t ;
typedef int uint32_t ;
struct TYPE_10__ {scalar_t__ interval; scalar_t__ deadline; scalar_t__ preempted; TYPE_3__* call; } ;
struct TYPE_11__ {TYPE_1__ threshold; int enqueues; } ;
typedef TYPE_2__ timer_longterm_t ;
typedef TYPE_3__* timer_call_t ;
typedef int timer_call_param_t ;
typedef int mpqueue_head_t ;
typedef scalar_t__ boolean_t ;
struct TYPE_13__ {int param1; scalar_t__ deadline; } ;
struct TYPE_12__ {int flags; int lock; scalar_t__ soft_deadline; scalar_t__ ttd; } ;


 scalar_t__ FALSE ;
 TYPE_8__* TCE (TYPE_3__*) ;
 int TIMER_CALL_LOCAL ;
 scalar_t__ TIMER_LONGTERM_NONE ;
 scalar_t__ TRUE ;
 int assert (int) ;
 int master_cpu ;
 int ml_get_interrupts_enabled () ;
 int simple_lock (int *) ;
 int simple_unlock (int *) ;
 int * timer_call_dequeue_unlocked (TYPE_3__*) ;
 int timer_call_entry_enqueue_tail (TYPE_3__*,int *) ;
 int timer_call_nosync_cpu (int ,void (*) (void*),void*) ;
 TYPE_2__ timer_longterm ;
 int * timer_longterm_queue ;
 scalar_t__ timer_longterm_update ;
 int timer_queue_lock_spin (int *) ;
 int timer_queue_unlock (int *) ;

mpqueue_head_t *
timer_longterm_enqueue_unlocked(timer_call_t call,
    uint64_t now,
    uint64_t deadline,
    mpqueue_head_t **old_queue,
    uint64_t soft_deadline,
    uint64_t ttd,
    timer_call_param_t param1,
    uint32_t callout_flags)
{
 timer_longterm_t *tlp = &timer_longterm;
 boolean_t update_required = FALSE;
 uint64_t longterm_threshold;

 longterm_threshold = now + tlp->threshold.interval;







 if ((callout_flags & TIMER_CALL_LOCAL) != 0 ||
     (tlp->threshold.interval == TIMER_LONGTERM_NONE) ||
  (deadline <= longterm_threshold))
  return ((void*)0);




 *old_queue = timer_call_dequeue_unlocked(call);





 assert(!ml_get_interrupts_enabled());
 simple_lock(&call->lock);
 timer_queue_lock_spin(timer_longterm_queue);
 TCE(call)->deadline = deadline;
 TCE(call)->param1 = param1;
 call->ttd = ttd;
 call->soft_deadline = soft_deadline;
 call->flags = callout_flags;
 timer_call_entry_enqueue_tail(call, timer_longterm_queue);

 tlp->enqueues++;





 if (deadline < tlp->threshold.deadline &&
     deadline < tlp->threshold.preempted) {
  tlp->threshold.preempted = deadline;
  tlp->threshold.call = call;
  update_required = TRUE;
 }
 timer_queue_unlock(timer_longterm_queue);
 simple_unlock(&call->lock);

 if (update_required) {




  timer_call_nosync_cpu(
   master_cpu,
   (void (*)(void *)) timer_longterm_update,
   (void *)tlp);
 }

 return timer_longterm_queue;
}
