
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int kperf_action_reset () ;
 int kperf_kdbg_cswitch_set (int ) ;
 int kperf_kdebug_reset () ;
 int kperf_lazy_reset () ;
 int kperf_sampling_disable () ;
 int kperf_set_lightweight_pet (int ) ;
 int kperf_timer_reset () ;

void
kperf_reset(void)
{

 (void)kperf_sampling_disable();


 kperf_lazy_reset();
 (void)kperf_kdbg_cswitch_set(0);
 (void)kperf_set_lightweight_pet(0);
 kperf_kdebug_reset();


 kperf_timer_reset();
 kperf_action_reset();
}
