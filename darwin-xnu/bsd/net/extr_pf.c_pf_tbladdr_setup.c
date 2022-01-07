
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct pf_ruleset {int dummy; } ;
struct TYPE_4__ {int tblname; } ;
struct TYPE_3__ {int * tbl; } ;
struct pf_addr_wrap {scalar_t__ type; TYPE_2__ v; TYPE_1__ p; } ;


 int LCK_MTX_ASSERT (int ,int ) ;
 int LCK_MTX_ASSERT_OWNED ;
 scalar_t__ PF_ADDR_TABLE ;
 int pf_lock ;
 int * pfr_attach_table (struct pf_ruleset*,int ) ;

int
pf_tbladdr_setup(struct pf_ruleset *rs, struct pf_addr_wrap *aw)
{
 LCK_MTX_ASSERT(pf_lock, LCK_MTX_ASSERT_OWNED);

 if (aw->type != PF_ADDR_TABLE)
  return (0);
 if ((aw->p.tbl = pfr_attach_table(rs, aw->v.tblname)) == ((void*)0))
  return (1);
 return (0);
}
