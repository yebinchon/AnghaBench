
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;


 int LAPIC_LVT_MASKED ;
 int LAPIC_LVT_TSC_DEADLINE ;
 int LAPIC_READ (int ) ;
 int LAPIC_WRITE (int ,int) ;
 int LVT_TIMER ;
 int MSR_IA32_TSC_DEADLINE ;
 int TIMER_INITIAL_COUNT ;
 int wrmsr64 (int ,int ) ;

void
lapic_disable_timer(void)
{
 uint32_t lvt_timer;






 lvt_timer = LAPIC_READ(LVT_TIMER);
 if (lvt_timer & LAPIC_LVT_TSC_DEADLINE) {
  wrmsr64(MSR_IA32_TSC_DEADLINE, 0);
 } else {
  LAPIC_WRITE(LVT_TIMER, lvt_timer | LAPIC_LVT_MASKED);
  LAPIC_WRITE(TIMER_INITIAL_COUNT, 0);
  lvt_timer = LAPIC_READ(LVT_TIMER);
 }
}
