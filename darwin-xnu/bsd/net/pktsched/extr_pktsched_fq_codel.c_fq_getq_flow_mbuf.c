
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_22__ TYPE_7__ ;
typedef struct TYPE_21__ TYPE_6__ ;
typedef struct TYPE_20__ TYPE_5__ ;
typedef struct TYPE_19__ TYPE_4__ ;
typedef struct TYPE_18__ TYPE_3__ ;
typedef struct TYPE_17__ TYPE_2__ ;
typedef struct TYPE_16__ TYPE_1__ ;


typedef scalar_t__ u_int32_t ;
struct TYPE_16__ {scalar_t__ pkt_flags; } ;
struct mbuf {struct mbuf* m_nextpkt; TYPE_1__ m_pkthdr; } ;
struct ifnet {int dummy; } ;
struct ifclassq {struct ifnet* ifcq_ifp; } ;
struct TYPE_18__ {scalar_t__ pktsched_ptype; } ;
typedef TYPE_3__ pktsched_pkt_t ;
typedef TYPE_4__* mbuf_t ;
struct TYPE_20__ {scalar_t__ fq_deficit; int fq_mbufq; } ;
typedef TYPE_5__ fq_t ;
struct TYPE_21__ {struct ifclassq* fqs_ifq; } ;
typedef TYPE_6__ fq_if_t ;
struct TYPE_17__ {int fcl_dequeue_bytes; int fcl_dequeue; } ;
struct TYPE_22__ {TYPE_2__ fcl_stat; } ;
typedef TYPE_7__ fq_if_classq_t ;
typedef scalar_t__ boolean_t ;
struct TYPE_19__ {int * m_nextpkt; } ;


 int ASSERT (int) ;
 scalar_t__ FALSE ;
 scalar_t__ MBUFQ_EMPTY (int *) ;
 scalar_t__ QP_MBUF ;
 scalar_t__ TRUE ;
 int _PKTSCHED_PKT_INIT (TYPE_3__*) ;
 struct mbuf* fq_getq_flow (TYPE_6__*,TYPE_5__*,TYPE_3__*) ;
 int ifclassq_set_packet_metadata (struct ifclassq*,struct ifnet*,struct mbuf*,scalar_t__) ;
 scalar_t__ pktsched_get_pkt_len (TYPE_3__*) ;

__attribute__((used)) static boolean_t
fq_getq_flow_mbuf(fq_if_t *fqs, fq_if_classq_t *fq_cl, fq_t *fq,
    u_int32_t byte_limit, u_int32_t pkt_limit, void **top, void **last,
    u_int32_t *byte_cnt, u_int32_t *pkt_cnt, boolean_t *qempty,
    u_int32_t pflags)
{
 struct mbuf *m;
 u_int32_t plen;
 pktsched_pkt_t pkt;
 boolean_t limit_reached = FALSE;
 struct ifclassq *ifq = fqs->fqs_ifq;
 struct ifnet *ifp = ifq->ifcq_ifp;

 while (fq->fq_deficit > 0 && limit_reached == FALSE &&
     !MBUFQ_EMPTY(&fq->fq_mbufq)) {

  _PKTSCHED_PKT_INIT(&pkt);
  m = fq_getq_flow(fqs, fq, &pkt);
  ASSERT(pkt.pktsched_ptype == QP_MBUF);

  plen = pktsched_get_pkt_len(&pkt);
  fq->fq_deficit -= plen;
  m->m_pkthdr.pkt_flags |= pflags;

  if (*top == ((void*)0)) {
   *top = m;
  } else {
   ASSERT(*last != ((void*)0));
   ASSERT((*(struct mbuf **)last)->m_nextpkt == ((void*)0));
   (*(struct mbuf **)last)->m_nextpkt = m;
  }
  *last = m;
  (*(mbuf_t *)last)->m_nextpkt = ((void*)0);
  fq_cl->fcl_stat.fcl_dequeue++;
  fq_cl->fcl_stat.fcl_dequeue_bytes += plen;
  *pkt_cnt += 1;
  *byte_cnt += plen;

  ifclassq_set_packet_metadata(ifq, ifp, m, QP_MBUF);


  if (*pkt_cnt >= pkt_limit || *byte_cnt >= byte_limit)
   limit_reached = TRUE;
 }

 *qempty = MBUFQ_EMPTY(&fq->fq_mbufq);
 return (limit_reached);
}
