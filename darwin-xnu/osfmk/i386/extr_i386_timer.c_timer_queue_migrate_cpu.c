
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_5__ {int deadline; int queue; } ;
struct TYPE_6__ {int cpu_number; TYPE_1__ rtclock_timer; } ;
typedef TYPE_2__ cpu_data_t ;


 int DBG_FUNC_END ;
 int DBG_FUNC_START ;
 int DECR_TIMER_MIGRATE ;
 int EndOfAllTime ;
 int KDEBUG_TRACE ;
 int KERNEL_DEBUG_CONSTANT_IST (int ,int,int,int,int,int ,int ) ;
 int assert (int) ;
 TYPE_2__* cpu_datap (int) ;
 TYPE_2__* current_cpu_datap () ;
 int master_cpu ;
 int ml_get_interrupts_enabled () ;
 int setPop (int) ;
 int timer_queue_migrate (int *,int *) ;

uint32_t
timer_queue_migrate_cpu(int target_cpu)
{
 cpu_data_t *target_cdp = cpu_datap(target_cpu);
 cpu_data_t *cdp = current_cpu_datap();
 int ntimers_moved;

 assert(!ml_get_interrupts_enabled());
 assert(target_cpu != cdp->cpu_number);
 assert(target_cpu == master_cpu);

 KERNEL_DEBUG_CONSTANT_IST(KDEBUG_TRACE,
  DECR_TIMER_MIGRATE | DBG_FUNC_START,
  target_cpu,
  cdp->rtclock_timer.deadline, (cdp->rtclock_timer.deadline >>32),
  0, 0);
 ntimers_moved = timer_queue_migrate(&cdp->rtclock_timer.queue,
         &target_cdp->rtclock_timer.queue);




 if (ntimers_moved > 0) {
  cdp->rtclock_timer.deadline = EndOfAllTime;
  setPop(EndOfAllTime);
 }

 KERNEL_DEBUG_CONSTANT_IST(KDEBUG_TRACE,
  DECR_TIMER_MIGRATE | DBG_FUNC_END,
  target_cpu, ntimers_moved, 0, 0, 0);

 return ntimers_moved;
}
