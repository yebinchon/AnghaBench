
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timespec {int dummy; } ;


 unsigned long long __lwp_wd_calc_ticks (struct timespec const*) ;

unsigned long long timespec_to_ticks(const struct timespec *tp)
{
 return __lwp_wd_calc_ticks(tp);
}
