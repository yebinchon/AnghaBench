
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int sched_timeshare_init () ;

__attribute__((used)) static void
sched_dualq_init(void)
{
 sched_timeshare_init();
}
