
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_25__ TYPE_3__ ;
typedef struct TYPE_24__ TYPE_2__ ;
typedef struct TYPE_23__ TYPE_1__ ;
typedef struct TYPE_22__ TYPE_18__ ;


struct nd_ifinfo {int cga_initialized; } ;
struct ifnet {int dummy; } ;
struct dlil_ifnet {int dl_if_detach; } ;
typedef TYPE_3__* ifnet_t ;
typedef int errno_t ;
struct TYPE_22__ {struct ifnet* ifp; } ;
struct TYPE_24__ {int * tqe_prev; int * tqe_next; } ;
struct TYPE_23__ {int * tqe_prev; int * tqe_next; } ;
struct TYPE_25__ {int if_refflags; int if_eflags; size_t if_index; int * if_dt_tcall; scalar_t__ if_data_threshold; int if_cached_route_lock; scalar_t__ if_fwd_cacheok; scalar_t__ if_agentcount; int * if_agentids; int * if_link_status; TYPE_18__* if_ipv6_stat; TYPE_18__* if_ipv4_stat; TYPE_18__* if_udp_stat; TYPE_18__* if_tcp_stat; TYPE_18__ if_interface_state; TYPE_18__ if_delegated; TYPE_18__ if_log; TYPE_2__ if_ordered_link; TYPE_1__ if_link; int if_flowhash; int if_ref_lock; } ;


 int EINVAL ;
 int ENXIO ;
 int FALSE ;
 int FREE (int *,int ) ;
 int IFEF_CLAT46 ;
 int IFEF_ECN_DISABLE ;
 int IFEF_ECN_ENABLE ;
 int IFEF_IPV4_ROUTER ;
 int IFEF_IPV6_ROUTER ;
 int IFEF_TXSTART ;
 int IFNET_LQM_THRESH_OFF ;
 int IFRF_ATTACHED ;
 int IFRF_DETACHING ;
 int IFRF_EMBRYONIC ;
 int KEV_DL_IF_DETACHING ;
 int KEV_DL_SUBCLASS ;
 int M_NETAGENT ;
 int M_TEMP ;
 struct nd_ifinfo* ND_IFINFO (TYPE_3__*) ;
 int TAILQ_REMOVE (int *,TYPE_3__*,int ) ;
 int VERIFY (int) ;
 int bpfdetach (TYPE_3__*) ;
 int bzero (TYPE_18__*,int) ;
 int ctrace_record (int *) ;
 int dlil_if_lock () ;
 int dlil_if_unlock () ;
 int dlil_post_msg (TYPE_3__*,int ,int ,int *,int ) ;
 scalar_t__ dlil_verbose ;
 int if_down (TYPE_3__*) ;
 int if_link ;
 int if_lqm_update (TYPE_3__*,int ,int ) ;
 char* if_name (TYPE_3__*) ;
 TYPE_3__** ifindex2ifnet ;
 int ifnet_detaching_enqueue (TYPE_3__*) ;
 int ifnet_flowadv (int ) ;
 int ifnet_head ;
 int ifnet_head_done () ;
 int ifnet_head_lock_exclusive () ;
 int ifnet_lock_done (TYPE_3__*) ;
 int ifnet_lock_exclusive (TYPE_3__*) ;
 int ifnet_release (struct ifnet*) ;
 int ifnet_remove_from_ordered_list (TYPE_3__*) ;
 int ifnet_set_idle_flags_locked (TYPE_3__*,int ,int ) ;
 int igmp_domifdetach (TYPE_3__*) ;
 int lck_mtx_lock (int *) ;
 int lck_mtx_lock_spin (int *) ;
 int lck_mtx_unlock (int *) ;
 TYPE_3__* lo_ifp ;
 int mld_domifdetach (TYPE_3__*) ;
 int printf (char*,char*) ;
 int * rnh_lock ;
 int thread_call_cancel_wait (int *) ;

errno_t
ifnet_detach(ifnet_t ifp)
{
 struct ifnet *delegated_ifp;
 struct nd_ifinfo *ndi = ((void*)0);

 if (ifp == ((void*)0))
  return (EINVAL);

 ndi = ND_IFINFO(ifp);
 if (((void*)0) != ndi)
  ndi->cga_initialized = FALSE;

 lck_mtx_lock(rnh_lock);
 ifnet_head_lock_exclusive();
 ifnet_lock_exclusive(ifp);







 (void) ifnet_set_idle_flags_locked(ifp, 0, ~0);

 lck_mtx_lock_spin(&ifp->if_ref_lock);
 if (!(ifp->if_refflags & IFRF_ATTACHED)) {
  lck_mtx_unlock(&ifp->if_ref_lock);
  ifnet_lock_done(ifp);
  ifnet_head_done();
  lck_mtx_unlock(rnh_lock);
  return (EINVAL);
 } else if (ifp->if_refflags & IFRF_DETACHING) {

  lck_mtx_unlock(&ifp->if_ref_lock);
  ifnet_lock_done(ifp);
  ifnet_head_done();
  lck_mtx_unlock(rnh_lock);
  return (ENXIO);
 }
 VERIFY(!(ifp->if_refflags & IFRF_EMBRYONIC));

 ifp->if_refflags &= ~IFRF_ATTACHED;
 ifp->if_refflags |= IFRF_DETACHING;
 lck_mtx_unlock(&ifp->if_ref_lock);

 if (dlil_verbose) {
  printf("%s: detaching\n", if_name(ifp));
 }


 if (ifp->if_eflags & IFEF_TXSTART) {
  ifnet_flowadv(ifp->if_flowhash);
 }


 ifp->if_eflags &= ~IFEF_ECN_DISABLE;
 ifp->if_eflags &= ~IFEF_ECN_ENABLE;


 ifp->if_eflags &= ~IFEF_CLAT46;





 VERIFY(ifindex2ifnet[ifp->if_index] == ifp);
 TAILQ_REMOVE(&ifnet_head, ifp, if_link);
 ifp->if_link.tqe_next = ((void*)0);
 ifp->if_link.tqe_prev = ((void*)0);
 if (ifp->if_ordered_link.tqe_next != ((void*)0) ||
  ifp->if_ordered_link.tqe_prev != ((void*)0)) {
  ifnet_remove_from_ordered_list(ifp);
 }
 ifindex2ifnet[ifp->if_index] = ((void*)0);


 ifp->if_eflags &= ~(IFEF_IPV4_ROUTER | IFEF_IPV6_ROUTER);


 ctrace_record(&((struct dlil_ifnet *)ifp)->dl_if_detach);


 bzero(&ifp->if_log, sizeof (ifp->if_log));


 delegated_ifp = ifp->if_delegated.ifp;
 bzero(&ifp->if_delegated, sizeof (ifp->if_delegated));


 bzero(&ifp->if_interface_state, sizeof(ifp->if_interface_state));

 ifnet_lock_done(ifp);
 ifnet_head_done();
 lck_mtx_unlock(rnh_lock);



 if (delegated_ifp != ((void*)0))
  ifnet_release(delegated_ifp);


 if (ifp != lo_ifp)
  if_lqm_update(ifp, IFNET_LQM_THRESH_OFF, 0);


 if (ifp->if_tcp_stat != ((void*)0))
  bzero(ifp->if_tcp_stat, sizeof(*ifp->if_tcp_stat));


 if (ifp->if_udp_stat != ((void*)0))
  bzero(ifp->if_udp_stat, sizeof(*ifp->if_udp_stat));


 if (ifp->if_ipv4_stat != ((void*)0))
  bzero(ifp->if_ipv4_stat, sizeof(*ifp->if_ipv4_stat));


 if (ifp->if_ipv6_stat != ((void*)0))
  bzero(ifp->if_ipv6_stat, sizeof(*ifp->if_ipv6_stat));


 if (ifp->if_link_status != ((void*)0)) {
  FREE(ifp->if_link_status, M_TEMP);
  ifp->if_link_status = ((void*)0);
 }


 if (ifp->if_agentids != ((void*)0)) {
  FREE(ifp->if_agentids, M_NETAGENT);
  ifp->if_agentids = ((void*)0);
 }
 ifp->if_agentcount = 0;



 bpfdetach(ifp);


 if_down(ifp);


 lck_mtx_lock(&ifp->if_cached_route_lock);
 ifp->if_fwd_cacheok = 0;
 lck_mtx_unlock(&ifp->if_cached_route_lock);


 ifp->if_data_threshold = 0;
 VERIFY(ifp->if_dt_tcall != ((void*)0));
 (void) thread_call_cancel_wait(ifp->if_dt_tcall);
 dlil_post_msg(ifp, KEV_DL_SUBCLASS, KEV_DL_IF_DETACHING, ((void*)0), 0);


 dlil_if_lock();
 ifnet_detaching_enqueue(ifp);
 dlil_if_unlock();

 return (0);
}
