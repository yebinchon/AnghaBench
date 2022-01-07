
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ boolean_t ;


 scalar_t__ FALSE ;
 int INTERPROCESSOR ;
 int LAPIC_ICR_DM_NMI ;
 int LAPIC_VECTOR (int ) ;
 int LAPIC_WRITE_ICR (int ,int) ;
 scalar_t__ NMIPIs_enabled ;
 int * cpu_to_lapic ;
 int i386_cpu_IPI (int) ;
 scalar_t__ ml_set_interrupts_enabled (scalar_t__) ;

void
i386_send_NMI(int cpu)
{
 boolean_t state = ml_set_interrupts_enabled(FALSE);

 if (NMIPIs_enabled == FALSE) {
  i386_cpu_IPI(cpu);
 } else {




 LAPIC_WRITE_ICR(cpu_to_lapic[cpu],
   LAPIC_VECTOR(INTERPROCESSOR)|LAPIC_ICR_DM_NMI);
 }
 (void) ml_set_interrupts_enabled(state);
}
