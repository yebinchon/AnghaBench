
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pfr_ktable {TYPE_1__* pfrkt_rs; struct pfr_ktable* pfrkt_shadow; int * pfrkt_ip6; int * pfrkt_ip4; } ;
struct pfr_kentryworkq {int dummy; } ;
typedef int caddr_t ;
struct TYPE_2__ {int tables; } ;


 int LCK_MTX_ASSERT (int ,int ) ;
 int LCK_MTX_ASSERT_OWNED ;
 int M_RTABLE ;
 int _FREE (int ,int ) ;
 int pf_lock ;
 int pf_remove_if_empty_ruleset (TYPE_1__*) ;
 int pfr_clean_node_mask (struct pfr_ktable*,struct pfr_kentryworkq*) ;
 int pfr_destroy_kentries (struct pfr_kentryworkq*) ;
 int pfr_enqueue_addrs (struct pfr_ktable*,struct pfr_kentryworkq*,int *,int ) ;
 int pfr_ktable_pl ;
 int pool_put (int *,struct pfr_ktable*) ;

__attribute__((used)) static void
pfr_destroy_ktable(struct pfr_ktable *kt, int flushaddr)
{
 struct pfr_kentryworkq addrq;

 LCK_MTX_ASSERT(pf_lock, LCK_MTX_ASSERT_OWNED);

 if (flushaddr) {
  pfr_enqueue_addrs(kt, &addrq, ((void*)0), 0);
  pfr_clean_node_mask(kt, &addrq);
  pfr_destroy_kentries(&addrq);
 }
 if (kt->pfrkt_ip4 != ((void*)0))
  _FREE((caddr_t)kt->pfrkt_ip4, M_RTABLE);
 if (kt->pfrkt_ip6 != ((void*)0))
  _FREE((caddr_t)kt->pfrkt_ip6, M_RTABLE);
 if (kt->pfrkt_shadow != ((void*)0))
  pfr_destroy_ktable(kt->pfrkt_shadow, flushaddr);
 if (kt->pfrkt_rs != ((void*)0)) {
  kt->pfrkt_rs->tables--;
  pf_remove_if_empty_ruleset(kt->pfrkt_rs);
 }
 pool_put(&pfr_ktable_pl, kt);
}
