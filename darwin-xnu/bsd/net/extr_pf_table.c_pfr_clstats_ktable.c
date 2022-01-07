
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int64_t ;
struct pfr_ktable {int pfrkt_tzero; scalar_t__ pfrkt_nomatch; scalar_t__ pfrkt_match; int pfrkt_bytes; int pfrkt_packets; } ;
struct pfr_kentryworkq {int dummy; } ;


 int LCK_MTX_ASSERT (int ,int ) ;
 int LCK_MTX_ASSERT_OWNED ;
 int bzero (int ,int) ;
 int pf_lock ;
 int pfr_clstats_kentries (struct pfr_kentryworkq*,int ,int ) ;
 int pfr_enqueue_addrs (struct pfr_ktable*,struct pfr_kentryworkq*,int *,int ) ;

__attribute__((used)) static void
pfr_clstats_ktable(struct pfr_ktable *kt, u_int64_t tzero, int recurse)
{
 struct pfr_kentryworkq addrq;

 LCK_MTX_ASSERT(pf_lock, LCK_MTX_ASSERT_OWNED);

 if (recurse) {
  pfr_enqueue_addrs(kt, &addrq, ((void*)0), 0);
  pfr_clstats_kentries(&addrq, tzero, 0);
 }
 bzero(kt->pfrkt_packets, sizeof (kt->pfrkt_packets));
 bzero(kt->pfrkt_bytes, sizeof (kt->pfrkt_bytes));
 kt->pfrkt_match = kt->pfrkt_nomatch = 0;
 kt->pfrkt_tzero = tzero;
}
