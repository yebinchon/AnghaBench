
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lapic_timer_mode_t ;
typedef int lapic_timer_divide_t ;
typedef int lapic_timer_count_t ;


 int LAPIC_LVT_PERIODIC ;
 int LAPIC_READ (int ) ;
 int LAPIC_TIMER_DIVIDE_MASK ;
 int LVT_TIMER ;
 int TIMER_CURRENT_COUNT ;
 int TIMER_DIVIDE_CONFIG ;
 int TIMER_INITIAL_COUNT ;
 int mp_disable_preemption () ;
 int mp_enable_preemption () ;
 int one_shot ;
 int periodic ;

void
lapic_get_timer(
 lapic_timer_mode_t *mode,
 lapic_timer_divide_t *divisor,
 lapic_timer_count_t *initial_count,
 lapic_timer_count_t *current_count)
{
 mp_disable_preemption();
 if (mode)
  *mode = (LAPIC_READ(LVT_TIMER) & LAPIC_LVT_PERIODIC) ?
    periodic : one_shot;
 if (divisor)
  *divisor = LAPIC_READ(TIMER_DIVIDE_CONFIG) & LAPIC_TIMER_DIVIDE_MASK;
 if (initial_count)
  *initial_count = LAPIC_READ(TIMER_INITIAL_COUNT);
 if (current_count)
  *current_count = LAPIC_READ(TIMER_CURRENT_COUNT);
 mp_enable_preemption();
}
