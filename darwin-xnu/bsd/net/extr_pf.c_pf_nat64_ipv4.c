
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct udphdr {scalar_t__ uh_sum; } ;
struct TYPE_10__ {int v6addr; } ;
struct TYPE_9__ {int v6addr; } ;
struct pf_pdesc {int tos; scalar_t__ proto; TYPE_2__ ndaddr; TYPE_1__ naddr; int ttl; scalar_t__ tot_len; } ;
struct mbuf {int dummy; } ;
struct ip6_hdr {scalar_t__ ip6_nxt; int ip6_plen; int ip6_dst; int ip6_src; int ip6_hlim; int ip6_vfc; } ;
struct icmp6_hdr {void* icmp6_cksum; } ;
struct TYPE_11__ {int * pb_ifp; } ;
typedef TYPE_3__ pbuf_t ;


 scalar_t__ IPPROTO_ICMPV6 ;
 scalar_t__ IPPROTO_UDP ;
 int PF_DROP ;
 int PF_NAT64 ;
 int TRUE ;
 int htonl (int) ;
 int htons (scalar_t__) ;
 int ip6_input (struct mbuf*) ;
 int ntohs (int ) ;
 scalar_t__ pbuf_contig_segment (TYPE_3__*,int,int) ;
 void* pbuf_inet6_cksum (TYPE_3__*,scalar_t__,int,int ) ;
 scalar_t__ pbuf_resize_segment (TYPE_3__*,int ,int,int) ;
 struct mbuf* pbuf_to_mbuf (TYPE_3__*,int ) ;

__attribute__((used)) static int
pf_nat64_ipv4(pbuf_t *pbuf, int off, struct pf_pdesc *pd)
{
 struct ip6_hdr *ip6;
 struct mbuf *m;

 if (pbuf->pb_ifp == ((void*)0))
  return (PF_DROP);

 ip6 = (struct ip6_hdr *)pbuf_resize_segment(pbuf, 0, off, sizeof(*ip6));
 if (ip6 == ((void*)0))
  return (PF_DROP);

 ip6->ip6_vfc = htonl((6 << 28) | (pd->tos << 20));
 ip6->ip6_plen = htons(pd->tot_len - off);
 ip6->ip6_nxt = pd->proto;
 ip6->ip6_hlim = pd->ttl;
 ip6->ip6_src = pd->naddr.v6addr;
 ip6->ip6_dst = pd->ndaddr.v6addr;


 if (pd->proto == IPPROTO_ICMPV6) {
  struct icmp6_hdr *icmp6;
  int hlen = sizeof(*ip6);

  icmp6 = (struct icmp6_hdr *)pbuf_contig_segment(pbuf, hlen,
      sizeof(*icmp6));
  if (icmp6 == ((void*)0))
   return (PF_DROP);

  icmp6->icmp6_cksum = 0;
  icmp6->icmp6_cksum = pbuf_inet6_cksum(pbuf,
       IPPROTO_ICMPV6, hlen,
       ntohs(ip6->ip6_plen));
 } else if (pd->proto == IPPROTO_UDP) {
  struct udphdr *uh;
  int hlen = sizeof(*ip6);

  uh = (struct udphdr *)pbuf_contig_segment(pbuf, hlen,
      sizeof(*uh));
  if (uh == ((void*)0))
   return (PF_DROP);

  if (uh->uh_sum == 0)
   uh->uh_sum = pbuf_inet6_cksum(pbuf, IPPROTO_UDP,
      hlen, ntohs(ip6->ip6_plen));
 }

 if ((m = pbuf_to_mbuf(pbuf, TRUE)) != ((void*)0))
  ip6_input(m);

 return (PF_NAT64);
}
