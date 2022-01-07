
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;


 int NSEC_PER_SEC ;
 int rtclock_sec_divisor ;

void
absolutetime_to_nanoseconds(uint64_t abstime,
                            uint64_t * result)
{
 uint64_t t64;

 *result = (t64 = abstime / rtclock_sec_divisor) * NSEC_PER_SEC;
 abstime -= (t64 * rtclock_sec_divisor);
 *result += (abstime * NSEC_PER_SEC) / rtclock_sec_divisor;
}
