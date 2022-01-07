
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct net_event_data {int dummy; } ;
struct kev_dl_rrc_state {unsigned int rrc_state; } ;
struct TYPE_2__ {unsigned int rrc_state; int valid_bitmask; } ;
struct ifnet {TYPE_1__ if_interface_state; } ;


 int IF_INTERFACE_STATE_RRC_STATE_VALID ;
 int KEV_DL_RRC_STATE_CHANGED ;
 int KEV_DL_SUBCLASS ;
 int bzero (struct kev_dl_rrc_state*,int) ;
 int dlil_post_msg (struct ifnet*,int ,int ,struct net_event_data*,int) ;
 int ifnet_lock_done (struct ifnet*) ;
 int ifnet_lock_exclusive (struct ifnet*) ;

__attribute__((used)) static void
if_rrc_state_update(struct ifnet *ifp, unsigned int rrc_state)
{
 struct kev_dl_rrc_state kev;

 if (rrc_state == ifp->if_interface_state.rrc_state &&
     (ifp->if_interface_state.valid_bitmask &
     IF_INTERFACE_STATE_RRC_STATE_VALID))
  return;

 ifp->if_interface_state.valid_bitmask |=
     IF_INTERFACE_STATE_RRC_STATE_VALID;

 ifp->if_interface_state.rrc_state = rrc_state;




 ifnet_lock_done(ifp);

 bzero(&kev, sizeof(struct kev_dl_rrc_state));
 kev.rrc_state = rrc_state;

 dlil_post_msg(ifp, KEV_DL_SUBCLASS, KEV_DL_RRC_STATE_CHANGED,
     (struct net_event_data *)&kev, sizeof(struct kev_dl_rrc_state));

 ifnet_lock_exclusive(ifp);
}
