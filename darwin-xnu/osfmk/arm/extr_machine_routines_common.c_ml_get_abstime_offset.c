
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;


 int rtclock_base_abstime ;

uint64_t
ml_get_abstime_offset(void)
{
 return rtclock_base_abstime;
}
