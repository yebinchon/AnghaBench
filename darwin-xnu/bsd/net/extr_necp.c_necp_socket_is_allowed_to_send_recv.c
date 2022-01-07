
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int32_t ;
struct inpcb {int dummy; } ;
typedef int necp_kernel_policy_id ;


 int necp_socket_is_allowed_to_send_recv_internal (struct inpcb*,int *,int *,int *,int *,int *,int *) ;

bool
necp_socket_is_allowed_to_send_recv(struct inpcb *inp, necp_kernel_policy_id *return_policy_id, u_int32_t *return_route_rule_id,
         necp_kernel_policy_id *return_skip_policy_id)
{
 return (necp_socket_is_allowed_to_send_recv_internal(inp, ((void*)0), ((void*)0), ((void*)0), return_policy_id, return_route_rule_id, return_skip_policy_id));
}
