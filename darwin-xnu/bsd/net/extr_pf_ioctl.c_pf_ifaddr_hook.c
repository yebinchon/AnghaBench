
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pfi_kif {int dummy; } ;
struct ifnet {struct pfi_kif* if_pf_kif; } ;


 int lck_mtx_lock (int ) ;
 int lck_mtx_unlock (int ) ;
 int lck_rw_done (int ) ;
 int lck_rw_lock_shared (int ) ;
 int pf_lock ;
 int pf_perim_lock ;
 int pfi_kifaddr_update (struct pfi_kif*) ;

int
pf_ifaddr_hook(struct ifnet *ifp)
{
 struct pfi_kif *kif = ifp->if_pf_kif;

 if (kif != ((void*)0)) {
  lck_rw_lock_shared(pf_perim_lock);
  lck_mtx_lock(pf_lock);

  pfi_kifaddr_update(kif);

  lck_mtx_unlock(pf_lock);
  lck_rw_done(pf_perim_lock);
 }
 return (0);
}
