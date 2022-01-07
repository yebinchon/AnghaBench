
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int cpumask_t ;
typedef scalar_t__ cpu_t ;
typedef int boolean_t ;


 int FALSE ;
 int KICK ;
 int LAPIC_VECTOR (int ) ;
 int cpu_is_running (scalar_t__) ;
 scalar_t__ cpu_number () ;
 int cpu_to_cpumask (scalar_t__) ;
 int lapic_send_ipi (scalar_t__,int ) ;
 int ml_set_interrupts_enabled (int ) ;
 int mp_safe_spin_lock (int *) ;
 scalar_t__ real_ncpus ;
 int simple_unlock (int *) ;
 int x86_topo_lock ;

void
mp_cpus_kick(cpumask_t cpus)
{
 cpu_t cpu;
 boolean_t intrs_enabled = FALSE;

 intrs_enabled = ml_set_interrupts_enabled(FALSE);
 mp_safe_spin_lock(&x86_topo_lock);

 for (cpu = 0; cpu < (cpu_t) real_ncpus; cpu++) {
  if ((cpu == (cpu_t) cpu_number())
   || ((cpu_to_cpumask(cpu) & cpus) == 0)
   || !cpu_is_running(cpu))
  {
    continue;
  }

  lapic_send_ipi(cpu, LAPIC_VECTOR(KICK));
 }

 simple_unlock(&x86_topo_lock);
 ml_set_interrupts_enabled(intrs_enabled);
}
