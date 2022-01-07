
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef long long uint64_t ;
struct timeval {long long tv_sec; long tv_usec; } ;
struct timespec {long long tv_sec; long tv_nsec; } ;
typedef int clockid_t ;




 int EINVAL ;
 int ENOSYS ;
 int _gettimeofday_r (int *,struct timeval*,int *) ;
 int errno ;
 int esp_timer_get_time () ;
 long long get_rtc_time_us () ;

int clock_gettime (clockid_t clock_id, struct timespec *tp)
{
    errno = ENOSYS;
    return -1;

}
