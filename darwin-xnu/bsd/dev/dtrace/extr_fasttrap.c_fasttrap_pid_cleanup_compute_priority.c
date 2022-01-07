
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int member_0; } ;
typedef TYPE_1__ thread_precedence_policy_data_t ;
typedef int thread_policy_t ;


 int THREAD_PRECEDENCE_POLICY ;
 int THREAD_PRECEDENCE_POLICY_COUNT ;
 int fasttrap_cleanup_thread ;
 int fasttrap_max ;
 int fasttrap_retired ;
 int fasttrap_total ;
 int thread_policy_set (int ,int ,int ,int ) ;

__attribute__((used)) static void
fasttrap_pid_cleanup_compute_priority(void)
{
 if (fasttrap_total > (fasttrap_max / 100 * 90) || fasttrap_retired > fasttrap_max / 2) {
  thread_precedence_policy_data_t precedence = {12 };
  thread_policy_set(fasttrap_cleanup_thread, THREAD_PRECEDENCE_POLICY, (thread_policy_t) &precedence, THREAD_PRECEDENCE_POLICY_COUNT);
 }
 else {
  thread_precedence_policy_data_t precedence = {-39 };
  thread_policy_set(fasttrap_cleanup_thread, THREAD_PRECEDENCE_POLICY, (thread_policy_t) &precedence, THREAD_PRECEDENCE_POLICY_COUNT);

 }
}
