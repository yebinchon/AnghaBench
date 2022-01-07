
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef scalar_t__ uint64_t ;
typedef scalar_t__ uint32_t ;
typedef int spl_t ;
struct TYPE_6__ {scalar_t__ count; } ;
struct TYPE_7__ {scalar_t__ deadline; TYPE_1__ queue; int has_expired; } ;
typedef TYPE_2__ rtclock_timer_t ;
struct TYPE_8__ {scalar_t__ quantum_timer_deadline; TYPE_2__ rtclock_timer; int cpu_running; } ;
typedef TYPE_3__ cpu_data_t ;


 int DBG_FUNC_NONE ;
 int DECR_SET_DEADLINE ;
 scalar_t__ EndOfAllTime ;
 int KDEBUG_TRACE ;
 int KERNEL_DEBUG_CONSTANT_IST (int ,int,scalar_t__,int,scalar_t__,scalar_t__,int ) ;
 TYPE_3__* current_cpu_datap () ;
 scalar_t__ pmCPUGetDeadline (TYPE_3__*) ;
 scalar_t__ setPop (scalar_t__) ;
 int splclock () ;
 int splx (int ) ;

void
timer_resync_deadlines(void)
{
 uint64_t deadline = EndOfAllTime;
 uint64_t pmdeadline;
 uint64_t quantum_deadline;
 rtclock_timer_t *mytimer;
 spl_t s = splclock();
 cpu_data_t *pp;
 uint32_t decr;

 pp = current_cpu_datap();
 if (!pp->cpu_running)

  return;




 mytimer = &pp->rtclock_timer;
 if (!mytimer->has_expired &&
     0 < mytimer->deadline && mytimer->deadline < EndOfAllTime)
  deadline = mytimer->deadline;




 pmdeadline = pmCPUGetDeadline(pp);
 if (0 < pmdeadline && pmdeadline < deadline)
  deadline = pmdeadline;


 quantum_deadline = pp->quantum_timer_deadline;
 if ((quantum_deadline > 0) &&
     (quantum_deadline < deadline))
  deadline = quantum_deadline;





 decr = (uint32_t) setPop(deadline);


 if (decr != 0 && deadline != pmdeadline) {
  uint64_t queue_count = 0;
  if (deadline != quantum_deadline) {




   queue_count = mytimer->queue.count;
  }
  KERNEL_DEBUG_CONSTANT_IST(KDEBUG_TRACE,
      DECR_SET_DEADLINE | DBG_FUNC_NONE,
      decr, 2,
      deadline,
      queue_count, 0);
 }
 splx(s);
}
