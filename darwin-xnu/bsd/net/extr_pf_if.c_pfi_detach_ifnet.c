
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pfi_kif {int * pfik_ifp; } ;
struct ifnet {int * if_pf_kif; } ;


 int LCK_MTX_ASSERT (int ,int ) ;
 int LCK_MTX_ASSERT_OWNED ;
 int PFI_KIF_REF_NONE ;
 int ifnet_lock_done (struct ifnet*) ;
 int ifnet_lock_exclusive (struct ifnet*) ;
 int pf_lock ;
 int pfi_kif_unref (struct pfi_kif*,int ) ;
 int pfi_kif_update (struct pfi_kif*) ;
 int pfi_update ;

void
pfi_detach_ifnet(struct ifnet *ifp)
{
 struct pfi_kif *kif;

 LCK_MTX_ASSERT(pf_lock, LCK_MTX_ASSERT_OWNED);

 if ((kif = (struct pfi_kif *)ifp->if_pf_kif) == ((void*)0))
  return;

 pfi_update++;
 pfi_kif_update(kif);

 ifnet_lock_exclusive(ifp);
 kif->pfik_ifp = ((void*)0);
 ifp->if_pf_kif = ((void*)0);
 ifnet_lock_done(ifp);

 pfi_kif_unref(kif, PFI_KIF_REF_NONE);
}
