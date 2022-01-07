
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pfi_kif {struct ifnet* pfik_ifp; } ;
struct ifnet {struct pfi_kif* if_pf_kif; } ;


 int LCK_MTX_ASSERT (int ,int ) ;
 int LCK_MTX_ASSERT_OWNED ;
 int if_name (struct ifnet*) ;
 int ifnet_lock_done (struct ifnet*) ;
 int ifnet_lock_exclusive (struct ifnet*) ;
 int panic (char*) ;
 int pf_lock ;
 struct pfi_kif* pfi_kif_get (int ) ;
 int pfi_kif_update (struct pfi_kif*) ;
 int pfi_update ;

void
pfi_attach_ifnet(struct ifnet *ifp)
{
 struct pfi_kif *kif;

 LCK_MTX_ASSERT(pf_lock, LCK_MTX_ASSERT_OWNED);

 pfi_update++;
 if ((kif = pfi_kif_get(if_name(ifp))) == ((void*)0))
  panic("pfi_kif_get failed");

 ifnet_lock_exclusive(ifp);
 kif->pfik_ifp = ifp;
 ifp->if_pf_kif = kif;
 ifnet_lock_done(ifp);

 pfi_kif_update(kif);
}
