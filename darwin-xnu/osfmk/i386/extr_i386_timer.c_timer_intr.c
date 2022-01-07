
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef scalar_t__ uint64_t ;
struct TYPE_11__ {scalar_t__ earliest_soft_deadline; } ;
struct TYPE_8__ {scalar_t__ deadline; int has_expired; scalar_t__ when_set; TYPE_4__ queue; } ;
typedef TYPE_1__ rtclock_timer_t ;
typedef int int64_t ;
struct TYPE_9__ {scalar_t__ quantum_timer_deadline; TYPE_1__ rtclock_timer; } ;
typedef TYPE_2__ cpu_data_t ;
typedef int boolean_t ;
struct TYPE_10__ {int rtcDeadline; } ;


 int DBG_FUNC_END ;
 int DBG_FUNC_NONE ;
 int DBG_FUNC_START ;
 int DECR_PM_DEADLINE ;
 int DECR_TRAP_LATENCY ;
 int EndOfAllTime ;
 int FALSE ;
 int KDEBUG_TRACE ;
 int KERNEL_DEBUG_CONSTANT_IST (int ,int,int ,scalar_t__,int,int ,int ) ;
 scalar_t__ MAX (scalar_t__,scalar_t__) ;
 int SCHED_STATS_TIMER_POP (int ) ;
 int TCOAL_DEBUG (int,scalar_t__,scalar_t__,scalar_t__,int ,int ) ;
 void* TRUE ;
 scalar_t__ VM_KERNEL_UNSLIDE (scalar_t__) ;
 scalar_t__ __improbable (int) ;
 TYPE_2__* current_cpu_datap () ;
 int current_processor () ;
 scalar_t__ mach_absolute_time () ;
 int pmCPUDeadline (TYPE_2__*) ;
 scalar_t__ pmCPUGetDeadline (TYPE_2__*) ;
 int quantum_timer_expire (scalar_t__) ;
 int spurious_timers ;
 scalar_t__ timer_queue_expire (TYPE_4__*,scalar_t__) ;
 int timer_resync_deadlines () ;
 TYPE_3__* x86_lcpu () ;

void
timer_intr(int user_mode,
     uint64_t rip)
{
 uint64_t abstime;
 rtclock_timer_t *mytimer;
 cpu_data_t *pp;
 int64_t latency;
 uint64_t pmdeadline;
 boolean_t timer_processed = FALSE;

 pp = current_cpu_datap();

 SCHED_STATS_TIMER_POP(current_processor());

 abstime = mach_absolute_time();


 mytimer = &pp->rtclock_timer;

 if ((timer_processed = ((mytimer->deadline <= abstime) ||
      (abstime >= (mytimer->queue.earliest_soft_deadline))))) {






  latency = (int64_t) (abstime - MAX(mytimer->deadline,
         mytimer->when_set));



  if (latency < 0) {
   TCOAL_DEBUG(0xEEEE0000, abstime, mytimer->queue.earliest_soft_deadline, abstime - mytimer->queue.earliest_soft_deadline, 0, 0);
   latency = 0;
  }

  KERNEL_DEBUG_CONSTANT_IST(KDEBUG_TRACE,
   DECR_TRAP_LATENCY | DBG_FUNC_NONE,
   -latency,
   ((user_mode != 0) ? rip : VM_KERNEL_UNSLIDE(rip)),
   user_mode, 0, 0);

  mytimer->has_expired = TRUE;
  mytimer->deadline = timer_queue_expire(&mytimer->queue, abstime);
  mytimer->has_expired = FALSE;


  abstime = mach_absolute_time();
  mytimer->when_set = abstime;
 }


 if ((pmdeadline = pmCPUGetDeadline(pp)) && (pmdeadline <= abstime)) {
  KERNEL_DEBUG_CONSTANT_IST(KDEBUG_TRACE,
   DECR_PM_DEADLINE | DBG_FUNC_START,
   0, 0, 0, 0, 0);
  pmCPUDeadline(pp);
  KERNEL_DEBUG_CONSTANT_IST(KDEBUG_TRACE,
   DECR_PM_DEADLINE | DBG_FUNC_END,
   0, 0, 0, 0, 0);
  timer_processed = TRUE;
  abstime = mach_absolute_time();
 }

 uint64_t quantum_deadline = pp->quantum_timer_deadline;

 if ((quantum_deadline <= abstime) && (quantum_deadline > 0)) {
  pp->quantum_timer_deadline = 0;
  quantum_timer_expire(abstime);
 }


 x86_lcpu()->rtcDeadline = EndOfAllTime;
 timer_resync_deadlines();

 if (__improbable(timer_processed == FALSE))
  spurious_timers++;
}
