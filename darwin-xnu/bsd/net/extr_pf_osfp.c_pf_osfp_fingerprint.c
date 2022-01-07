
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct tcphdr {int th_off; } ;
struct pf_pdesc {scalar_t__ proto; int af; } ;
struct pf_osfp_enlist {int dummy; } ;
struct ip6_hdr {int dummy; } ;
typedef struct ip6_hdr ip ;
struct TYPE_4__ {struct ip6_hdr* pb_data; } ;
typedef TYPE_1__ pbuf_t ;


 scalar_t__ IPPROTO_TCP ;
 int PF_INET ;
 int PF_INET6 ;
 struct pf_osfp_enlist* pf_osfp_fingerprint_hdr (struct ip6_hdr*,struct ip6_hdr*,struct tcphdr*) ;
 int pf_pull_hdr (TYPE_1__*,int,char*,int,int *,int *,int ) ;

struct pf_osfp_enlist *
pf_osfp_fingerprint(struct pf_pdesc *pd, pbuf_t *pbuf, int off,
    const struct tcphdr *tcp)
{
 struct ip *ip;
 struct ip6_hdr *ip6;
 char hdr[60];

 if ((pd->af != PF_INET && pd->af != PF_INET6) ||
     pd->proto != IPPROTO_TCP ||
     (tcp->th_off << 2) < (int)sizeof (*tcp))
  return (((void*)0));

 if (pd->af == PF_INET) {
  ip = pbuf->pb_data;
  ip6 = (struct ip6_hdr *)((void*)0);
 } else {
  ip = (struct ip *)((void*)0);
  ip6 = pbuf->pb_data;
 }
 if (!pf_pull_hdr(pbuf, off, hdr, tcp->th_off << 2, ((void*)0), ((void*)0),
     pd->af))
  return (((void*)0));

 return (pf_osfp_fingerprint_hdr(ip, ip6, (struct tcphdr *)(void *)hdr));
}
