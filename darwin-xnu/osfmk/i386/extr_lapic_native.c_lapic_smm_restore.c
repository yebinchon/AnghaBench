
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ boolean_t ;


 scalar_t__ FALSE ;
 scalar_t__ LAPIC_ISR_IS_SET (int ,int ) ;
 scalar_t__ LAPIC_READ (int ) ;
 int LAPIC_REDUCED_INTERRUPT_BASE ;
 int LAPIC_WRITE (int ,int) ;
 int TIMER ;
 int TIMER_CURRENT_COUNT ;
 int TIMER_INITIAL_COUNT ;
 int _lapic_end_of_interrupt () ;
 int kprintf (char*) ;
 scalar_t__ lapic_os_enabled ;
 scalar_t__ ml_set_interrupts_enabled (scalar_t__) ;

void
lapic_smm_restore(void)
{
 boolean_t state;

 if (lapic_os_enabled == FALSE)
  return;

 state = ml_set_interrupts_enabled(FALSE);

  if (LAPIC_ISR_IS_SET(LAPIC_REDUCED_INTERRUPT_BASE, TIMER)) {






  _lapic_end_of_interrupt();





  if (LAPIC_READ(TIMER_CURRENT_COUNT) == 0) {
   LAPIC_WRITE(TIMER_INITIAL_COUNT, 1);
  }

  kprintf("lapic_smm_restore\n");
 }

 ml_set_interrupts_enabled(state);
}
