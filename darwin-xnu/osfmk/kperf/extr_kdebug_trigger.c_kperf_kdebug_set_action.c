
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EINVAL ;
 unsigned int kperf_action_get_count () ;
 int kperf_kdebug_action ;
 int kperf_kdebug_update () ;

int
kperf_kdebug_set_action(int action_id)
{
 if (action_id < 0 || (unsigned int)action_id > kperf_action_get_count()) {
  return EINVAL;
 }

 kperf_kdebug_action = action_id;
 kperf_kdebug_update();

 return 0;
}
