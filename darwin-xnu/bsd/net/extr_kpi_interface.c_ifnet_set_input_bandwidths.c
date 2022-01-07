
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct if_bandwidths {scalar_t__ eff_bw; scalar_t__ max_bw; } ;
struct ifnet {struct if_bandwidths if_input_bw; int if_link_status_lock; int * if_link_status; } ;
typedef int errno_t ;


 int CLASSQ_EV_LINK_BANDWIDTH ;
 scalar_t__ IFNET_IS_WIFI (struct ifnet*) ;
 int VERIFY (int) ;
 int ifnet_set_link_status_inbw (struct ifnet*) ;
 int ifnet_update_rcv (struct ifnet*,int ) ;
 int lck_rw_done (int *) ;
 int lck_rw_lock_exclusive (int *) ;

errno_t
ifnet_set_input_bandwidths(struct ifnet *ifp, struct if_bandwidths *bw)
{
 struct if_bandwidths old_bw;

 VERIFY(ifp != ((void*)0) && bw != ((void*)0));

 old_bw = ifp->if_input_bw;
 if (bw->eff_bw != 0)
  ifp->if_input_bw.eff_bw = bw->eff_bw;
 if (bw->max_bw != 0)
  ifp->if_input_bw.max_bw = bw->max_bw;
 if (ifp->if_input_bw.eff_bw > ifp->if_input_bw.max_bw)
  ifp->if_input_bw.max_bw = ifp->if_input_bw.eff_bw;
 else if (ifp->if_input_bw.eff_bw == 0)
  ifp->if_input_bw.eff_bw = ifp->if_input_bw.max_bw;

 if (IFNET_IS_WIFI(ifp) && ifp->if_link_status != ((void*)0)) {
  lck_rw_lock_exclusive(&ifp->if_link_status_lock);
  ifnet_set_link_status_inbw(ifp);
  lck_rw_done(&ifp->if_link_status_lock);
 }

 if (old_bw.eff_bw != ifp->if_input_bw.eff_bw ||
     old_bw.max_bw != ifp->if_input_bw.max_bw)
  ifnet_update_rcv(ifp, CLASSQ_EV_LINK_BANDWIDTH);

 return (0);
}
