
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct pf_pdesc {int lmw; int af; struct pf_addr* dst; struct pf_addr* src; int * ip_sum; int pf_mtag; TYPE_1__* mp; } ;
struct pf_addr {int dummy; } ;
struct ip6_hdr {int ip6_dst; int ip6_src; } ;
struct ip {int ip_sum; int ip_dst; int ip_src; } ;
struct TYPE_5__ {void* pb_data; } ;
typedef TYPE_1__ pbuf_t ;




 int VERIFY (int) ;
 void* pbuf_ensure_writable (TYPE_1__*,int) ;
 int pf_find_mtag_pbuf (TYPE_1__*) ;

void *
pf_lazy_makewritable(struct pf_pdesc *pd, pbuf_t *pbuf, int len)
{
 void *p;

 if (pd->lmw < 0)
  return (((void*)0));

 VERIFY(pbuf == pd->mp);

 p = pbuf->pb_data;
 if (len > pd->lmw) {
  if ((p = pbuf_ensure_writable(pbuf, len)) == ((void*)0))
   len = -1;
  pd->lmw = len;
  if (len >= 0) {
   pd->pf_mtag = pf_find_mtag_pbuf(pbuf);

   switch (pd->af) {
   case 129: {
    struct ip *h = p;
    pd->src = (struct pf_addr *)(uintptr_t)&h->ip_src;
    pd->dst = (struct pf_addr *)(uintptr_t)&h->ip_dst;
    pd->ip_sum = &h->ip_sum;
    break;
   }
   }
  }
 }

 return (len < 0 ? ((void*)0) : p);
}
