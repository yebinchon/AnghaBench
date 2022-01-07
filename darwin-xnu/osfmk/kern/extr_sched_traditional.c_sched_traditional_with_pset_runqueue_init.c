
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int TRUE ;
 int sched_timeshare_init () ;
 int sched_traditional_use_pset_runqueue ;

__attribute__((used)) static void
sched_traditional_with_pset_runqueue_init(void)
{
 sched_timeshare_init();
 sched_traditional_use_pset_runqueue = TRUE;
}
