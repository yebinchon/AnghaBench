
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timeval {long tv_usec; int tv_sec; } ;
struct timespec {long tv_nsec; int tv_sec; } ;
typedef int clockid_t ;



 int EINVAL ;
 int ENOSYS ;
 int errno ;
 int settimeofday (struct timeval*,int *) ;

int clock_settime (clockid_t clock_id, const struct timespec *tp)
{
    errno = ENOSYS;
    return -1;

}
