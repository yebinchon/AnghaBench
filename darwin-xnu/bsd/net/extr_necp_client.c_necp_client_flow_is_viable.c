
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int32_t ;
struct necp_client_flow {int remote_addr; int local_addr; int interface_index; int necp_flow_flags; int socket; int nexus; } ;
struct necp_client {scalar_t__ parameters_length; int parameters; scalar_t__ allow_multiple_flows; } ;
struct necp_aggregate_result {scalar_t__ routed_interface_index; scalar_t__ routing_result; } ;
typedef int proc_t ;


 scalar_t__ IFSCOPE_NONE ;
 scalar_t__ NECP_KERNEL_POLICY_RESULT_DROP ;
 int necp_application_find_policy_match_internal (int ,int ,int ,struct necp_aggregate_result*,int *,int ,int *,int *,int *,int) ;

__attribute__((used)) static bool
necp_client_flow_is_viable(proc_t proc, struct necp_client *client,
      struct necp_client_flow *flow)
{
 struct necp_aggregate_result result;
 bool ignore_address = (client->allow_multiple_flows && !flow->nexus && !flow->socket);

 flow->necp_flow_flags = 0;
 int error = necp_application_find_policy_match_internal(proc, client->parameters,
               (u_int32_t)client->parameters_length,
               &result, &flow->necp_flow_flags,
               flow->interface_index,
               &flow->local_addr, &flow->remote_addr, ((void*)0), ignore_address);

 return (error == 0 &&
   result.routed_interface_index != IFSCOPE_NONE &&
   result.routing_result != NECP_KERNEL_POLICY_RESULT_DROP);
}
