
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int8_t ;
typedef int u_int32_t ;


 scalar_t__ NECP_POLICY_CONDITION_DEFAULT ;
 scalar_t__ necp_policy_condition_get_type_from_buffer (int *,int ) ;

__attribute__((used)) static inline bool
necp_policy_condition_is_default(u_int8_t *buffer, u_int32_t length)
{
 return (necp_policy_condition_get_type_from_buffer(buffer, length) == NECP_POLICY_CONDITION_DEFAULT);
}
