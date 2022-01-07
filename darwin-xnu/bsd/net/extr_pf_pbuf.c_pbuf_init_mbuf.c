
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct mbuf {int m_flags; } ;
struct ifnet {int dummy; } ;
struct TYPE_4__ {int * pb_next; struct ifnet* pb_ifp; struct mbuf* pb_mbuf; int pb_type; } ;
typedef TYPE_1__ pbuf_t ;


 int M_PKTHDR ;
 int PBUF_TYPE_MBUF ;
 int VERIFY (int) ;
 int pbuf_sync (TYPE_1__*) ;

void
pbuf_init_mbuf(pbuf_t *pbuf, struct mbuf *m, struct ifnet *ifp)
{

 VERIFY((m->m_flags & M_PKTHDR) != 0);

 pbuf->pb_type = PBUF_TYPE_MBUF;
 pbuf->pb_mbuf = m;
 pbuf->pb_ifp = ifp;
 pbuf->pb_next = ((void*)0);
 pbuf_sync(pbuf);
}
