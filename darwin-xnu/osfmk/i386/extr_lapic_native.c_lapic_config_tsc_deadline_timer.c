
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;


 int DBG (char*) ;
 int LAPIC_LVT_MASKED ;
 int LAPIC_LVT_PERIODIC ;
 int LAPIC_LVT_TSC_DEADLINE ;
 int LAPIC_READ (int ) ;
 int LAPIC_WRITE (int ,int) ;
 int LVT_TIMER ;
 scalar_t__ lapic_get_tsc_deadline_timer () ;
 int lapic_set_tsc_deadline_timer (scalar_t__) ;
 int mp_disable_preemption () ;
 int mp_enable_preemption () ;
 scalar_t__ rdtsc64 () ;

void
lapic_config_tsc_deadline_timer(void)
{
 uint32_t timer_vector;

 DBG("lapic_config_tsc_deadline_timer()\n");
 mp_disable_preemption();
 timer_vector = LAPIC_READ(LVT_TIMER);
 timer_vector &= ~(LAPIC_LVT_MASKED |
     LAPIC_LVT_PERIODIC);
 timer_vector |= LAPIC_LVT_TSC_DEADLINE;
 LAPIC_WRITE(LVT_TIMER, timer_vector);


 do {
  lapic_set_tsc_deadline_timer(rdtsc64() + (1ULL<<32));
 } while (lapic_get_tsc_deadline_timer() == 0);
 lapic_set_tsc_deadline_timer(0);

 mp_enable_preemption();
 DBG("lapic_config_tsc_deadline_timer() done\n");
}
