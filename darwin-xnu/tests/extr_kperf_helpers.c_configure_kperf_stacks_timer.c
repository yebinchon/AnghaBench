
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pid_t ;


 int KPERF_SAMPLER_KSTACK ;
 int KPERF_SAMPLER_USTACK ;
 unsigned int NSEC_PER_MSEC ;
 int T_ASSERT_POSIX_SUCCESS (int ,int *) ;
 int kperf_action_count_set (int) ;
 int kperf_action_filter_set_by_pid (int,int) ;
 int kperf_action_samplers_set (int,int) ;
 int kperf_ns_to_ticks (unsigned int) ;
 int kperf_reset () ;
 int kperf_timer_action_set (int ,int) ;
 int kperf_timer_count_set (int) ;
 int kperf_timer_period_set (int ,int ) ;

void
configure_kperf_stacks_timer(pid_t pid, unsigned int period_ms)
{
    kperf_reset();

    (void)kperf_action_count_set(1);
    (void)kperf_timer_count_set(1);

    T_ASSERT_POSIX_SUCCESS(kperf_action_samplers_set(1,
        KPERF_SAMPLER_USTACK | KPERF_SAMPLER_KSTACK), ((void*)0));

    if (pid != -1) {
        T_ASSERT_POSIX_SUCCESS(kperf_action_filter_set_by_pid(1, pid), ((void*)0));
    }

    T_ASSERT_POSIX_SUCCESS(kperf_timer_action_set(0, 1), ((void*)0));
    T_ASSERT_POSIX_SUCCESS(kperf_timer_period_set(0,
        kperf_ns_to_ticks(period_ms * NSEC_PER_MSEC)), ((void*)0));
}
