
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int thread_policy_t ;
typedef int thread_policy_flavor_t ;
typedef int thread_act_t ;
typedef int mach_msg_type_number_t ;
typedef scalar_t__ kern_return_t ;


 scalar_t__ KERN_POLICY_STATIC ;
 scalar_t__ KERN_SUCCESS ;
 scalar_t__ _kernelrpc_thread_policy_set (int ,int ,int ,int ) ;
 int _pthread_clear_qos_tsd (int ) ;

kern_return_t
thread_policy_set(thread_act_t thread, thread_policy_flavor_t flavor, thread_policy_t policy_info, mach_msg_type_number_t policy_infoCnt)
{
 kern_return_t kr;

 kr = _kernelrpc_thread_policy_set(thread, flavor, policy_info, policy_infoCnt);
 if (kr == KERN_SUCCESS) {
  _pthread_clear_qos_tsd(thread);
 } else if (kr == KERN_POLICY_STATIC) {
  kr = KERN_SUCCESS;
 }

 return kr;
}
