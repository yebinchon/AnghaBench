
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef int mach_msg_timeout_t ;


 int NSEC_PER_MSEC ;
 int clock_interval_to_absolutetime_interval (int ,int ,int *) ;
 int thread_depress_abstime (int ) ;

void
thread_depress_ms(mach_msg_timeout_t interval)
{
 uint64_t abstime;

 clock_interval_to_absolutetime_interval(interval, NSEC_PER_MSEC, &abstime);
 thread_depress_abstime(abstime);
}
