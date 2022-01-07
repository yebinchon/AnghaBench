
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int mach_timebase_info (int *) ;
 int sched_mti ;

__attribute__((used)) static void sched_mti_init(void)
{
 mach_timebase_info(&sched_mti);
}
