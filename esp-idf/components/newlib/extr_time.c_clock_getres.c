
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef long uint32_t ;
struct timespec {long tv_nsec; scalar_t__ tv_sec; } ;
typedef int clockid_t ;


 int EINVAL ;
 int ENOSYS ;
 int assert (int) ;
 int errno ;
 long rtc_clk_slow_freq_get_hz () ;

int clock_getres (clockid_t clock_id, struct timespec *res)
{
    errno = ENOSYS;
    return -1;

}
