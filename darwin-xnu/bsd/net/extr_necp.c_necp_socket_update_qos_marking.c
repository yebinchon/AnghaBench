
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ u_int32_t ;
struct rtentry {struct ifnet* rt_ifp; } ;
struct necp_aggregate_route_rule {scalar_t__* rule_ids; } ;
struct TYPE_4__ {scalar_t__ qos_marking_gencount; } ;
struct TYPE_5__ {TYPE_1__ results; } ;
struct inpcb {TYPE_3__* inp_socket; TYPE_2__ inp_policyresult; } ;
struct ifnet {int dummy; } ;
struct TYPE_6__ {int so_flags1; } ;


 int FALSE ;
 int MAX_AGGREGATE_ROUTE_RULES ;
 scalar_t__ ROUTE_RULE_IS_AGGREGATE (scalar_t__) ;
 int SOF1_QOSMARKING_ALLOWED ;
 int SOF1_QOSMARKING_POLICY_OVERRIDE ;
 int TRUE ;
 int lck_rw_done (int *) ;
 int lck_rw_lock_shared (int *) ;
 int necp_kernel_policy_lock ;
 scalar_t__ necp_kernel_socket_policies_gencount ;
 struct necp_aggregate_route_rule* necp_lookup_aggregate_route_rule_locked (scalar_t__) ;
 int necp_update_qos_marking (struct ifnet*,scalar_t__) ;
 scalar_t__ net_qos_policy_restricted ;

void
necp_socket_update_qos_marking(struct inpcb *inp, struct rtentry *route, struct ifnet *interface, u_int32_t route_rule_id)
{
 bool qos_marking = FALSE;
 struct ifnet *ifp = interface = ((void*)0);

 if (net_qos_policy_restricted == 0) {
  return;
 }
 if (inp->inp_socket == ((void*)0)) {
  return;
 }
 if ((inp->inp_socket->so_flags1 & SOF1_QOSMARKING_POLICY_OVERRIDE)) {
  return;
 }



 if (inp->inp_policyresult.results.qos_marking_gencount == necp_kernel_socket_policies_gencount) {
  return;
 }

 lck_rw_lock_shared(&necp_kernel_policy_lock);

 if (ifp == ((void*)0) && route != ((void*)0)) {
  ifp = route->rt_ifp;
 }



 if (ifp == ((void*)0) || route_rule_id == 0) {
  qos_marking = FALSE;
  goto done;
 }

 if (ROUTE_RULE_IS_AGGREGATE(route_rule_id)) {
  struct necp_aggregate_route_rule *aggregate_route_rule = necp_lookup_aggregate_route_rule_locked(route_rule_id);
  if (aggregate_route_rule != ((void*)0)) {
   int index = 0;
   for (index = 0; index < MAX_AGGREGATE_ROUTE_RULES; index++) {
    u_int32_t sub_route_rule_id = aggregate_route_rule->rule_ids[index];
    if (sub_route_rule_id == 0) {
     break;
    }
    qos_marking = necp_update_qos_marking(ifp, sub_route_rule_id);
    if (qos_marking == TRUE) {
     break;
    }
   }
  }
 } else {
  qos_marking = necp_update_qos_marking(ifp, route_rule_id);
 }



 inp->inp_policyresult.results.qos_marking_gencount = necp_kernel_socket_policies_gencount;

done:
 lck_rw_done(&necp_kernel_policy_lock);

 if (qos_marking == TRUE) {
  inp->inp_socket->so_flags1 |= SOF1_QOSMARKING_ALLOWED;
 } else {
  inp->inp_socket->so_flags1 &= ~SOF1_QOSMARKING_ALLOWED;
 }
}
