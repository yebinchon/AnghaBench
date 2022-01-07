
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int SCHED_STATS_INTERRUPT (int ) ;
 int current_processor () ;

void
interrupt_stats(void)
{
 SCHED_STATS_INTERRUPT(current_processor());
}
