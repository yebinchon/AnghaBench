
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int8_t ;
struct necp_session_policy {int result_size; int result; } ;


 int necp_policy_result_get_type_from_buffer (int ,int ) ;

__attribute__((used)) static inline u_int8_t
necp_policy_get_result_type(struct necp_session_policy *policy)
{
 return (policy ? necp_policy_result_get_type_from_buffer(policy->result, policy->result_size) : 0);
}
