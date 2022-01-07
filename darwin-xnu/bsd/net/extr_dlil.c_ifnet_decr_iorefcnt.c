
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ifnet {scalar_t__ if_refio; int if_refflags; int if_ref_lock; } ;


 int IFRF_ATTACHED ;
 int IFRF_DETACHING ;
 int VERIFY (int) ;
 int lck_mtx_lock_spin (int *) ;
 int lck_mtx_unlock (int *) ;
 int wakeup (scalar_t__*) ;

void
ifnet_decr_iorefcnt(struct ifnet *ifp)
{
 lck_mtx_lock_spin(&ifp->if_ref_lock);
 VERIFY(ifp->if_refio > 0);
 VERIFY(ifp->if_refflags & (IFRF_ATTACHED | IFRF_DETACHING));
 ifp->if_refio--;





 if (ifp->if_refio == 0 && (ifp->if_refflags & IFRF_DETACHING))
  wakeup(&(ifp->if_refio));

 lck_mtx_unlock(&ifp->if_ref_lock);
}
