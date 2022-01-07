
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef scalar_t__ timeout_fcn_t ;
typedef int thread_call_func_t ;
struct timespec {scalar_t__ tv_nsec; scalar_t__ tv_sec; } ;


 int NSEC_PER_SEC ;
 int clock_absolutetime_interval_to_deadline (int,int*) ;
 int nanoseconds_to_absolutetime (scalar_t__,int*) ;
 int thread_call_func_delayed (int ,void*,int) ;

void
bsd_timeout(
 timeout_fcn_t fcn,
 void *param,
 struct timespec *ts)
{
 uint64_t deadline = 0;

 if (ts && (ts->tv_sec || ts->tv_nsec)) {
  nanoseconds_to_absolutetime((uint64_t)ts->tv_sec * NSEC_PER_SEC + ts->tv_nsec, &deadline );
  clock_absolutetime_interval_to_deadline( deadline, &deadline );
 }
 thread_call_func_delayed((thread_call_func_t)fcn, param, deadline);
}
