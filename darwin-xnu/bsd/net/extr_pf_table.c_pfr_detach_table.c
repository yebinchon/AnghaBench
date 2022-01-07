
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pfr_ktable {scalar_t__* pfrkt_refcnt; int pfrkt_flags; } ;


 int LCK_MTX_ASSERT (int ,int ) ;
 int LCK_MTX_ASSERT_OWNED ;
 size_t PFR_REFCNT_RULE ;
 int PFR_TFLAG_REFERENCED ;
 int pf_lock ;
 int pfr_setflags_ktable (struct pfr_ktable*,int) ;
 int printf (char*,scalar_t__) ;

void
pfr_detach_table(struct pfr_ktable *kt)
{
 LCK_MTX_ASSERT(pf_lock, LCK_MTX_ASSERT_OWNED);

 if (kt->pfrkt_refcnt[PFR_REFCNT_RULE] <= 0)
  printf("pfr_detach_table: refcount = %d.\n",
      kt->pfrkt_refcnt[PFR_REFCNT_RULE]);
 else if (!--kt->pfrkt_refcnt[PFR_REFCNT_RULE])
  pfr_setflags_ktable(kt, kt->pfrkt_flags&~PFR_TFLAG_REFERENCED);
}
