
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ task_latency_qos_t ;
typedef int kern_return_t ;


 int KERN_INVALID_ARGUMENT ;
 int KERN_SUCCESS ;
 scalar_t__ LATENCY_QOS_TIER_0 ;
 scalar_t__ LATENCY_QOS_TIER_5 ;
 scalar_t__ LATENCY_QOS_TIER_UNSPECIFIED ;

kern_return_t
qos_latency_policy_validate(task_latency_qos_t ltier) {
 if ((ltier != LATENCY_QOS_TIER_UNSPECIFIED) &&
     ((ltier > LATENCY_QOS_TIER_5) || (ltier < LATENCY_QOS_TIER_0)))
  return KERN_INVALID_ARGUMENT;

 return KERN_SUCCESS;
}
