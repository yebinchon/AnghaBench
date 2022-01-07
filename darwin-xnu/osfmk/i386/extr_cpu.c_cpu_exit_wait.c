
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ uint64_t ;
struct TYPE_4__ {scalar_t__ state; int stopped; } ;
struct TYPE_5__ {TYPE_1__ lcpu; } ;
typedef TYPE_2__ cpu_data_t ;
typedef int boolean_t ;


 int FALSE ;
 scalar_t__ LCPU_HALT ;
 scalar_t__ LCPU_OFF ;
 TYPE_2__* cpu_datap (int) ;
 int cpu_pause () ;
 int ml_set_interrupts_enabled (int ) ;
 int mp_safe_spin_lock (int *) ;
 int panic (char*,int) ;
 scalar_t__ rdtsc64 () ;
 int simple_unlock (int *) ;
 int x86_topo_lock ;

void
cpu_exit_wait(
 int cpu)
{
     cpu_data_t *cdp = cpu_datap(cpu);
 boolean_t intrs_enabled;
 uint64_t tsc_timeout;







 intrs_enabled = ml_set_interrupts_enabled(FALSE);
 mp_safe_spin_lock(&x86_topo_lock);

 tsc_timeout = rdtsc64() + (10ULL * 1000 * 1000 * 1000);
 while ((cdp->lcpu.state != LCPU_HALT)
        && (cdp->lcpu.state != LCPU_OFF)
        && !cdp->lcpu.stopped) {
     simple_unlock(&x86_topo_lock);
     ml_set_interrupts_enabled(intrs_enabled);
     cpu_pause();
     if (rdtsc64() > tsc_timeout)
  panic("cpu_exit_wait(%d) timeout", cpu);
     ml_set_interrupts_enabled(FALSE);
     mp_safe_spin_lock(&x86_topo_lock);
 }
 simple_unlock(&x86_topo_lock);
 ml_set_interrupts_enabled(intrs_enabled);
}
