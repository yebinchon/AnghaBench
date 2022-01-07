
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pfi_kif {int dummy; } ;


 int LCK_MTX_ASSERT (int ,int ) ;
 int LCK_MTX_ASSERT_OWNED ;
 int pf_lock ;
 int pfi_kif_update (struct pfi_kif*) ;
 int pfi_update ;

void
pfi_kifaddr_update(void *v)
{
 struct pfi_kif *kif = (struct pfi_kif *)v;

 LCK_MTX_ASSERT(pf_lock, LCK_MTX_ASSERT_OWNED);

 pfi_update++;
 pfi_kif_update(kif);
}
