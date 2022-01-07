
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sockopt {int dummy; } ;
struct ip6_pktopts {int ip6po_flags; int ip6po_prefer_tempaddr; int ip6po_minmtu; TYPE_1__* ip6po_nexthop; scalar_t__ ip6po_dest2; scalar_t__ ip6po_dest1; scalar_t__ ip6po_rthdr; scalar_t__ ip6po_hbh; int ip6po_tclass; scalar_t__ ip6po_pktinfo; } ;
struct ip6_ext {int ip6e_len; } ;
struct in6_pktinfo {int dummy; } ;
typedef int on ;
typedef int null_pktinfo ;
struct TYPE_2__ {int sa_len; } ;


 int ENOPROTOOPT ;
 int IP6PO_DONTFRAG ;
 int IP6PO_MINMTU_MCASTONLY ;
 int IP6PO_TEMPADDR_SYSTEM ;
 int bzero (struct in6_pktinfo*,int) ;
 int panic (char*) ;
 int sooptcopyout (struct sockopt*,void*,int) ;

__attribute__((used)) static int
ip6_getpcbopt(struct ip6_pktopts *pktopt, int optname, struct sockopt *sopt)
{
 void *optdata = ((void*)0);
 int optdatalen = 0;
 struct ip6_ext *ip6e;
 struct in6_pktinfo null_pktinfo;
 int deftclass = 0, on;
 int defminmtu = IP6PO_MINMTU_MCASTONLY;
 int defpreftemp = IP6PO_TEMPADDR_SYSTEM;


 switch (optname) {
 case 133:
  if (pktopt && pktopt->ip6po_pktinfo)
   optdata = (void *)pktopt->ip6po_pktinfo;
  else {

   bzero(&null_pktinfo, sizeof (null_pktinfo));
   optdata = (void *)&null_pktinfo;
  }
  optdatalen = sizeof (struct in6_pktinfo);
  break;

 case 129:
  if (pktopt && pktopt->ip6po_tclass >= 0)
   optdata = (void *)&pktopt->ip6po_tclass;
  else
   optdata = (void *)&deftclass;
  optdatalen = sizeof (int);
  break;

 case 135:
  if (pktopt && pktopt->ip6po_hbh) {
   optdata = (void *)pktopt->ip6po_hbh;
   ip6e = (struct ip6_ext *)pktopt->ip6po_hbh;
   optdatalen = (ip6e->ip6e_len + 1) << 3;
  }
  break;

 case 131:
  if (pktopt && pktopt->ip6po_rthdr) {
   optdata = (void *)pktopt->ip6po_rthdr;
   ip6e = (struct ip6_ext *)pktopt->ip6po_rthdr;
   optdatalen = (ip6e->ip6e_len + 1) << 3;
  }
  break;

 case 130:
  if (pktopt && pktopt->ip6po_dest1) {
   optdata = (void *)pktopt->ip6po_dest1;
   ip6e = (struct ip6_ext *)pktopt->ip6po_dest1;
   optdatalen = (ip6e->ip6e_len + 1) << 3;
  }
  break;

 case 136:
  if (pktopt && pktopt->ip6po_dest2) {
   optdata = (void *)pktopt->ip6po_dest2;
   ip6e = (struct ip6_ext *)pktopt->ip6po_dest2;
   optdatalen = (ip6e->ip6e_len + 1) << 3;
  }
  break;

 case 134:
  if (pktopt && pktopt->ip6po_nexthop) {
   optdata = (void *)pktopt->ip6po_nexthop;
   optdatalen = pktopt->ip6po_nexthop->sa_len;
  }
  break;

 case 128:
  if (pktopt)
   optdata = (void *)&pktopt->ip6po_minmtu;
  else
   optdata = (void *)&defminmtu;
  optdatalen = sizeof (int);
  break;

 case 137:
  if (pktopt && ((pktopt->ip6po_flags) & IP6PO_DONTFRAG))
   on = 1;
  else
   on = 0;
  optdata = (void *)&on;
  optdatalen = sizeof (on);
  break;

 case 132:
  if (pktopt)
   optdata = (void *)&pktopt->ip6po_prefer_tempaddr;
  else
   optdata = (void *)&defpreftemp;
  optdatalen = sizeof (int);
  break;

 default:



  return (ENOPROTOOPT);
 }

 return (sooptcopyout(sopt, optdata, optdatalen));
}
