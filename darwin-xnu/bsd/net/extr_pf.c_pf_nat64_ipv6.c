
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_10__ {int v4addr; } ;
struct TYPE_9__ {int v4addr; } ;
struct pf_pdesc {int tos; int tot_len; scalar_t__ proto; TYPE_2__ ndaddr; TYPE_1__ naddr; int ttl; } ;
struct mbuf {int dummy; } ;
struct ip {int ip_v; int ip_hl; int ip_tos; scalar_t__ ip_p; void* ip_len; void* ip_sum; int ip_dst; int ip_src; int ip_ttl; void* ip_off; scalar_t__ ip_id; } ;
struct icmp {void* icmp_cksum; } ;
struct TYPE_11__ {int * pb_ifp; } ;
typedef TYPE_3__ pbuf_t ;


 int ICMP_MINLEN ;
 scalar_t__ IPPROTO_ICMP ;
 int IP_DF ;
 int PF_DROP ;
 int PF_NAT64 ;
 int TRUE ;
 int htonl (int) ;
 void* htons (int) ;
 int ip_input (struct mbuf*) ;
 int ntohs (void*) ;
 scalar_t__ pbuf_contig_segment (TYPE_3__*,int,int ) ;
 void* pbuf_inet_cksum (TYPE_3__*,int ,int,int) ;
 scalar_t__ pbuf_resize_segment (TYPE_3__*,int ,int,int) ;
 struct mbuf* pbuf_to_mbuf (TYPE_3__*,int ) ;

__attribute__((used)) static int
pf_nat64_ipv6(pbuf_t *pbuf, int off, struct pf_pdesc *pd)
{
 struct ip *ip4;
 struct mbuf *m;
 if (pbuf->pb_ifp == ((void*)0))
  return (PF_DROP);

 ip4 = (struct ip *)pbuf_resize_segment(pbuf, 0, off, sizeof(*ip4));
 if (ip4 == ((void*)0))
  return (PF_DROP);

 ip4->ip_v = 4;
 ip4->ip_hl = 5;
 ip4->ip_tos = pd->tos & htonl(0x0ff00000);
 ip4->ip_len = htons(sizeof(*ip4) + (pd->tot_len - off));
 ip4->ip_id = 0;
 ip4->ip_off = htons(IP_DF);
 ip4->ip_ttl = pd->ttl;
 ip4->ip_p = pd->proto;
 ip4->ip_sum = 0;
 ip4->ip_src = pd->naddr.v4addr;
 ip4->ip_dst = pd->ndaddr.v4addr;
 ip4->ip_sum = pbuf_inet_cksum(pbuf, 0, 0, ip4->ip_hl << 2);


 if (pd->proto == IPPROTO_ICMP) {
  struct icmp *icmp;
  int hlen = sizeof(*ip4);

  icmp = (struct icmp *)pbuf_contig_segment(pbuf, hlen,
      ICMP_MINLEN);
  if (icmp == ((void*)0))
   return (PF_DROP);

  icmp->icmp_cksum = 0;
  icmp->icmp_cksum = pbuf_inet_cksum(pbuf, 0, hlen,
      ntohs(ip4->ip_len) - hlen);
 }

 if ((m = pbuf_to_mbuf(pbuf, TRUE)) != ((void*)0))
  ip_input(m);

 return (PF_NAT64);
}
