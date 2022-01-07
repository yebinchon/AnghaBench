
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int thread_act_t ;
typedef int policy_t ;
typedef int policy_base_t ;
typedef int mach_msg_type_number_t ;
typedef scalar_t__ kern_return_t ;
typedef int boolean_t ;


 scalar_t__ KERN_POLICY_STATIC ;
 scalar_t__ KERN_SUCCESS ;
 scalar_t__ _kernelrpc_thread_policy (int ,int ,int ,int ,int ) ;
 int _pthread_clear_qos_tsd (int ) ;

kern_return_t
thread_policy(thread_act_t thr_act, policy_t policy, policy_base_t base, mach_msg_type_number_t baseCnt, boolean_t set_limit)
{
 kern_return_t kr;

 kr = _kernelrpc_thread_policy(thr_act, policy, base, baseCnt, set_limit);
 if (kr == KERN_SUCCESS) {
  _pthread_clear_qos_tsd(thr_act);
 } else if (kr == KERN_POLICY_STATIC) {
  kr = KERN_SUCCESS;
 }

 return kr;
}
