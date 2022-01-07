
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef union sockaddr_union {int dummy; } sockaddr_union ;
struct radix_node_head {int dummy; } ;
struct radix_node {int dummy; } ;
struct pfr_ktable {struct radix_node_head* pfrkt_ip6; struct radix_node_head* pfrkt_ip4; } ;
struct pfr_kentry {int pfrke_node; int pfrke_sa; int pfrke_net; int pfrke_af; } ;


 int AF_INET ;
 int AF_INET6 ;
 scalar_t__ KENTRY_NETWORK (struct pfr_kentry*) ;
 int LCK_MTX_ASSERT (int ,int ) ;
 int LCK_MTX_ASSERT_OWNED ;
 int bzero (int ,int) ;
 int pf_lock ;
 int pfr_prepare_network (union sockaddr_union*,int ,int ) ;
 struct radix_node* rn_addroute (int *,union sockaddr_union*,struct radix_node_head*,int ) ;

__attribute__((used)) static int
pfr_route_kentry(struct pfr_ktable *kt, struct pfr_kentry *ke)
{
 union sockaddr_union mask;
 struct radix_node *rn;
 struct radix_node_head *head;

 LCK_MTX_ASSERT(pf_lock, LCK_MTX_ASSERT_OWNED);

 bzero(ke->pfrke_node, sizeof (ke->pfrke_node));
 if (ke->pfrke_af == AF_INET)
  head = kt->pfrkt_ip4;
 else if (ke->pfrke_af == AF_INET6)
  head = kt->pfrkt_ip6;
 else
  return (-1);

 if (KENTRY_NETWORK(ke)) {
  pfr_prepare_network(&mask, ke->pfrke_af, ke->pfrke_net);
  rn = rn_addroute(&ke->pfrke_sa, &mask, head, ke->pfrke_node);
 } else
  rn = rn_addroute(&ke->pfrke_sa, ((void*)0), head, ke->pfrke_node);

 return (rn == ((void*)0) ? -1 : 0);
}
