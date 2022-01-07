
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int8_t ;
typedef scalar_t__ u_int32_t ;
struct necp_session_policy {int result_size; int result; } ;


 int FALSE ;
 int TRUE ;
 int memcpy (int *,int *,scalar_t__) ;
 scalar_t__ necp_policy_result_get_parameter_length_from_buffer (int ,int ) ;
 int * necp_policy_result_get_parameter_pointer_from_buffer (int ,int ) ;

__attribute__((used)) static bool
necp_policy_get_result_parameter(struct necp_session_policy *policy, u_int8_t *parameter_buffer, u_int32_t parameter_buffer_length)
{
 if (policy) {
  u_int32_t parameter_length = necp_policy_result_get_parameter_length_from_buffer(policy->result, policy->result_size);
  if (parameter_buffer_length >= parameter_length) {
   u_int8_t *parameter = necp_policy_result_get_parameter_pointer_from_buffer(policy->result, policy->result_size);
   if (parameter && parameter_buffer) {
    memcpy(parameter_buffer, parameter, parameter_length);
    return (TRUE);
   }
  }
 }

 return (FALSE);
}
