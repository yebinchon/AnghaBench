
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_21__ TYPE_3__ ;
typedef struct TYPE_20__ TYPE_2__ ;
typedef struct TYPE_19__ TYPE_1__ ;


typedef scalar_t__ uint64_t ;
typedef int uint32_t ;
typedef scalar_t__ u_int64_t ;
struct timespec {int tv_sec; scalar_t__ tv_nsec; } ;
struct TYPE_19__ {scalar_t__ pktsched_ptype; } ;
typedef TYPE_1__ pktsched_pkt_t ;
typedef scalar_t__ int64_t ;
struct TYPE_20__ {size_t fq_sc_index; scalar_t__ fq_min_qdelay; scalar_t__ fq_updatetime; int fq_flags; scalar_t__ fq_getqtime; } ;
typedef TYPE_2__ fq_t ;
struct TYPE_21__ {scalar_t__ fqs_target_qdelay; scalar_t__ fqs_update_interval; int * fqs_classq; } ;
typedef TYPE_3__ fq_if_t ;
typedef int fq_if_classq_t ;


 int FQF_FLOWCTL_ON ;
 int FQ_CLEAR_DELAY_HIGH (TYPE_2__*) ;
 int FQ_IS_DELAYHIGH (TYPE_2__*) ;
 int FQ_SET_DELAY_HIGH (TYPE_2__*) ;
 int NSEC_PER_SEC ;
 int PKTF_PRIV_GUARDED ;
 scalar_t__ QP_MBUF ;
 scalar_t__ fq_empty (TYPE_2__*) ;
 void* fq_getq_flow_internal (TYPE_3__*,TYPE_2__*,TYPE_1__*) ;
 int fq_if_flow_feedback (TYPE_3__*,TYPE_2__*,int *) ;
 int fq_if_is_flow_heavy (TYPE_3__*,TYPE_2__*) ;
 int nanouptime (struct timespec*) ;
 int pktsched_get_pkt_vars (TYPE_1__*,int **,scalar_t__**,int *,int *,int *,int *) ;

void *
fq_getq_flow(fq_if_t *fqs, fq_t *fq, pktsched_pkt_t *pkt)
{
 void *p;
 fq_if_classq_t *fq_cl;
 u_int64_t now;
 int64_t qdelay = 0;
 struct timespec now_ts;
 uint32_t *pkt_flags, pkt_tx_start_seq;
 uint64_t *pkt_timestamp;

 p = fq_getq_flow_internal(fqs, fq, pkt);
 if (p == ((void*)0))
  return (((void*)0));

 pktsched_get_pkt_vars(pkt, &pkt_flags, &pkt_timestamp, ((void*)0), ((void*)0),
     ((void*)0), &pkt_tx_start_seq);

 nanouptime(&now_ts);
 now = (now_ts.tv_sec * NSEC_PER_SEC) + now_ts.tv_nsec;


 if (now > *pkt_timestamp)
  qdelay = now - *pkt_timestamp;
 fq_cl = &fqs->fqs_classq[fq->fq_sc_index];

 if (fq->fq_min_qdelay == 0 ||
     (qdelay > 0 && (u_int64_t)qdelay < fq->fq_min_qdelay))
  fq->fq_min_qdelay = qdelay;
 if (now >= fq->fq_updatetime) {
  if (fq->fq_min_qdelay > fqs->fqs_target_qdelay) {
   if (!FQ_IS_DELAYHIGH(fq))
    FQ_SET_DELAY_HIGH(fq);
  } else {
   FQ_CLEAR_DELAY_HIGH(fq);
  }



  fq->fq_updatetime = now + fqs->fqs_update_interval;
  fq->fq_min_qdelay = 0;
 }
 if (!FQ_IS_DELAYHIGH(fq) || fq_empty(fq)) {
  FQ_CLEAR_DELAY_HIGH(fq);
  if (fq->fq_flags & FQF_FLOWCTL_ON) {
   fq_if_flow_feedback(fqs, fq, fq_cl);
  }
 }

 if (fq_empty(fq)) {

  fq->fq_getqtime = 0;
 } else {
  fq->fq_getqtime = now;
 }
 fq_if_is_flow_heavy(fqs, fq);

 *pkt_timestamp = 0;
 if (pkt->pktsched_ptype == QP_MBUF)
  *pkt_flags &= ~PKTF_PRIV_GUARDED;

 return (p);
}
