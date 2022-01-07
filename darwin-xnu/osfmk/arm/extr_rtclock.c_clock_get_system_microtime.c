
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int clock_usec_t ;
typedef int clock_sec_t ;


 int absolutetime_to_microtime (int ,int *,int *) ;
 int mach_absolute_time () ;

void
clock_get_system_microtime(clock_sec_t * secs,
                           clock_usec_t * microsecs)
{
 absolutetime_to_microtime(mach_absolute_time(), secs, microsecs);
}
