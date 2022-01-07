
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {unsigned int tv_sec; int tv_nsec; } ;
typedef TYPE_1__ mach_timespec_t ;
typedef int kern_return_t ;
typedef scalar_t__ clock_sec_t ;
typedef int clock_nsec_t ;


 int KERN_SUCCESS ;
 int clock_get_system_nanotime (scalar_t__*,int *) ;

kern_return_t
rtclock_gettime(
 mach_timespec_t *time)
{
 clock_sec_t secs;
 clock_nsec_t nsecs;

 clock_get_system_nanotime(&secs, &nsecs);
 time->tv_sec = (unsigned int)secs;
 time->tv_nsec = nsecs;

 return (KERN_SUCCESS);
}
