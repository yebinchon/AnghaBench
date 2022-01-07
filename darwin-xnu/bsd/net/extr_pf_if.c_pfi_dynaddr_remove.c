
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {TYPE_2__* dyn; } ;
struct pf_addr_wrap {scalar_t__ type; TYPE_1__ p; } ;
struct TYPE_7__ {int pfik_dynaddrs; } ;
struct TYPE_6__ {int * pfid_kt; TYPE_3__* pfid_kif; } ;


 int PFI_KIF_REF_RULE ;
 scalar_t__ PF_ADDR_DYNIFTL ;
 int TAILQ_REMOVE (int *,TYPE_2__*,int ) ;
 int entry ;
 int pfi_addr_pl ;
 int pfi_kif_unref (TYPE_3__*,int ) ;
 int pfr_detach_table (int *) ;
 int pool_put (int *,TYPE_2__*) ;

void
pfi_dynaddr_remove(struct pf_addr_wrap *aw)
{
 if (aw->type != PF_ADDR_DYNIFTL || aw->p.dyn == ((void*)0) ||
     aw->p.dyn->pfid_kif == ((void*)0) || aw->p.dyn->pfid_kt == ((void*)0))
  return;

 TAILQ_REMOVE(&aw->p.dyn->pfid_kif->pfik_dynaddrs, aw->p.dyn, entry);
 pfi_kif_unref(aw->p.dyn->pfid_kif, PFI_KIF_REF_RULE);
 aw->p.dyn->pfid_kif = ((void*)0);
 pfr_detach_table(aw->p.dyn->pfid_kt);
 aw->p.dyn->pfid_kt = ((void*)0);
 pool_put(&pfi_addr_pl, aw->p.dyn);
 aw->p.dyn = ((void*)0);
}
