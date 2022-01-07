
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u_int8_t ;
typedef int u_int32_t ;


 int FALSE ;
 scalar_t__ NECP_POLICY_RESULT_ROUTE_RULES ;
 int TRUE ;
 scalar_t__ necp_policy_result_get_type_from_buffer (scalar_t__*,int ) ;

__attribute__((used)) static bool
necp_policy_result_requires_route_rules(u_int8_t *buffer, u_int32_t length)
{
 u_int8_t type = necp_policy_result_get_type_from_buffer(buffer, length);
 if (type == NECP_POLICY_RESULT_ROUTE_RULES) {
  return (TRUE);
 }
 return (FALSE);
}
