
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct necp_kernel_socket_policy {scalar_t__ result; } ;


 scalar_t__ NECP_KERNEL_POLICY_RESULT_NO_TRIGGER_SCOPED ;
 scalar_t__ NECP_KERNEL_POLICY_RESULT_TRIGGER ;

__attribute__((used)) static inline bool
necp_kernel_socket_result_is_trigger_service_type(struct necp_kernel_socket_policy *kernel_policy)
{
 return (kernel_policy->result >= NECP_KERNEL_POLICY_RESULT_TRIGGER && kernel_policy->result <= NECP_KERNEL_POLICY_RESULT_NO_TRIGGER_SCOPED);
}
