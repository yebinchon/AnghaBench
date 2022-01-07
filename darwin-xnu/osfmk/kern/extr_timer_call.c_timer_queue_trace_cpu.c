
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int timer_call_nosync_cpu (int,void (*) (void*),void*) ;
 scalar_t__ timer_queue_cpu (int) ;
 scalar_t__ timer_queue_trace ;

void
timer_queue_trace_cpu(int ncpu)
{
 timer_call_nosync_cpu(
  ncpu,
  (void(*)(void *))timer_queue_trace,
  (void*) timer_queue_cpu(ncpu));
}
