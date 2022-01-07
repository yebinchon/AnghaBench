
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pf_pdesc {int off; int tot_len; int ttl; int proto; } ;
struct pf_addr {int v6addr; int v4addr; } ;
struct ip6_hdr {int ip_hl; int ip6_dst; int ip6_src; int ip6_hlim; int ip6_nxt; void* ip6_plen; int ip6_vfc; int ip_sum; int ip_dst; int ip_src; int ip_p; int ip_ttl; void* ip_off; void* ip_id; void* ip_len; int ip_v; } ;
struct ip {int ip_hl; int ip6_dst; int ip6_src; int ip6_hlim; int ip6_nxt; void* ip6_plen; int ip6_vfc; int ip_sum; int ip_dst; int ip_src; int ip_p; int ip_ttl; void* ip_off; void* ip_id; void* ip_len; int ip_v; } ;
typedef scalar_t__ sa_family_t ;
typedef int pbuf_t ;




 int IPPROTO_ICMP ;
 int IPPROTO_ICMPV6 ;
 int IPV6_DEFHLIM ;
 int IPV6_VERSION ;
 int IPVERSION ;
 int IP_DF ;
 int bzero (struct ip6_hdr*,int) ;
 void* htons (int ) ;
 int ip_randomid () ;
 int pbuf_inet_cksum (int *,int ,int ,int) ;
 void* pbuf_resize_segment (int *,int,int,int) ;
 int rfc6864 ;

__attribute__((used)) static int
pf_change_icmp_af(pbuf_t *pbuf, int off,
 struct pf_pdesc *pd, struct pf_pdesc *pd2, struct pf_addr *src,
 struct pf_addr *dst, sa_family_t af, sa_family_t naf)
{
 struct ip *ip4 = ((void*)0);
 struct ip6_hdr *ip6 = ((void*)0);
 void *hdr;
 int hlen, olen;

 if (af == naf || (af != 129 && af != 128) ||
     (naf != 129 && naf != 128))
  return (-1);


 olen = pd2->off - off;

 hlen = naf == 129 ? sizeof(*ip4) : sizeof(*ip6);


 hdr = pbuf_resize_segment(pbuf, off, olen, hlen);
 if (hdr == ((void*)0))
  return (-1);


 switch (naf) {
 case 129:
  ip4 = hdr;
  bzero(ip4, sizeof(*ip4));
  ip4->ip_v = IPVERSION;
  ip4->ip_hl = sizeof(*ip4) >> 2;
  ip4->ip_len = htons(sizeof(*ip4) + pd2->tot_len - olen);
  ip4->ip_id = rfc6864 ? 0 : htons(ip_randomid());
  ip4->ip_off = htons(IP_DF);
  ip4->ip_ttl = pd2->ttl;
  if (pd2->proto == IPPROTO_ICMPV6)
   ip4->ip_p = IPPROTO_ICMP;
  else
   ip4->ip_p = pd2->proto;
  ip4->ip_src = src->v4addr;
  ip4->ip_dst = dst->v4addr;
  ip4->ip_sum = pbuf_inet_cksum(pbuf, 0, 0, ip4->ip_hl << 2);
  break;
 case 128:
  ip6 = hdr;
  bzero(ip6, sizeof(*ip6));
  ip6->ip6_vfc = IPV6_VERSION;
  ip6->ip6_plen = htons(pd2->tot_len - olen);
  if (pd2->proto == IPPROTO_ICMP)
   ip6->ip6_nxt = IPPROTO_ICMPV6;
  else
   ip6->ip6_nxt = pd2->proto;
  if (!pd2->ttl || pd2->ttl > IPV6_DEFHLIM)
   ip6->ip6_hlim = IPV6_DEFHLIM;
  else
   ip6->ip6_hlim = pd2->ttl;
  ip6->ip6_src = src->v6addr;
  ip6->ip6_dst = dst->v6addr;
  break;
 }


 pd2->off += hlen - olen;
 pd->tot_len += hlen - olen;

 return (0);
}
