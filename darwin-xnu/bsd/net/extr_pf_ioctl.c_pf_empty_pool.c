
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pf_pooladdr {int kif; int addr; } ;
struct pf_palist {int dummy; } ;


 int PFI_KIF_REF_RULE ;
 struct pf_pooladdr* TAILQ_FIRST (struct pf_palist*) ;
 int TAILQ_REMOVE (struct pf_palist*,struct pf_pooladdr*,int ) ;
 int entries ;
 int pf_pooladdr_pl ;
 int pf_tbladdr_remove (int *) ;
 int pfi_dynaddr_remove (int *) ;
 int pfi_kif_unref (int ,int ) ;
 int pool_put (int *,struct pf_pooladdr*) ;

__attribute__((used)) static void
pf_empty_pool(struct pf_palist *poola)
{
 struct pf_pooladdr *empty_pool_pa;

 while ((empty_pool_pa = TAILQ_FIRST(poola)) != ((void*)0)) {
  pfi_dynaddr_remove(&empty_pool_pa->addr);
  pf_tbladdr_remove(&empty_pool_pa->addr);
  pfi_kif_unref(empty_pool_pa->kif, PFI_KIF_REF_RULE);
  TAILQ_REMOVE(poola, empty_pool_pa, entries);
  pool_put(&pf_pooladdr_pl, empty_pool_pa);
 }
}
