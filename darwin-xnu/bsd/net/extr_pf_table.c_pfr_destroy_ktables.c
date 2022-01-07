
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pfr_ktableworkq {int dummy; } ;
struct pfr_ktable {int dummy; } ;


 int LCK_MTX_ASSERT (int ,int ) ;
 int LCK_MTX_ASSERT_OWNED ;
 struct pfr_ktable* SLIST_FIRST (struct pfr_ktableworkq*) ;
 struct pfr_ktable* SLIST_NEXT (struct pfr_ktable*,int ) ;
 int pf_lock ;
 int pfr_destroy_ktable (struct pfr_ktable*,int) ;
 int pfrkt_workq ;

__attribute__((used)) static void
pfr_destroy_ktables(struct pfr_ktableworkq *workq, int flushaddr)
{
 struct pfr_ktable *p, *q;

 LCK_MTX_ASSERT(pf_lock, LCK_MTX_ASSERT_OWNED);

 for (p = SLIST_FIRST(workq); p; p = q) {
  q = SLIST_NEXT(p, pfrkt_workq);
  pfr_destroy_ktable(p, flushaddr);
 }
}
