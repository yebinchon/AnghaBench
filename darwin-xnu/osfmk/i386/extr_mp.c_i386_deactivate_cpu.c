
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int queue; } ;
struct TYPE_7__ {scalar_t__ cpu_signals; TYPE_1__ rtclock_timer; int cpu_running; } ;
typedef TYPE_2__ cpu_data_t ;
struct TYPE_8__ {scalar_t__ rtcDeadline; } ;


 int ASYNC ;
 int DBG_FUNC_END ;
 int DBG_FUNC_START ;
 scalar_t__ EndOfAllTime ;
 int FALSE ;
 int KERNEL_DEBUG_CONSTANT (int,int ,int ,int ,int ,int ) ;
 int TRACE_MP_CPU_DEACTIVATE ;
 int TRUE ;
 int assert (int) ;
 int cpu_pause () ;
 int cpu_to_cpumask (int ) ;
 TYPE_2__* current_cpu_datap () ;
 int master_cpu ;
 int ml_get_interrupts_enabled () ;
 int ml_set_interrupts_enabled (int ) ;
 int mp_cpus_call (int ,int ,int ,int *) ;
 int mp_disable_preemption () ;
 int mp_enable_preemption () ;
 int mp_safe_spin_lock (int *) ;
 int mt_cpu_down (TYPE_2__*) ;
 int setPop (int ) ;
 int simple_unlock (int *) ;
 int timer_queue_expire_local ;
 int timer_queue_shutdown (int *) ;
 TYPE_3__* x86_lcpu () ;
 int x86_topo_lock ;

void
i386_deactivate_cpu(void)
{
 cpu_data_t *cdp = current_cpu_datap();

 assert(!ml_get_interrupts_enabled());

 KERNEL_DEBUG_CONSTANT(
  TRACE_MP_CPU_DEACTIVATE | DBG_FUNC_START,
  0, 0, 0, 0, 0);

 mp_safe_spin_lock(&x86_topo_lock);
 cdp->cpu_running = FALSE;
 simple_unlock(&x86_topo_lock);





 timer_queue_shutdown(&cdp->rtclock_timer.queue);
 mp_cpus_call(cpu_to_cpumask(master_cpu), ASYNC, timer_queue_expire_local, ((void*)0));
 mp_disable_preemption();
 ml_set_interrupts_enabled(TRUE);

 while (cdp->cpu_signals && x86_lcpu()->rtcDeadline != EndOfAllTime)
  cpu_pause();




 setPop(0);

 ml_set_interrupts_enabled(FALSE);
 mp_enable_preemption();

 KERNEL_DEBUG_CONSTANT(
  TRACE_MP_CPU_DEACTIVATE | DBG_FUNC_END,
  0, 0, 0, 0, 0);
}
