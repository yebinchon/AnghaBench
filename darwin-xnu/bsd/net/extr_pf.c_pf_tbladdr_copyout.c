
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pfr_ktable {int pfrkt_flags; int pfrkt_cnt; struct pfr_ktable* pfrkt_root; } ;
struct TYPE_2__ {int tblcnt; struct pfr_ktable* tbl; } ;
struct pf_addr_wrap {scalar_t__ type; TYPE_1__ p; } ;


 int LCK_MTX_ASSERT (int ,int ) ;
 int LCK_MTX_ASSERT_OWNED ;
 int PFR_TFLAG_ACTIVE ;
 scalar_t__ PF_ADDR_TABLE ;
 int pf_lock ;

void
pf_tbladdr_copyout(struct pf_addr_wrap *aw)
{
 struct pfr_ktable *kt = aw->p.tbl;

 LCK_MTX_ASSERT(pf_lock, LCK_MTX_ASSERT_OWNED);

 if (aw->type != PF_ADDR_TABLE || kt == ((void*)0))
  return;
 if (!(kt->pfrkt_flags & PFR_TFLAG_ACTIVE) && kt->pfrkt_root != ((void*)0))
  kt = kt->pfrkt_root;
 aw->p.tbl = ((void*)0);
 aw->p.tblcnt = (kt->pfrkt_flags & PFR_TFLAG_ACTIVE) ?
     kt->pfrkt_cnt : -1;
}
