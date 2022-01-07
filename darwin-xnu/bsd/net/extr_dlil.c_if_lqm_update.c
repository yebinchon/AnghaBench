
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct net_event_data {int dummy; } ;
struct kev_dl_link_quality_metric_data {int link_quality_metric; } ;
struct TYPE_4__ {int lqm_state; int valid_bitmask; } ;
struct ifnet {TYPE_1__ if_interface_state; } ;
typedef int ev_lqm_data ;
struct TYPE_5__ {int ipi_flags; } ;


 int IFNET_LQM_MAX ;
 int IFNET_LQM_MIN ;
 int IFNET_LQM_THRESH_ABORT ;
 int IFNET_LQM_THRESH_GOOD ;
 int IFNET_LQM_THRESH_MINIMALLY_VIABLE ;
 int IFNET_LQM_THRESH_POOR ;
 int IF_INTERFACE_STATE_LQM_STATE_VALID ;
 int INPCBINFO_HANDLE_LQM_ABORT ;
 int INPCB_TIMER_FAST ;
 int KEV_DL_LINK_QUALITY_METRIC_CHANGED ;
 int KEV_DL_SUBCLASS ;
 int VERIFY (int) ;
 int atomic_bitset_32 (int *,int ) ;
 int bzero (struct kev_dl_link_quality_metric_data*,int) ;
 int dlil_post_msg (struct ifnet*,int ,int ,struct net_event_data*,int) ;
 int ifnet_lock_done (struct ifnet*) ;
 int ifnet_lock_exclusive (struct ifnet*) ;
 int inpcb_timer_sched (TYPE_2__*,int ) ;
 TYPE_2__ tcbinfo ;

void
if_lqm_update(struct ifnet *ifp, int lqm, int locked)
{
 struct kev_dl_link_quality_metric_data ev_lqm_data;

 VERIFY(lqm >= IFNET_LQM_MIN && lqm <= IFNET_LQM_MAX);


 if (lqm >= 0 && lqm <= IFNET_LQM_THRESH_ABORT) {
  lqm = IFNET_LQM_THRESH_ABORT;
  atomic_bitset_32(&tcbinfo.ipi_flags,
      INPCBINFO_HANDLE_LQM_ABORT);
  inpcb_timer_sched(&tcbinfo, INPCB_TIMER_FAST);
 } else if (lqm > IFNET_LQM_THRESH_ABORT &&
     lqm <= IFNET_LQM_THRESH_MINIMALLY_VIABLE) {
  lqm = IFNET_LQM_THRESH_MINIMALLY_VIABLE;
 } else if (lqm > IFNET_LQM_THRESH_MINIMALLY_VIABLE &&
     lqm <= IFNET_LQM_THRESH_POOR) {
  lqm = IFNET_LQM_THRESH_POOR;
 } else if (lqm > IFNET_LQM_THRESH_POOR &&
     lqm <= IFNET_LQM_THRESH_GOOD) {
  lqm = IFNET_LQM_THRESH_GOOD;
 }




 if (!locked)
  ifnet_lock_exclusive(ifp);

 if (lqm == ifp->if_interface_state.lqm_state &&
     (ifp->if_interface_state.valid_bitmask &
     IF_INTERFACE_STATE_LQM_STATE_VALID)) {



  if (!locked)
   ifnet_lock_done(ifp);
  return;
 }
 ifp->if_interface_state.valid_bitmask |=
      IF_INTERFACE_STATE_LQM_STATE_VALID;
 ifp->if_interface_state.lqm_state = lqm;




 ifnet_lock_done(ifp);

 bzero(&ev_lqm_data, sizeof (ev_lqm_data));
 ev_lqm_data.link_quality_metric = lqm;

 dlil_post_msg(ifp, KEV_DL_SUBCLASS, KEV_DL_LINK_QUALITY_METRIC_CHANGED,
     (struct net_event_data *)&ev_lqm_data, sizeof (ev_lqm_data));




 if (locked)
  ifnet_lock_exclusive(ifp);
}
