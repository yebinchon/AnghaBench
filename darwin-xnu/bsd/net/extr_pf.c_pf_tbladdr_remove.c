
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int * tbl; } ;
struct pf_addr_wrap {scalar_t__ type; TYPE_1__ p; } ;


 int LCK_MTX_ASSERT (int ,int ) ;
 int LCK_MTX_ASSERT_OWNED ;
 scalar_t__ PF_ADDR_TABLE ;
 int pf_lock ;
 int pfr_detach_table (int *) ;

void
pf_tbladdr_remove(struct pf_addr_wrap *aw)
{
 LCK_MTX_ASSERT(pf_lock, LCK_MTX_ASSERT_OWNED);

 if (aw->type != PF_ADDR_TABLE || aw->p.tbl == ((void*)0))
  return;
 pfr_detach_table(aw->p.tbl);
 aw->p.tbl = ((void*)0);
}
