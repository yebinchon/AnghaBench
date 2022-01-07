
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ifnet {int dummy; } ;


 int lck_mtx_lock (int ) ;
 int lck_mtx_unlock (int ) ;
 int lck_rw_done (int ) ;
 int lck_rw_lock_shared (int ) ;
 int pf_lock ;
 int pf_perim_lock ;
 int pfi_attach_ifnet (struct ifnet*) ;
 int pfi_detach_ifnet (struct ifnet*) ;

void
pf_ifnet_hook(struct ifnet *ifp, int attach)
{
 lck_rw_lock_shared(pf_perim_lock);
 lck_mtx_lock(pf_lock);
 if (attach)
  pfi_attach_ifnet(ifp);
 else
  pfi_detach_ifnet(ifp);
 lck_mtx_unlock(pf_lock);
 lck_rw_done(pf_perim_lock);
}
