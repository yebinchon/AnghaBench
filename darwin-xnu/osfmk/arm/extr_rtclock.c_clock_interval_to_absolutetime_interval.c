
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef int uint32_t ;


 int NSEC_PER_SEC ;
 int rtclock_sec_divisor ;

void
clock_interval_to_absolutetime_interval(uint32_t interval,
                                        uint32_t scale_factor,
                                        uint64_t * result)
{
 uint64_t nanosecs = (uint64_t) interval * scale_factor;
 uint64_t t64;

 *result = (t64 = nanosecs / NSEC_PER_SEC) * rtclock_sec_divisor;
 nanosecs -= (t64 * NSEC_PER_SEC);
 *result += (nanosecs * rtclock_sec_divisor) / NSEC_PER_SEC;
}
