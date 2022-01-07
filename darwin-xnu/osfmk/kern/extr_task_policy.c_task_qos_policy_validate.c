
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int task_throughput_qos_t ;
typedef TYPE_1__* task_qos_policy_t ;
typedef int task_latency_qos_t ;
typedef scalar_t__ mach_msg_type_number_t ;
typedef scalar_t__ kern_return_t ;
struct TYPE_3__ {int task_throughput_qos_tier; int task_latency_qos_tier; } ;


 scalar_t__ KERN_INVALID_ARGUMENT ;
 scalar_t__ KERN_SUCCESS ;
 scalar_t__ TASK_QOS_POLICY_COUNT ;
 scalar_t__ qos_latency_policy_validate (int ) ;
 scalar_t__ qos_throughput_policy_validate (int ) ;

__attribute__((used)) static kern_return_t
task_qos_policy_validate(task_qos_policy_t qosinfo, mach_msg_type_number_t count) {
 if (count < TASK_QOS_POLICY_COUNT)
  return KERN_INVALID_ARGUMENT;

 task_latency_qos_t ltier = qosinfo->task_latency_qos_tier;
 task_throughput_qos_t ttier = qosinfo->task_throughput_qos_tier;

 kern_return_t kr = qos_latency_policy_validate(ltier);

 if (kr != KERN_SUCCESS)
  return kr;

 kr = qos_throughput_policy_validate(ttier);

 return kr;
}
