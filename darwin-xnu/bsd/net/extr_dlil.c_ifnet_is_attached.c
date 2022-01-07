
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ifnet {int if_ref_lock; int if_refio; } ;


 int IF_FULLY_ATTACHED (struct ifnet*) ;
 int lck_mtx_lock_spin (int *) ;
 int lck_mtx_unlock (int *) ;

int
ifnet_is_attached(struct ifnet *ifp, int refio)
{
 int ret;

 lck_mtx_lock_spin(&ifp->if_ref_lock);
 if ((ret = IF_FULLY_ATTACHED(ifp))) {
  if (refio > 0)
   ifp->if_refio++;
 }
 lck_mtx_unlock(&ifp->if_ref_lock);

 return (ret);
}
