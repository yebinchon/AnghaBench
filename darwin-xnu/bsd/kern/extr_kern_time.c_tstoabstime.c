
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint64_t ;
struct timespec {int tv_nsec; int tv_sec; } ;


 int NSEC_PER_SEC ;
 int clock_interval_to_absolutetime_interval (int ,int,scalar_t__*) ;

uint64_t
tstoabstime(struct timespec *ts)
{
 uint64_t abstime_s, abstime_ns;
 clock_interval_to_absolutetime_interval(ts->tv_sec, NSEC_PER_SEC, &abstime_s);
 clock_interval_to_absolutetime_interval(ts->tv_nsec, 1, &abstime_ns);
 return abstime_s + abstime_ns;
}
