
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int thread_t ;


 int kevent_exit_on_workloop_ownership_leak (int ) ;
 scalar_t__ thread_owned_workloops_count (int ) ;

void
thread_will_park_or_terminate(thread_t thread)
{
 if (thread_owned_workloops_count(thread)) {
  (void)kevent_exit_on_workloop_ownership_leak(thread);
 }
}
