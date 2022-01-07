
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pfr_ktable {int pfrkt_flags; struct pfr_ktable* pfrkt_shadow; scalar_t__ pfrkt_cnt; struct pfr_ktable* pfrkt_root; int * pfrkt_refcnt; } ;
struct pfr_kentryworkq {int dummy; } ;


 int LCK_MTX_ASSERT (int ,int ) ;
 int LCK_MTX_ASSERT_OWNED ;
 size_t PFR_REFCNT_ANCHOR ;
 int PFR_TFLAG_ACTIVE ;
 int PFR_TFLAG_INACTIVE ;
 int PFR_TFLAG_PERSIST ;
 int PFR_TFLAG_REFDANCHOR ;
 int PFR_TFLAG_REFERENCED ;
 int PFR_TFLAG_SETMASK ;
 int PFR_TFLAG_USRMASK ;
 int RB_REMOVE (int ,int *,struct pfr_ktable*) ;
 int pf_lock ;
 int pfr_destroy_ktable (struct pfr_ktable*,int) ;
 int pfr_enqueue_addrs (struct pfr_ktable*,struct pfr_kentryworkq*,int *,int ) ;
 int pfr_ktable_cnt ;
 int pfr_ktablehead ;
 int pfr_ktables ;
 int pfr_remove_kentries (struct pfr_ktable*,struct pfr_kentryworkq*) ;

__attribute__((used)) static void
pfr_setflags_ktable(struct pfr_ktable *kt, int newf)
{
 struct pfr_kentryworkq addrq;

 LCK_MTX_ASSERT(pf_lock, LCK_MTX_ASSERT_OWNED);

 if (!(newf & PFR_TFLAG_REFERENCED) &&
     !(newf & PFR_TFLAG_PERSIST))
  newf &= ~PFR_TFLAG_ACTIVE;
 if (!(newf & PFR_TFLAG_ACTIVE))
  newf &= ~PFR_TFLAG_USRMASK;
 if (!(newf & PFR_TFLAG_SETMASK)) {
  RB_REMOVE(pfr_ktablehead, &pfr_ktables, kt);
  if (kt->pfrkt_root != ((void*)0))
   if (!--kt->pfrkt_root->pfrkt_refcnt[PFR_REFCNT_ANCHOR])
    pfr_setflags_ktable(kt->pfrkt_root,
        kt->pfrkt_root->pfrkt_flags &
        ~PFR_TFLAG_REFDANCHOR);
  pfr_destroy_ktable(kt, 1);
  pfr_ktable_cnt--;
  return;
 }
 if (!(newf & PFR_TFLAG_ACTIVE) && kt->pfrkt_cnt) {
  pfr_enqueue_addrs(kt, &addrq, ((void*)0), 0);
  pfr_remove_kentries(kt, &addrq);
 }
 if (!(newf & PFR_TFLAG_INACTIVE) && kt->pfrkt_shadow != ((void*)0)) {
  pfr_destroy_ktable(kt->pfrkt_shadow, 1);
  kt->pfrkt_shadow = ((void*)0);
 }
 kt->pfrkt_flags = newf;
}
