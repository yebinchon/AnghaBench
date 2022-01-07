
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int * mbuf_tx_compl_func ;
typedef TYPE_2__* mbuf_t ;
typedef int errno_t ;
struct TYPE_4__ {int pkt_flags; int pkt_compl_callbacks; uintptr_t pkt_compl_context; } ;
struct TYPE_5__ {int m_flags; TYPE_1__ m_pkthdr; } ;


 int EINVAL ;
 int ENOENT ;
 int M_PKTHDR ;
 int OSIncrementAtomic64 (int *) ;
 int PKTF_TX_COMPL_TS_REQ ;
 size_t UINT32_MAX ;
 int VERIFY (int) ;
 uintptr_t atomic_add_32_ov (int *,int) ;
 size_t get_tx_compl_callback_index (int *) ;
 scalar_t__ mbuf_tx_compl_debug ;
 int mbuf_tx_compl_index ;
 int mbuf_tx_compl_outstanding ;

errno_t
mbuf_set_timestamp_requested(mbuf_t m, uintptr_t *pktid,
    mbuf_tx_compl_func callback)
{
 size_t i;

 if (m == ((void*)0) || !(m->m_flags & M_PKTHDR) || callback == ((void*)0) ||
     pktid == ((void*)0))
  return (EINVAL);

 i = get_tx_compl_callback_index(callback);
 if (i == UINT32_MAX)
  return (ENOENT);





 if ((m->m_pkthdr.pkt_flags & PKTF_TX_COMPL_TS_REQ) == 0) {
  m->m_pkthdr.pkt_compl_callbacks = 0;
  m->m_pkthdr.pkt_flags |= PKTF_TX_COMPL_TS_REQ;
  m->m_pkthdr.pkt_compl_context =
      atomic_add_32_ov(&mbuf_tx_compl_index, 1);






 }
 m->m_pkthdr.pkt_compl_callbacks |= (1 << i);
 *pktid = m->m_pkthdr.pkt_compl_context;

 return (0);
}
