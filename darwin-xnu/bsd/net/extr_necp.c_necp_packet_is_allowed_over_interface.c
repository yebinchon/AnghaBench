
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u_int32_t ;
struct mbuf {int dummy; } ;
struct ifnet {int dummy; } ;


 int TRUE ;
 int lck_rw_done (int *) ;
 int lck_rw_lock_shared (int *) ;
 scalar_t__ necp_get_route_rule_id_from_packet (struct mbuf*) ;
 int necp_kernel_policy_lock ;
 int necp_route_is_allowed (int *,struct ifnet*,scalar_t__,int *) ;

bool
necp_packet_is_allowed_over_interface(struct mbuf *packet, struct ifnet *interface)
{
 bool is_allowed = TRUE;
 u_int32_t route_rule_id = necp_get_route_rule_id_from_packet(packet);
 if (route_rule_id != 0 &&
  interface != ((void*)0)) {
  lck_rw_lock_shared(&necp_kernel_policy_lock);
  is_allowed = necp_route_is_allowed(((void*)0), interface, necp_get_route_rule_id_from_packet(packet), ((void*)0));
  lck_rw_done(&necp_kernel_policy_lock);
 }
 return (is_allowed);
}
