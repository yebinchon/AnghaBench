
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int time_t ;
typedef int clock_sec_t ;
typedef int clock_nsec_t ;


 int clock_get_boottime_nanotime (int *,int *) ;

time_t
boottime_sec(void)
{
 clock_sec_t secs;
 clock_nsec_t nanosecs;

 clock_get_boottime_nanotime(&secs, &nanosecs);
 return (secs);
}
