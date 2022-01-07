
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef TYPE_2__* mbuf_t ;
struct TYPE_4__ {int pkt_flags; int driver_mtag; } ;
struct TYPE_5__ {TYPE_1__ m_pkthdr; } ;


 int PKTF_DRIVER_MTAG ;
 int bzero (int *,int) ;

__attribute__((used)) static void
driver_mtag_init(mbuf_t m)
{
 if ((m->m_pkthdr.pkt_flags & PKTF_DRIVER_MTAG) == 0) {
  m->m_pkthdr.pkt_flags |= PKTF_DRIVER_MTAG;
  bzero(&m->m_pkthdr.driver_mtag,
      sizeof(m->m_pkthdr.driver_mtag));
 }
}
