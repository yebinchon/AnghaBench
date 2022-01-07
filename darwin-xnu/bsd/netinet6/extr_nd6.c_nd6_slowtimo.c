
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct nd_ifinfo {scalar_t__ initialized; scalar_t__ recalctm; int lock; scalar_t__ basereachable; int reachable; } ;
struct TYPE_3__ {struct ifnet* tqe_next; } ;
struct ifnet {TYPE_1__ if_link; } ;
struct TYPE_4__ {struct ifnet* tqh_first; } ;


 scalar_t__ FALSE ;
 scalar_t__ ND6_SLOWTIMER_INTERVAL ;
 int ND_COMPUTE_RTIME (scalar_t__) ;
 struct nd_ifinfo* ND_IFINFO (struct ifnet*) ;
 scalar_t__ hz ;
 TYPE_2__ ifnet_head ;
 int ifnet_head_done () ;
 int ifnet_head_lock_shared () ;
 int lck_mtx_lock (int *) ;
 int lck_mtx_unlock (int *) ;
 scalar_t__ nd6_recalc_reachtm_interval ;
 int timeout (void (*) (void*),int *,scalar_t__) ;

__attribute__((used)) static void
nd6_slowtimo(void *arg)
{
#pragma unused(arg)
 struct nd_ifinfo *nd6if = ((void*)0);
 struct ifnet *ifp = ((void*)0);

 ifnet_head_lock_shared();
 for (ifp = ifnet_head.tqh_first; ifp;
     ifp = ifp->if_link.tqe_next) {
  nd6if = ND_IFINFO(ifp);
  if ((((void*)0) == nd6if) || (FALSE == nd6if->initialized)) {
   continue;
  }

  lck_mtx_lock(&nd6if->lock);
  if (nd6if->basereachable &&
      (nd6if->recalctm -= ND6_SLOWTIMER_INTERVAL) <= 0) {






   nd6if->recalctm = nd6_recalc_reachtm_interval;
   nd6if->reachable =
       ND_COMPUTE_RTIME(nd6if->basereachable);
  }
  lck_mtx_unlock(&nd6if->lock);
 }
 ifnet_head_done();
 timeout(nd6_slowtimo, ((void*)0), ND6_SLOWTIMER_INTERVAL * hz);
}
