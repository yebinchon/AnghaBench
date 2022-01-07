
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int task_policy_t ;
struct task_qos_policy {int task_throughput_qos_tier; int task_latency_qos_tier; } ;
typedef scalar_t__ kern_return_t ;


 scalar_t__ KERN_SUCCESS ;
 int LATENCY_QOS_TIER_0 ;
 int TASK_OVERRIDE_QOS_POLICY ;
 int TASK_QOS_POLICY_COUNT ;
 int THROUGHPUT_QOS_TIER_0 ;
 int T_FAIL (char*,scalar_t__,int ) ;
 int T_SETUPBEGIN ;
 int T_SETUPEND ;
 int mach_error_string (scalar_t__) ;
 int mach_task_self () ;
 scalar_t__ task_policy_set (int ,int ,int ,int ) ;

__attribute__((used)) static void
disable_timer_coalescing(void)
{
    struct task_qos_policy qosinfo;
    kern_return_t kr;

 T_SETUPBEGIN;

 qosinfo.task_latency_qos_tier = LATENCY_QOS_TIER_0;
 qosinfo.task_throughput_qos_tier = THROUGHPUT_QOS_TIER_0;

 kr = task_policy_set(mach_task_self(), TASK_OVERRIDE_QOS_POLICY, (task_policy_t)&qosinfo,
                      TASK_QOS_POLICY_COUNT);
 if (kr != KERN_SUCCESS) {
  T_FAIL("task_policy_set(... TASK_OVERRIDE_QOS_POLICY ...) failed: %d (%s)", kr, mach_error_string(kr));
 }

 T_SETUPEND;
}
