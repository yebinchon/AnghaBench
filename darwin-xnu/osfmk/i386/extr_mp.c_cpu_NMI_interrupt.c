
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int i386_send_NMI (int) ;
 scalar_t__ smp_initialized ;

void
cpu_NMI_interrupt(int cpu)
{
 if (smp_initialized) {
  i386_send_NMI(cpu);
 }
}
