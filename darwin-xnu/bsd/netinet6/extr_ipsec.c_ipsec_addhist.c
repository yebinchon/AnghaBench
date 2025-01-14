
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int32_t ;
struct mbuf {int dummy; } ;
struct ipsec_tag {size_t history_count; struct ipsec_history* history; } ;
struct ipsec_history {int ih_proto; int ih_spi; } ;


 int ENOBUFS ;
 int ENOSPC ;
 size_t IPSEC_HISTORY_MAX ;
 int bzero (struct ipsec_history*,int) ;
 struct ipsec_tag* ipsec_addaux (struct mbuf*) ;

int
ipsec_addhist(
 struct mbuf *m,
 int proto,
 u_int32_t spi)
{
 struct ipsec_tag *itag;
 struct ipsec_history *p;
 itag = ipsec_addaux(m);
 if (!itag)
  return ENOBUFS;
 if (itag->history_count == IPSEC_HISTORY_MAX)
  return ENOSPC;

 p = &itag->history[itag->history_count];
 itag->history_count++;

 bzero(p, sizeof(*p));
 p->ih_proto = proto;
 p->ih_spi = spi;

 return 0;
}
