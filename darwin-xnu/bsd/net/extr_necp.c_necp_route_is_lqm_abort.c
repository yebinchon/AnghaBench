
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int valid_bitmask; scalar_t__ lqm_state; } ;
struct ifnet {TYPE_1__ if_interface_state; } ;


 scalar_t__ IFNET_LQM_THRESH_ABORT ;
 int IF_INTERFACE_STATE_LQM_STATE_VALID ;

__attribute__((used)) static bool
necp_route_is_lqm_abort(struct ifnet *ifp, struct ifnet *delegated_ifp)
{
 if (ifp != ((void*)0) &&
  (ifp->if_interface_state.valid_bitmask & IF_INTERFACE_STATE_LQM_STATE_VALID) &&
  ifp->if_interface_state.lqm_state == IFNET_LQM_THRESH_ABORT) {
  return 1;
 }
 if (delegated_ifp != ((void*)0) &&
  (delegated_ifp->if_interface_state.valid_bitmask & IF_INTERFACE_STATE_LQM_STATE_VALID) &&
  delegated_ifp->if_interface_state.lqm_state == IFNET_LQM_THRESH_ABORT) {
  return 1;
 }
 return 0;
}
