
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct pfr_ktable {int pfrkt_flags; int pfrkt_nomatch; int pfrkt_match; int pfrkt_ip6; int pfrkt_ip4; struct pfr_ktable* pfrkt_root; } ;
struct pfr_kentry {int pfrke_not; } ;
struct pf_addr {int * addr32; } ;
typedef int sa_family_t ;
struct TYPE_5__ {int s_addr; } ;
struct TYPE_6__ {int sin6_addr; TYPE_1__ sin_addr; } ;




 int KENTRY_RNF_ROOT (struct pfr_kentry*) ;
 int LCK_MTX_ASSERT (int ,int ) ;
 int LCK_MTX_ASSERT_OWNED ;
 int PFR_TFLAG_ACTIVE ;
 int bcopy (struct pf_addr*,int *,int) ;
 int pf_lock ;
 TYPE_2__ pfr_sin ;
 TYPE_2__ pfr_sin6 ;
 scalar_t__ rn_match (TYPE_2__*,int ) ;

int
pfr_match_addr(struct pfr_ktable *kt, struct pf_addr *a, sa_family_t af)
{
 struct pfr_kentry *ke = ((void*)0);
 int match;

 LCK_MTX_ASSERT(pf_lock, LCK_MTX_ASSERT_OWNED);

 if (!(kt->pfrkt_flags & PFR_TFLAG_ACTIVE) && kt->pfrkt_root != ((void*)0))
  kt = kt->pfrkt_root;
 if (!(kt->pfrkt_flags & PFR_TFLAG_ACTIVE))
  return (0);

 switch (af) {
 }
 match = (ke && !ke->pfrke_not);
 if (match)
  kt->pfrkt_match++;
 else
  kt->pfrkt_nomatch++;
 return (match);
}
