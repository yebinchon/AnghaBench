
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef scalar_t__ clock_sec_t ;
typedef scalar_t__ clock_nsec_t ;


 int NSEC_PER_SEC ;
 int rtclock_sec_divisor ;

void
nanotime_to_absolutetime(clock_sec_t secs,
                         clock_nsec_t nanosecs,
                         uint64_t * result)
{
 *result = ((uint64_t) secs * rtclock_sec_divisor) +
 ((uint64_t) nanosecs * rtclock_sec_divisor) / NSEC_PER_SEC;
}
