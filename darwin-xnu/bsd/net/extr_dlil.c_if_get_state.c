
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int valid_bitmask; int interface_availability; int lqm_state; int rrc_state; } ;
struct ifnet {TYPE_1__ if_interface_state; } ;
struct if_interface_state {int valid_bitmask; int interface_availability; int lqm_state; int rrc_state; } ;


 int IF_INTERFACE_STATE_INTERFACE_AVAILABILITY_VALID ;
 int IF_INTERFACE_STATE_LQM_STATE_VALID ;
 int IF_INTERFACE_STATE_RRC_STATE_VALID ;
 int ifnet_lock_done (struct ifnet*) ;
 int ifnet_lock_shared (struct ifnet*) ;

void
if_get_state(struct ifnet *ifp,
    struct if_interface_state *if_interface_state)
{
 ifnet_lock_shared(ifp);

 if_interface_state->valid_bitmask = 0;

 if (ifp->if_interface_state.valid_bitmask &
     IF_INTERFACE_STATE_RRC_STATE_VALID) {
  if_interface_state->valid_bitmask |=
      IF_INTERFACE_STATE_RRC_STATE_VALID;
  if_interface_state->rrc_state =
      ifp->if_interface_state.rrc_state;
 }
 if (ifp->if_interface_state.valid_bitmask &
     IF_INTERFACE_STATE_LQM_STATE_VALID) {
  if_interface_state->valid_bitmask |=
      IF_INTERFACE_STATE_LQM_STATE_VALID;
  if_interface_state->lqm_state =
      ifp->if_interface_state.lqm_state;
 }
 if (ifp->if_interface_state.valid_bitmask &
     IF_INTERFACE_STATE_INTERFACE_AVAILABILITY_VALID) {
  if_interface_state->valid_bitmask |=
      IF_INTERFACE_STATE_INTERFACE_AVAILABILITY_VALID;
  if_interface_state->interface_availability =
      ifp->if_interface_state.interface_availability;
 }

 ifnet_lock_done(ifp);
}
