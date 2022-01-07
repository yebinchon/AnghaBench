
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ifnet {scalar_t__ if_refio; int if_ref_lock; } ;


 int IF_FULLY_ATTACHED (struct ifnet*) ;
 int VERIFY (int) ;
 int lck_mtx_lock_spin (int *) ;
 int lck_mtx_unlock (int *) ;

void
ifnet_incr_iorefcnt(struct ifnet *ifp)
{
 lck_mtx_lock_spin(&ifp->if_ref_lock);
 VERIFY(IF_FULLY_ATTACHED(ifp));
 VERIFY(ifp->if_refio > 0);
 ifp->if_refio++;
 lck_mtx_unlock(&ifp->if_ref_lock);
}
