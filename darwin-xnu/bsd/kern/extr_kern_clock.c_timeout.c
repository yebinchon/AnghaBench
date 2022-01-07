
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef scalar_t__ timeout_fcn_t ;
typedef int thread_call_func_t ;


 int NSEC_PER_SEC ;
 int clock_interval_to_deadline (int,int,int *) ;
 int hz ;
 int thread_call_func_delayed (int ,void*,int ) ;

void
timeout(
 timeout_fcn_t fcn,
 void *param,
 int interval)
{
 uint64_t deadline;

 clock_interval_to_deadline(interval, NSEC_PER_SEC / hz, &deadline);
 thread_call_func_delayed((thread_call_func_t)fcn, param, deadline);
}
