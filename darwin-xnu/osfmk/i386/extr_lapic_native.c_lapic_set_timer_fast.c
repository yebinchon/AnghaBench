
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lapic_timer_count_t ;


 int LAPIC_LVT_MASKED ;
 int LAPIC_READ (int ) ;
 int LAPIC_WRITE (int ,int) ;
 int LVT_TIMER ;
 int TIMER_INITIAL_COUNT ;

void
lapic_set_timer_fast(
 lapic_timer_count_t initial_count)
{
 LAPIC_WRITE(LVT_TIMER, LAPIC_READ(LVT_TIMER) & ~LAPIC_LVT_MASKED);
 LAPIC_WRITE(TIMER_INITIAL_COUNT, initial_count);
}
