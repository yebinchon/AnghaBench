
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int32_t ;
typedef void* u_int16_t ;
struct sockaddr_in6 {int sin6_len; int sin6_addr; void* sin6_port; int sin6_family; } ;
struct sockaddr {int dummy; } ;
struct inpcb {int dummy; } ;
struct in6_addr {int dummy; } ;
typedef int necp_kernel_policy_id ;
typedef int ifnet_t ;


 int AF_INET6 ;
 int memcpy (int *,struct in6_addr*,int) ;
 int necp_socket_is_allowed_to_send_recv_internal (struct inpcb*,struct sockaddr*,struct sockaddr*,int ,int *,int *,int *) ;

bool
necp_socket_is_allowed_to_send_recv_v6(struct inpcb *inp, u_int16_t local_port, u_int16_t remote_port, struct in6_addr *local_addr, struct in6_addr *remote_addr, ifnet_t interface, necp_kernel_policy_id *return_policy_id, u_int32_t *return_route_rule_id, necp_kernel_policy_id *return_skip_policy_id)
{
 struct sockaddr_in6 local = {};
 struct sockaddr_in6 remote = {};
 local.sin6_family = remote.sin6_family = AF_INET6;
 local.sin6_len = remote.sin6_len = sizeof(struct sockaddr_in6);
 local.sin6_port = local_port;
 remote.sin6_port = remote_port;
 memcpy(&local.sin6_addr, local_addr, sizeof(local.sin6_addr));
 memcpy(&remote.sin6_addr, remote_addr, sizeof(remote.sin6_addr));

 return (necp_socket_is_allowed_to_send_recv_internal(inp, (struct sockaddr *)&local, (struct sockaddr *)&remote, interface,
               return_policy_id, return_route_rule_id, return_skip_policy_id));
}
