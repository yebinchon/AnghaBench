
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int MAX_CALLSTACK_FRAMES ;
 unsigned int actionc ;
 int kperf_action_set_filter (unsigned int,int) ;
 int kperf_action_set_kcallstack_depth (unsigned int,int ) ;
 int kperf_action_set_samplers (unsigned int,int ) ;
 int kperf_action_set_ucallstack_depth (unsigned int,int ) ;
 int kperf_action_set_userdata (unsigned int,int ) ;

void
kperf_action_reset(void)
{
 for (unsigned int i = 0; i < actionc; i++) {
  kperf_action_set_samplers(i + 1, 0);
  kperf_action_set_userdata(i + 1, 0);
  kperf_action_set_filter(i + 1, -1);
  kperf_action_set_ucallstack_depth(i + 1, MAX_CALLSTACK_FRAMES);
  kperf_action_set_kcallstack_depth(i + 1, MAX_CALLSTACK_FRAMES);
 }
}
