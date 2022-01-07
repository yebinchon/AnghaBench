
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;


 int ml_get_hwclock () ;

uint64_t
ml_get_time_since_reset(void)
{

 return ml_get_hwclock();
}
