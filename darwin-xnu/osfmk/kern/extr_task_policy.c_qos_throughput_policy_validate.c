
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ task_throughput_qos_t ;
typedef int kern_return_t ;


 int KERN_INVALID_ARGUMENT ;
 int KERN_SUCCESS ;
 scalar_t__ THROUGHPUT_QOS_TIER_0 ;
 scalar_t__ THROUGHPUT_QOS_TIER_5 ;
 scalar_t__ THROUGHPUT_QOS_TIER_UNSPECIFIED ;

kern_return_t
qos_throughput_policy_validate(task_throughput_qos_t ttier) {
 if ((ttier != THROUGHPUT_QOS_TIER_UNSPECIFIED) &&
     ((ttier > THROUGHPUT_QOS_TIER_5) || (ttier < THROUGHPUT_QOS_TIER_0)))
  return KERN_INVALID_ARGUMENT;

 return KERN_SUCCESS;
}
