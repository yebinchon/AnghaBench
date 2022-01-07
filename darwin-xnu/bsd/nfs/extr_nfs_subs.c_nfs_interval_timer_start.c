
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef int thread_call_t ;


 int clock_interval_to_deadline (int,int,int *) ;
 int thread_call_enter_delayed (int ,int ) ;

void
nfs_interval_timer_start(thread_call_t call, int interval)
{
 uint64_t deadline;

 clock_interval_to_deadline(interval, 1000 * 1000, &deadline);
 thread_call_enter_delayed(call, deadline);
}
