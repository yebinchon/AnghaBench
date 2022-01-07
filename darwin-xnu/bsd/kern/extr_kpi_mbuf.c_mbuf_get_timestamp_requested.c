
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef TYPE_2__* mbuf_t ;
typedef int errno_t ;
typedef int boolean_t ;
struct TYPE_4__ {int pkt_flags; } ;
struct TYPE_5__ {int m_flags; TYPE_1__ m_pkthdr; } ;


 int EINVAL ;
 int FALSE ;
 int M_PKTHDR ;
 int PKTF_TX_COMPL_TS_REQ ;
 int TRUE ;

errno_t
mbuf_get_timestamp_requested(mbuf_t m, boolean_t *requested)
{
 if (m == ((void*)0) || !(m->m_flags & M_PKTHDR))
  return (EINVAL);

 if ((m->m_pkthdr.pkt_flags & PKTF_TX_COMPL_TS_REQ) == 0) {
  *requested = FALSE;
 } else {
  *requested = TRUE;
 }
 return (0);
}
