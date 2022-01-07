
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ip6_pktopts {int ip6po_hlim; int ip6po_tclass; int ip6po_prefer_tempaddr; int ip6po_minmtu; } ;


 int IP6PO_MINMTU_MCASTONLY ;
 int IP6PO_TEMPADDR_SYSTEM ;
 int bzero (struct ip6_pktopts*,int) ;

void
ip6_initpktopts(struct ip6_pktopts *opt)
{

 bzero(opt, sizeof (*opt));
 opt->ip6po_hlim = -1;
 opt->ip6po_tclass = -1;
 opt->ip6po_minmtu = IP6PO_MINMTU_MCASTONLY;
 opt->ip6po_prefer_tempaddr = IP6PO_TEMPADDR_SYSTEM;
}
