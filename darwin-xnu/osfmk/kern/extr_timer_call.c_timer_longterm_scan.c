
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_24__ TYPE_7__ ;
typedef struct TYPE_23__ TYPE_5__ ;
typedef struct TYPE_22__ TYPE_4__ ;
typedef struct TYPE_21__ TYPE_3__ ;
typedef struct TYPE_20__ TYPE_2__ ;
typedef struct TYPE_19__ TYPE_1__ ;
typedef struct TYPE_18__ TYPE_15__ ;
typedef struct TYPE_17__ TYPE_11__ ;


typedef scalar_t__ uint64_t ;
struct TYPE_21__ {int count; } ;
struct TYPE_20__ {scalar_t__ interval; scalar_t__ deadline; TYPE_5__* call; } ;
struct TYPE_22__ {scalar_t__ scan_limit; TYPE_3__ queue; int scan_pauses; TYPE_2__ threshold; int escalates; } ;
typedef TYPE_4__ timer_longterm_t ;
typedef TYPE_5__* timer_call_t ;
typedef int queue_entry_t ;
typedef int mpqueue_head_t ;
struct TYPE_24__ {int head; } ;
struct TYPE_19__ {TYPE_5__* lock_data; } ;
struct TYPE_17__ {TYPE_1__ interlock; } ;
struct TYPE_23__ {scalar_t__ soft_deadline; TYPE_11__ lock; } ;
struct TYPE_18__ {scalar_t__ deadline; scalar_t__ entry_time; int func; TYPE_5__* queue; } ;


 int DBG (char*,scalar_t__,int ) ;
 int DBG_FUNC_NONE ;
 int DECR_TIMER_ASYNC_DEQ ;
 int DECR_TIMER_ESCALATE ;
 int DECR_TIMER_OVERDUE ;
 int KDEBUG_TRACE ;
 TYPE_15__* TCE (TYPE_5__*) ;
 TYPE_5__* TIMER_CALL (int ) ;
 int TIMER_KDEBUG_TRACE (int ,int,scalar_t__,scalar_t__,scalar_t__,scalar_t__,int ) ;
 scalar_t__ TIMER_LONGTERM_NONE ;
 scalar_t__ TIMER_LONGTERM_SCAN_AGAIN ;
 scalar_t__ VM_KERNEL_UNSLIDE (int ) ;
 scalar_t__ VM_KERNEL_UNSLIDE_OR_PERM (TYPE_5__*) ;
 int assert (int) ;
 scalar_t__ cpu_number () ;
 scalar_t__ mach_absolute_time () ;
 scalar_t__ master_cpu ;
 int ml_get_interrupts_enabled () ;
 scalar_t__ queue_empty (int *) ;
 int queue_end (int *,int ) ;
 int queue_first (int *) ;
 int queue_next (int ) ;
 int simple_lock_try (TYPE_11__*) ;
 int simple_unlock (TYPE_11__*) ;
 int timer_call_entry_dequeue (TYPE_5__*) ;
 int timer_call_entry_dequeue_async (TYPE_5__*) ;
 int timer_call_entry_enqueue_deadline (TYPE_5__*,int *,scalar_t__) ;
 TYPE_7__* timer_longterm_queue ;
 int timer_queue_assign (scalar_t__) ;
 int * timer_queue_cpu (scalar_t__) ;
 int timer_queue_lock_spin (int *) ;
 int timer_queue_unlock (int *) ;

void
timer_longterm_scan(timer_longterm_t *tlp,
      uint64_t time_start)
{
 queue_entry_t qe;
 timer_call_t call;
 uint64_t threshold;
 uint64_t deadline;
 uint64_t time_limit = time_start + tlp->scan_limit;
 mpqueue_head_t *timer_master_queue;

 assert(!ml_get_interrupts_enabled());
 assert(cpu_number() == master_cpu);

 if (tlp->threshold.interval != TIMER_LONGTERM_NONE)
  threshold = time_start + tlp->threshold.interval;

 tlp->threshold.deadline = TIMER_LONGTERM_NONE;
 tlp->threshold.call = ((void*)0);

 if (queue_empty(&timer_longterm_queue->head))
  return;

 timer_master_queue = timer_queue_cpu(master_cpu);
 timer_queue_lock_spin(timer_master_queue);

 qe = queue_first(&timer_longterm_queue->head);
 while (!queue_end(&timer_longterm_queue->head, qe)) {
  call = TIMER_CALL(qe);
  deadline = call->soft_deadline;
  qe = queue_next(qe);
  if (!simple_lock_try(&call->lock)) {
   timer_call_entry_dequeue_async(call);
   continue;
  }
  if (deadline < threshold) {
   TIMER_KDEBUG_TRACE(KDEBUG_TRACE,
            DECR_TIMER_ESCALATE | DBG_FUNC_NONE,
    VM_KERNEL_UNSLIDE_OR_PERM(call),
    TCE(call)->deadline,
    TCE(call)->entry_time,
    VM_KERNEL_UNSLIDE(TCE(call)->func),
    0);
   tlp->escalates++;
   timer_call_entry_dequeue(call);
   timer_call_entry_enqueue_deadline(
    call, timer_master_queue, TCE(call)->deadline);




   (void) timer_queue_assign(deadline);
  } else {
   if (deadline < tlp->threshold.deadline) {
    tlp->threshold.deadline = deadline;
    tlp->threshold.call = call;
   }
  }
  simple_unlock(&call->lock);


  if (mach_absolute_time() > time_limit) {
   tlp->threshold.deadline = TIMER_LONGTERM_SCAN_AGAIN;
   tlp->scan_pauses++;
   DBG("timer_longterm_scan() paused %llu, qlen: %llu\n",
       time_limit, tlp->queue.count);
   break;
  }
 }

 timer_queue_unlock(timer_master_queue);
}
