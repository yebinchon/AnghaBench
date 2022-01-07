
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ uint64_t ;
typedef int spl_t ;
struct TYPE_4__ {scalar_t__ deadline; int has_expired; } ;
typedef TYPE_1__ rtclock_timer_t ;
struct TYPE_5__ {scalar_t__ idle_timer_deadline; scalar_t__ quantum_timer_deadline; scalar_t__ rtcPop; TYPE_1__ rtclock_timer; } ;
typedef TYPE_2__ cpu_data_t ;


 int DBG_FUNC_NONE ;
 int DBG_MACH_EXCP_DECI ;
 scalar_t__ EndOfAllTime ;
 int KDEBUG_TRACE ;
 int KERNEL_DEBUG_CONSTANT_IST (int ,int,int,int,int ,int ,int ) ;
 int MACHDBG_CODE (int ,int) ;
 TYPE_2__* getCpuDatap () ;
 int setPop (scalar_t__) ;
 int splclock () ;
 int splx (int ) ;

void
timer_resync_deadlines(void)
{
 uint64_t deadline;
 rtclock_timer_t *mytimer;
 spl_t s = splclock();
 cpu_data_t *cpu_data_ptr;

 cpu_data_ptr = getCpuDatap();

 deadline = 0;


 mytimer = &cpu_data_ptr->rtclock_timer;
 if ((!mytimer->has_expired) && (mytimer->deadline > 0))
  deadline = mytimer->deadline;


 if ((cpu_data_ptr->idle_timer_deadline > 0)
      && (cpu_data_ptr->idle_timer_deadline < deadline))
  deadline = cpu_data_ptr->idle_timer_deadline;


 if ((cpu_data_ptr->quantum_timer_deadline > 0)
     && (cpu_data_ptr->quantum_timer_deadline < deadline))
  deadline = cpu_data_ptr->quantum_timer_deadline;

 if ((deadline == EndOfAllTime)
     || ((deadline > 0) && (cpu_data_ptr->rtcPop != deadline))) {
  int decr;

  decr = setPop(deadline);

  KERNEL_DEBUG_CONSTANT_IST(KDEBUG_TRACE,
      MACHDBG_CODE(DBG_MACH_EXCP_DECI, 1) | DBG_FUNC_NONE,
      decr, 2, 0, 0, 0);
 }
 splx(s);
}
