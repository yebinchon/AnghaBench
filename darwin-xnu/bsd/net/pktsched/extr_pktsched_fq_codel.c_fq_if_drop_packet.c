
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_24__ TYPE_5__ ;
typedef struct TYPE_23__ TYPE_4__ ;
typedef struct TYPE_22__ TYPE_3__ ;
typedef struct TYPE_21__ TYPE_2__ ;
typedef struct TYPE_20__ TYPE_1__ ;


typedef scalar_t__ uint64_t ;
typedef int uint32_t ;
struct TYPE_21__ {scalar_t__ pktsched_ptype; } ;
typedef TYPE_2__ pktsched_pkt_t ;
struct TYPE_22__ {size_t fq_sc_index; int fq_flags; } ;
typedef TYPE_3__ fq_t ;
struct TYPE_23__ {int fqs_ifq; TYPE_3__* fqs_large_flow; TYPE_5__* fqs_classq; } ;
typedef TYPE_4__ fq_if_t ;
struct TYPE_20__ {int fcl_drop_overflow; } ;
struct TYPE_24__ {TYPE_1__ fcl_stat; } ;
typedef TYPE_5__ fq_if_classq_t ;


 int FQF_NEW_FLOW ;
 int FQF_OLD_FLOW ;
 int IFCQ_CONVERT_LOCK (int ) ;
 int IFCQ_DROP_ADD (int ,int,int ) ;
 int PKTF_PRIV_GUARDED ;
 scalar_t__ QP_MBUF ;
 int VERIFY (int) ;
 int _PKTSCHED_PKT_INIT (TYPE_2__*) ;
 scalar_t__ fq_empty (TYPE_3__*) ;
 int fq_getq_flow_internal (TYPE_4__*,TYPE_3__*,TYPE_2__*) ;
 int fq_if_empty_new_flow (TYPE_3__*,TYPE_5__*,int) ;
 int fq_if_empty_old_flow (TYPE_4__*,TYPE_5__*,TYPE_3__*,int) ;
 int pktsched_free_pkt (TYPE_2__*) ;
 int pktsched_get_pkt_len (TYPE_2__*) ;
 int pktsched_get_pkt_vars (TYPE_2__*,int **,scalar_t__**,int *,int *,int *,int *) ;

inline void
fq_if_drop_packet(fq_if_t *fqs)
{
 fq_t *fq = fqs->fqs_large_flow;
 fq_if_classq_t *fq_cl;
 pktsched_pkt_t pkt;
 uint32_t *pkt_flags;
 uint64_t *pkt_timestamp;

 if (fq == ((void*)0))
  return;

 VERIFY(!fq_empty(fq));

 fq_cl = &fqs->fqs_classq[fq->fq_sc_index];
 _PKTSCHED_PKT_INIT(&pkt);
 (void)fq_getq_flow_internal(fqs, fq, &pkt);

 pktsched_get_pkt_vars(&pkt, &pkt_flags, &pkt_timestamp, ((void*)0), ((void*)0),
     ((void*)0), ((void*)0));

 IFCQ_CONVERT_LOCK(fqs->fqs_ifq);
 *pkt_timestamp = 0;
 if (pkt.pktsched_ptype == QP_MBUF)
  *pkt_flags &= ~PKTF_PRIV_GUARDED;

 if (fq_empty(fq)) {
  fqs->fqs_large_flow = ((void*)0);
  if (fq->fq_flags & FQF_OLD_FLOW) {
   fq_if_empty_old_flow(fqs, fq_cl, fq, 1);
  } else {
   VERIFY(fq->fq_flags & FQF_NEW_FLOW);
   fq_if_empty_new_flow(fq, fq_cl, 1);
  }
 }
 IFCQ_DROP_ADD(fqs->fqs_ifq, 1, pktsched_get_pkt_len(&pkt));

 pktsched_free_pkt(&pkt);
 fq_cl->fcl_stat.fcl_drop_overflow++;
}
