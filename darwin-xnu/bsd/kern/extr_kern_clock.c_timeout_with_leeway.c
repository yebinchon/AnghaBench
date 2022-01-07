
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef scalar_t__ timeout_fcn_t ;
typedef int thread_call_func_t ;


 int NSEC_PER_SEC ;
 int THREAD_CALL_DELAY_LEEWAY ;
 int clock_interval_to_absolutetime_interval (int,int,int *) ;
 int clock_interval_to_deadline (int,int,int *) ;
 int hz ;
 int thread_call_func_delayed_with_leeway (int ,void*,int ,int ,int ) ;

void
timeout_with_leeway(
 timeout_fcn_t fcn,
 void *param,
 int interval,
 int leeway_interval)
{
 uint64_t deadline;
 uint64_t leeway;

 clock_interval_to_deadline(interval, NSEC_PER_SEC / hz, &deadline);

 clock_interval_to_absolutetime_interval(leeway_interval, NSEC_PER_SEC / hz, &leeway);

 thread_call_func_delayed_with_leeway((thread_call_func_t)fcn, param, deadline, leeway, THREAD_CALL_DELAY_LEEWAY);
}
