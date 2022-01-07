
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timespec {scalar_t__ tv_sec; scalar_t__ tv_nsec; } ;


 scalar_t__ INT32_MAX ;
 unsigned long long NSEC_PER_SEC ;

int
timespec_is_valid(const struct timespec *ts)
{


 if (ts->tv_sec < 0 || ts->tv_sec > INT32_MAX ||
   ts->tv_nsec < 0 || (unsigned long long)ts->tv_nsec > NSEC_PER_SEC) {
  return 0;
 }
 return 1;
}
