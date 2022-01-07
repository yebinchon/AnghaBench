
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint64_t ;
typedef void* boolean_t ;
struct TYPE_2__ {void* cpu_NMI_acknowledged; } ;


 void* FALSE ;
 int NMIPI_enable (void*) ;
 void* TRUE ;
 int cpu_NMI_interrupt (unsigned int) ;
 TYPE_1__* cpu_datap (unsigned int) ;
 int cpu_is_running (unsigned int) ;
 int cpu_pause () ;
 int handle_pending_TLB_flushes () ;
 int machine_timeout_suspended () ;
 void* ml_set_interrupts_enabled (void*) ;
 int panic (char*,unsigned int) ;
 int rdtsc64 () ;
 unsigned int real_ncpus ;

void
NMI_cpus(void)
{
 unsigned int cpu;
 boolean_t intrs_enabled;
 uint64_t tsc_timeout;

 intrs_enabled = ml_set_interrupts_enabled(FALSE);
 NMIPI_enable(TRUE);
 for (cpu = 0; cpu < real_ncpus; cpu++) {
  if (!cpu_is_running(cpu))
   continue;
  cpu_datap(cpu)->cpu_NMI_acknowledged = FALSE;
  cpu_NMI_interrupt(cpu);
  tsc_timeout = !machine_timeout_suspended() ?
    rdtsc64() + (1000 * 1000 * 1000 * 10ULL) :
    ~0ULL;
  while (!cpu_datap(cpu)->cpu_NMI_acknowledged) {
   handle_pending_TLB_flushes();
   cpu_pause();
   if (rdtsc64() > tsc_timeout)
    panic("NMI_cpus() timeout cpu %d", cpu);
  }
  cpu_datap(cpu)->cpu_NMI_acknowledged = FALSE;
 }
 NMIPI_enable(FALSE);

 ml_set_interrupts_enabled(intrs_enabled);
}
