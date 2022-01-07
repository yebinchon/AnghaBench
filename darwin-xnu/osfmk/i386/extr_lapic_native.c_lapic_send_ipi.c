
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int boolean_t ;


 int FALSE ;
 int LAPIC_ICR_DM_FIXED ;
 int LAPIC_ICR_DS_PENDING ;
 int LAPIC_READ_ICR () ;
 int LAPIC_WRITE_ICR (int ,int) ;
 int cpu_pause () ;
 int * cpu_to_lapic ;
 int lapic_interrupt_base ;
 int ml_set_interrupts_enabled (int ) ;

void
lapic_send_ipi(int cpu, int vector)
{
 boolean_t state;

 if (vector < lapic_interrupt_base)
  vector += lapic_interrupt_base;

 state = ml_set_interrupts_enabled(FALSE);


 while (LAPIC_READ_ICR() & LAPIC_ICR_DS_PENDING) {
  cpu_pause();
 }

 LAPIC_WRITE_ICR(cpu_to_lapic[cpu], vector | LAPIC_ICR_DM_FIXED);

 (void) ml_set_interrupts_enabled(state);
}
