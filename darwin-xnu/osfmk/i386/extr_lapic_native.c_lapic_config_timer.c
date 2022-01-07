
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef scalar_t__ lapic_timer_mode_t ;
typedef int lapic_timer_divide_t ;
typedef scalar_t__ boolean_t ;


 int LAPIC_LVT_MASKED ;
 int LAPIC_LVT_PERIODIC ;
 int LAPIC_LVT_TSC_DEADLINE ;
 int LAPIC_READ (int ) ;
 int LAPIC_WRITE (int ,int) ;
 int LVT_TIMER ;
 int TIMER_DIVIDE_CONFIG ;
 int mp_disable_preemption () ;
 int mp_enable_preemption () ;
 scalar_t__ periodic ;

void
lapic_config_timer(
 boolean_t interrupt_unmasked,
 lapic_timer_mode_t mode,
 lapic_timer_divide_t divisor)
{
 uint32_t timer_vector;

 mp_disable_preemption();
 timer_vector = LAPIC_READ(LVT_TIMER);
 timer_vector &= ~(LAPIC_LVT_MASKED |
     LAPIC_LVT_PERIODIC |
     LAPIC_LVT_TSC_DEADLINE);
 timer_vector |= interrupt_unmasked ? 0 : LAPIC_LVT_MASKED;
 timer_vector |= (mode == periodic) ? LAPIC_LVT_PERIODIC : 0;
 LAPIC_WRITE(LVT_TIMER, timer_vector);
 LAPIC_WRITE(TIMER_DIVIDE_CONFIG, divisor);
 mp_enable_preemption();
}
