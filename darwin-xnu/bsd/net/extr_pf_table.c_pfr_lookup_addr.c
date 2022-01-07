
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






union sockaddr_union {int sin6; int sin; } ;
struct radix_node_head {int dummy; } ;
struct pfr_ktable {struct radix_node_head* pfrkt_ip6; struct radix_node_head* pfrkt_ip4; } ;
struct pfr_kentry {int dummy; } ;
struct pfr_addr {int pfra_net; int pfra_af; int pfra_ip6addr; int pfra_ip4addr; } ;
typedef int sa ;


 scalar_t__ ADDR_NETWORK (struct pfr_addr*) ;
 int AF_INET ;
 int AF_INET6 ;
 int FILLIN_SIN (int ,int ) ;
 int FILLIN_SIN6 (int ,int ) ;
 scalar_t__ KENTRY_NETWORK (struct pfr_kentry*) ;
 scalar_t__ KENTRY_RNF_ROOT (struct pfr_kentry*) ;
 int LCK_MTX_ASSERT (int ,int ) ;
 int LCK_MTX_ASSERT_OWNED ;
 int bzero (union sockaddr_union*,int) ;
 int pf_lock ;
 int pfr_prepare_network (union sockaddr_union*,int ,int ) ;
 scalar_t__ rn_lookup (union sockaddr_union*,union sockaddr_union*,struct radix_node_head*) ;
 scalar_t__ rn_match (union sockaddr_union*,struct radix_node_head*) ;

__attribute__((used)) static struct pfr_kentry *
pfr_lookup_addr(struct pfr_ktable *kt, struct pfr_addr *ad, int exact)
{
 union sockaddr_union sa, mask;
 struct radix_node_head *head;
 struct pfr_kentry *ke;

 LCK_MTX_ASSERT(pf_lock, LCK_MTX_ASSERT_OWNED);

 bzero(&sa, sizeof (sa));
 if (ad->pfra_af == AF_INET) {
  FILLIN_SIN(sa.sin, ad->pfra_ip4addr);
  head = kt->pfrkt_ip4;
 } else if (ad->pfra_af == AF_INET6) {
  FILLIN_SIN6(sa.sin6, ad->pfra_ip6addr);
  head = kt->pfrkt_ip6;
 }
 else
  return ((void*)0);
 if (ADDR_NETWORK(ad)) {
  pfr_prepare_network(&mask, ad->pfra_af, ad->pfra_net);
  ke = (struct pfr_kentry *)rn_lookup(&sa, &mask, head);
  if (ke && KENTRY_RNF_ROOT(ke))
   ke = ((void*)0);
 } else {
  ke = (struct pfr_kentry *)rn_match(&sa, head);
  if (ke && KENTRY_RNF_ROOT(ke))
   ke = ((void*)0);
  if (exact && ke && KENTRY_NETWORK(ke))
   ke = ((void*)0);
 }
 return (ke);
}
