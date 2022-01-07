
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef scalar_t__ uint32_t ;
typedef scalar_t__ clock_usec_t ;
typedef int clock_sec_t ;


 int rtclock_sec_divisor ;
 int rtclock_usec_divisor ;

void
absolutetime_to_microtime(uint64_t abstime,
                          clock_sec_t * secs,
                          clock_usec_t * microsecs)
{
 uint64_t t64;

 *secs = t64 = abstime / rtclock_sec_divisor;
 abstime -= (t64 * rtclock_sec_divisor);

 *microsecs = (uint32_t)(abstime / rtclock_usec_divisor);
}
