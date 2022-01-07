
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned int kperf_action_get_count () ;
 int kperf_lazy_wait_action ;
 int kperf_on_cpu_update () ;

int
kperf_lazy_set_wait_action(int action_id)
{
 if (action_id < 0 || (unsigned int)action_id > kperf_action_get_count()) {
  return 1;
 }

 kperf_lazy_wait_action = action_id;
 kperf_on_cpu_update();
 return 0;
}
