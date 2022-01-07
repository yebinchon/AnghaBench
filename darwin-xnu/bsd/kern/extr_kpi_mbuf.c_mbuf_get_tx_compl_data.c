
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef TYPE_2__* mbuf_t ;
typedef int errno_t ;
struct TYPE_4__ {int pkt_flags; uintptr_t drv_tx_compl_arg; uintptr_t drv_tx_compl_data; } ;
struct TYPE_5__ {int m_flags; TYPE_1__ m_pkthdr; } ;


 int EINVAL ;
 int M_PKTHDR ;
 int PKTF_DRIVER_MTAG ;

errno_t
mbuf_get_tx_compl_data(mbuf_t m, uintptr_t *arg, uintptr_t *data)
{
 if (m == ((void*)0) || !(m->m_flags & M_PKTHDR) || arg == ((void*)0) ||
     data == ((void*)0))
  return (EINVAL);

 if ((m->m_pkthdr.pkt_flags & PKTF_DRIVER_MTAG) == 0) {
  *arg = 0;
  *data = 0;
 } else {
  *arg = m->m_pkthdr.drv_tx_compl_arg;
  *data = m->m_pkthdr.drv_tx_compl_data;
 }
 return (0);
}
