
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef TYPE_2__* thread_t ;
struct TYPE_11__ {scalar_t__ qos_tier; int tier_importance; } ;
typedef TYPE_3__ thread_qos_policy_data_t ;
typedef int thread_policy_t ;
typedef scalar_t__ thread_policy_flavor_t ;
typedef int mach_msg_type_number_t ;
typedef scalar_t__ kern_return_t ;
struct TYPE_9__ {scalar_t__ thrp_qos; int thrp_qos_relprio; } ;
struct TYPE_10__ {TYPE_1__ requested_policy; } ;


 scalar_t__ FALSE ;
 scalar_t__ KERN_INVALID_ARGUMENT ;
 scalar_t__ KERN_POLICY_STATIC ;
 scalar_t__ KERN_SUCCESS ;
 TYPE_2__* THREAD_NULL ;
 scalar_t__ THREAD_QOS_POLICY ;
 int THREAD_QOS_POLICY_COUNT ;
 scalar_t__ THREAD_QOS_UNSPECIFIED ;
 scalar_t__ allow_qos_policy_set ;
 scalar_t__ thread_is_static_param (TYPE_2__*) ;
 scalar_t__ thread_policy_set_internal (TYPE_2__*,scalar_t__,int ,int ) ;
 scalar_t__ thread_remove_qos_policy (TYPE_2__*) ;

kern_return_t
thread_policy_set(
 thread_t thread,
 thread_policy_flavor_t flavor,
 thread_policy_t policy_info,
 mach_msg_type_number_t count)
{
 thread_qos_policy_data_t req_qos;
 kern_return_t kr;

 req_qos.qos_tier = THREAD_QOS_UNSPECIFIED;

 if (thread == THREAD_NULL)
  return (KERN_INVALID_ARGUMENT);

 if (allow_qos_policy_set == FALSE) {
  if (thread_is_static_param(thread))
   return (KERN_POLICY_STATIC);

  if (flavor == THREAD_QOS_POLICY)
   return (KERN_INVALID_ARGUMENT);
 }


 if (thread->requested_policy.thrp_qos != THREAD_QOS_UNSPECIFIED) {

  req_qos.qos_tier = thread->requested_policy.thrp_qos;
  req_qos.tier_importance = thread->requested_policy.thrp_qos_relprio;

  kr = thread_remove_qos_policy(thread);
  if (kr != KERN_SUCCESS) {
   return kr;
  }
 }

 kr = thread_policy_set_internal(thread, flavor, policy_info, count);


 if (req_qos.qos_tier != THREAD_QOS_UNSPECIFIED) {
  if (kr != KERN_SUCCESS) {

   (void)thread_policy_set_internal(thread, THREAD_QOS_POLICY, (thread_policy_t)&req_qos, THREAD_QOS_POLICY_COUNT);
  }
 }

 return kr;
}
