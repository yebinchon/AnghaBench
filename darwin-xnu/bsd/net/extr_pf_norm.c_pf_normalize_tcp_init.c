
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int u_int8_t ;
typedef int u_int32_t ;
struct tcphdr {int th_flags; int th_off; } ;
struct pf_state_peer {TYPE_2__* scrub; } ;
struct pf_pdesc {int af; } ;
struct ip6_hdr {int ip6_hlim; int ip_ttl; } ;
struct ip {int ip6_hlim; int ip_ttl; } ;
struct TYPE_6__ {struct ip6_hdr* pb_data; } ;
typedef TYPE_1__ pbuf_t ;
struct TYPE_7__ {int pfss_last; void* pfss_tsecr; void* pfss_tsval; void* pfss_tsval0; int pfss_ts_mod; int pfss_flags; int pfss_ttl; } ;




 int MAX (int,int) ;
 int PFSS_TIMESTAMP ;
 int PR_NOWAIT ;
 int TCPOLEN_TIMESTAMP ;



 int TH_SYN ;
 int VERIFY (int ) ;
 int bzero (TYPE_2__*,int) ;
 int getmicrouptime (int *) ;
 int htonl (int ) ;
 int memcpy (int *,int*,int) ;
 void* ntohl (int ) ;
 scalar_t__ pf_pull_hdr (TYPE_1__*,int,int*,int,int *,int *,int ) ;
 int pf_state_scrub_pl ;
 TYPE_2__* pool_get (int *,int ) ;
 int random () ;

int
pf_normalize_tcp_init(pbuf_t *pbuf, int off, struct pf_pdesc *pd,
    struct tcphdr *th, struct pf_state_peer *src, struct pf_state_peer *dst)
{
#pragma unused(dst)
 u_int32_t tsval, tsecr;
 u_int8_t hdr[60];
 u_int8_t *opt;

 VERIFY(src->scrub == ((void*)0));

 src->scrub = pool_get(&pf_state_scrub_pl, PR_NOWAIT);
 if (src->scrub == ((void*)0))
  return (1);
 bzero(src->scrub, sizeof (*src->scrub));

 switch (pd->af) {
 }






 if ((th->th_flags & TH_SYN) == 0)
  return (0);


 if (th->th_off > (sizeof (struct tcphdr) >> 2) && src->scrub &&
     pf_pull_hdr(pbuf, off, hdr, th->th_off << 2, ((void*)0), ((void*)0), pd->af)) {

  int hlen;
  opt = hdr + sizeof (struct tcphdr);
  hlen = (th->th_off << 2) - sizeof (struct tcphdr);
  while (hlen >= TCPOLEN_TIMESTAMP) {
   switch (*opt) {
   case 130:
   case 129:
    opt++;
    hlen--;
    break;
   case 128:
    if (opt[1] >= TCPOLEN_TIMESTAMP) {
     src->scrub->pfss_flags |=
         PFSS_TIMESTAMP;
     src->scrub->pfss_ts_mod =
         htonl(random());


     memcpy(&tsval, &opt[2],
         sizeof (u_int32_t));
     memcpy(&tsecr, &opt[6],
         sizeof (u_int32_t));
     src->scrub->pfss_tsval0 = ntohl(tsval);
     src->scrub->pfss_tsval = ntohl(tsval);
     src->scrub->pfss_tsecr = ntohl(tsecr);
     getmicrouptime(&src->scrub->pfss_last);
    }

   default:
    hlen -= MAX(opt[1], 2);
    opt += MAX(opt[1], 2);
    break;
   }
  }
 }

 return (0);
}
