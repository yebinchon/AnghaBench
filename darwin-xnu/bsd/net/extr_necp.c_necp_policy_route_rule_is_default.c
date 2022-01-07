
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int8_t ;
typedef int u_int32_t ;


 scalar_t__ necp_policy_condition_get_flags_from_buffer (int *,int ) ;
 scalar_t__ necp_policy_condition_get_value_length_from_buffer (int *,int ) ;

__attribute__((used)) static bool
necp_policy_route_rule_is_default(u_int8_t *buffer, u_int32_t length)
{
 return (necp_policy_condition_get_value_length_from_buffer(buffer, length) == 0 &&
   necp_policy_condition_get_flags_from_buffer(buffer, length) == 0);
}
