
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct socket {int dummy; } ;
struct mptsub {struct socket* mpts_socket; } ;
struct TYPE_5__ {int sin6_port; int sin6_addr; } ;
struct TYPE_4__ {int sin_len; int sin_port; int sin_family; int sin_addr; } ;
struct mptses {TYPE_2__ __mpte_dst_v6; TYPE_1__ mpte_dst_v4_nat64; } ;
struct ipv6_prefix {scalar_t__ prefix_len; } ;
struct ifnet {int dummy; } ;
struct TYPE_6__ {struct ifnet* inp_last_outifp; } ;


 int AF_INET ;
 scalar_t__ ENOENT ;
 int NAT64_MAX_NUM_PREFIXES ;
 scalar_t__ ifnet_get_nat64prefix (struct ifnet*,struct ipv6_prefix*) ;
 int mptcp_ask_for_nat64 (struct ifnet*) ;
 int mptcp_desynthesize_ipv6_addr (int *,struct ipv6_prefix*,int *) ;
 TYPE_3__* sotoinpcb (struct socket*) ;

__attribute__((used)) static void
mptcp_handle_ipv6_connection(struct mptses *mpte, const struct mptsub *mpts)
{
 struct ipv6_prefix nat64prefixes[NAT64_MAX_NUM_PREFIXES];
 struct socket *so = mpts->mpts_socket;
 struct ifnet *ifp;
 int j;

 ifp = sotoinpcb(so)->inp_last_outifp;

 if (ifnet_get_nat64prefix(ifp, nat64prefixes) == ENOENT) {
  mptcp_ask_for_nat64(ifp);
  return;
 }


 for (j = 0; j < NAT64_MAX_NUM_PREFIXES; j++) {
  int success;

  if (nat64prefixes[j].prefix_len == 0)
   continue;

  success = mptcp_desynthesize_ipv6_addr(&mpte->__mpte_dst_v6.sin6_addr,
             &nat64prefixes[j],
             &mpte->mpte_dst_v4_nat64.sin_addr);
  if (success) {
   mpte->mpte_dst_v4_nat64.sin_len = sizeof(mpte->mpte_dst_v4_nat64);
   mpte->mpte_dst_v4_nat64.sin_family = AF_INET;
   mpte->mpte_dst_v4_nat64.sin_port = mpte->__mpte_dst_v6.sin6_port;
   break;
  }
 }
}
