
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ uint64_t ;
typedef int cpumask_t ;
struct TYPE_2__ {int cpu_NMI_acknowledged; } ;
typedef int NMI_reason_t ;


 int FALSE ;
 scalar_t__ LockTimeOut ;
 int NMIPI_enable (int ) ;
 int NMI_panic_reason ;
 int TRUE ;
 int cpu_NMI_interrupt (unsigned int) ;
 TYPE_1__* cpu_datap (unsigned int) ;
 int cpu_pause () ;
 scalar_t__ mach_absolute_time () ;
 unsigned int real_ncpus ;

void
NMIPI_panic(cpumask_t cpu_mask, NMI_reason_t why) {
 unsigned int cpu;
 cpumask_t cpu_bit;
 uint64_t deadline;

 NMIPI_enable(TRUE);
 NMI_panic_reason = why;

 for (cpu = 0, cpu_bit = 1; cpu < real_ncpus; cpu++, cpu_bit <<= 1) {
  if ((cpu_mask & cpu_bit) == 0)
   continue;
  cpu_datap(cpu)->cpu_NMI_acknowledged = FALSE;
  cpu_NMI_interrupt(cpu);
 }


 deadline = mach_absolute_time() + LockTimeOut;
 for (cpu = 0, cpu_bit = 1; cpu < real_ncpus; cpu++, cpu_bit <<= 1) {
  if ((cpu_mask & cpu_bit) == 0)
   continue;
  while (!cpu_datap(cpu)->cpu_NMI_acknowledged &&
   mach_absolute_time() < deadline) {
   cpu_pause();
  }
 }
}
