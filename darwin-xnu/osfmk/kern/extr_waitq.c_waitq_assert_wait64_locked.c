
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_1__ ;


typedef int wait_timeout_urgency_t ;
typedef scalar_t__ wait_result_t ;
typedef int wait_interrupt_t ;
typedef int uint64_t ;
typedef TYPE_1__* thread_t ;
struct waitq_set {int dummy; } ;
struct waitq {uintptr_t waitq_eventmask; int waitq_fifo; } ;
typedef int spl_t ;
typedef struct waitq* event64_t ;
typedef int boolean_t ;
struct TYPE_8__ {scalar_t__ sched_pri; int options; int wait_timer_is_set; int wait_timer_active; int wait_timer; struct waitq* waitq; struct waitq* wait_event; scalar_t__ wait_result; int started; } ;


 scalar_t__ BASEPRI_REALTIME ;
 int FALSE ;
 struct waitq* NO_EVENT64 ;
 scalar_t__ THREAD_AWAKENED ;
 scalar_t__ THREAD_WAITING ;
 int TH_OPT_VMPRIV ;
 int TRUE ;
 int WQ_ITERATE_FOUND ;
 uintptr_t _CAST_TO_EVENT_MASK (struct waitq*) ;
 int assert (int) ;
 TYPE_1__* current_thread () ;
 int panic (char*,struct waitq*) ;
 int prepost_exists_cb ;
 int splsched () ;
 int splx (int ) ;
 int thread_lock (TYPE_1__*) ;
 scalar_t__ thread_mark_wait_locked (TYPE_1__*,int ) ;
 int thread_unlock (TYPE_1__*) ;
 int timer_call_enter_with_leeway (int *,int *,int ,int ,int ,int ) ;
 int turnstile_recompute_priority_locked (int ) ;
 int turnstile_update_inheritor_locked (int ) ;
 struct waitq* waitq_get_safeq (struct waitq*) ;
 int waitq_irq_safe (struct waitq*) ;
 scalar_t__ waitq_is_global (struct waitq*) ;
 scalar_t__ waitq_is_set (struct waitq*) ;
 scalar_t__ waitq_is_turnstile_queue (struct waitq*) ;
 int waitq_lock (struct waitq*) ;
 scalar_t__ waitq_set_maybe_preposted (struct waitq_set*) ;
 int waitq_stats_count_wait (struct waitq*) ;
 int waitq_thread_insert (struct waitq*,TYPE_1__*,int) ;
 int waitq_to_turnstile (struct waitq*) ;
 int waitq_unlock (struct waitq*) ;
 int wq_prepost_foreach_locked (struct waitq_set*,int *,int ) ;

wait_result_t waitq_assert_wait64_locked(struct waitq *waitq,
       event64_t wait_event,
       wait_interrupt_t interruptible,
       wait_timeout_urgency_t urgency,
       uint64_t deadline,
       uint64_t leeway,
       thread_t thread)
{
 wait_result_t wait_result;
 int realtime = 0;
 struct waitq *safeq;
 uintptr_t eventmask;
 spl_t s;






 assert(!thread->started || thread == current_thread());

 if (thread->waitq != ((void*)0))
  panic("thread already waiting on %p", thread->waitq);

 if (waitq_is_set(waitq)) {
  struct waitq_set *wqset = (struct waitq_set *)waitq;




  if (wait_event == NO_EVENT64 && waitq_set_maybe_preposted(wqset)) {
   int ret;





   ret = wq_prepost_foreach_locked(wqset, ((void*)0),
       prepost_exists_cb);
   if (ret == WQ_ITERATE_FOUND) {
    s = splsched();
    thread_lock(thread);
    thread->wait_result = THREAD_AWAKENED;
    thread_unlock(thread);
    splx(s);
    return THREAD_AWAKENED;
   }
  }
 }

 s = splsched();





 if (!waitq_irq_safe(waitq)) {
  safeq = waitq_get_safeq(waitq);
  eventmask = _CAST_TO_EVENT_MASK(waitq);
  waitq_lock(safeq);
 } else {
  safeq = waitq;
  eventmask = _CAST_TO_EVENT_MASK(wait_event);
 }


 thread_lock(thread);
 if (thread->sched_pri >= BASEPRI_REALTIME)
  realtime = 1;







 wait_result = thread_mark_wait_locked(thread, interruptible);

 if (wait_result == THREAD_WAITING) {

  if (!safeq->waitq_fifo
      || (thread->options & TH_OPT_VMPRIV) || realtime)
   waitq_thread_insert(safeq, thread, 0);
  else
   waitq_thread_insert(safeq, thread, 1);


  thread->wait_event = wait_event;
  thread->waitq = waitq;

  if (deadline != 0) {
   boolean_t act;

   act = timer_call_enter_with_leeway(&thread->wait_timer,
          ((void*)0),
          deadline, leeway,
          urgency, FALSE);
   if (!act)
    thread->wait_timer_active++;
   thread->wait_timer_is_set = TRUE;
  }

  if (waitq_is_global(safeq))
   safeq->waitq_eventmask |= eventmask;

  waitq_stats_count_wait(waitq);
 }


 thread_unlock(thread);


 if (waitq_is_turnstile_queue(safeq) && wait_result == THREAD_WAITING) {
  turnstile_recompute_priority_locked(waitq_to_turnstile(safeq));
  turnstile_update_inheritor_locked(waitq_to_turnstile(safeq));
 }


 if (safeq != waitq) {
  waitq_unlock(safeq);
 }

 splx(s);

 return wait_result;
}
