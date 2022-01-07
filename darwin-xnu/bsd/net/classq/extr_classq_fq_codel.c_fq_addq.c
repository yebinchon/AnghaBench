
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_38__ TYPE_5__ ;
typedef struct TYPE_37__ TYPE_4__ ;
typedef struct TYPE_36__ TYPE_3__ ;
typedef struct TYPE_35__ TYPE_2__ ;
typedef struct TYPE_34__ TYPE_1__ ;


typedef scalar_t__ uint8_t ;
typedef scalar_t__ uint64_t ;
typedef int uint32_t ;
typedef scalar_t__ u_int64_t ;
struct timespec {int tv_sec; scalar_t__ tv_nsec; } ;
struct TYPE_35__ {scalar_t__ pktsched_ptype; int pktsched_pkt; } ;
typedef TYPE_2__ pktsched_pkt_t ;
struct TYPE_36__ {scalar_t__ fq_ptype; int fq_flags; int fq_deficit; int fq_bytes; } ;
typedef TYPE_3__ fq_t ;
struct TYPE_37__ {int fqs_ifq; TYPE_3__* fqs_large_flow; } ;
typedef TYPE_4__ fq_if_t ;
struct TYPE_34__ {int fcl_newflows_cnt; int fcl_pkt_cnt; int fcl_byte_cnt; int fcl_drop_overflow; int fcl_flow_control_fail; int fcl_drop_early; int fcl_drop_memfailure; } ;
struct TYPE_38__ {int fcl_quantum; TYPE_1__ fcl_stat; int fcl_new_flows; } ;
typedef TYPE_5__ fq_if_classq_t ;


 int CLASSQEQ_DROP ;
 int CLASSQEQ_DROP_FC ;
 int CLASSQEQ_SUCCESS ;
 int CLASSQEQ_SUCCESS_FC ;
 int DTYPE_EARLY ;
 int DTYPE_FORCED ;
 int DTYPE_NODROP ;
 int FQF_FLOWCTL_CAPABLE ;
 int FQF_FLOWCTL_ON ;
 int FQF_NEW_FLOW ;
 int FQF_OLD_FLOW ;
 scalar_t__ FQ_IS_DELAYHIGH (TYPE_3__*) ;
 int IFCQ_CONVERT_LOCK (int ) ;
 scalar_t__ IPPROTO_TCP ;
 int NSEC_PER_SEC ;
 int PKTF_FLOW_ADV ;
 int PKTF_PRIV_GUARDED ;
 scalar_t__ QP_MBUF ;
 int STAILQ_INSERT_TAIL (int *,TYPE_3__*,int ) ;
 int * STAILQ_NEXT (TYPE_3__*,int ) ;
 int TRUE ;
 int VERIFY (int) ;
 int fq_actlink ;
 int fq_detect_dequeue_stall (TYPE_4__*,TYPE_3__*,TYPE_5__*,scalar_t__*) ;
 scalar_t__ fq_empty (TYPE_3__*) ;
 int fq_enqueue (TYPE_3__*,int ) ;
 int fq_head_drop (TYPE_4__*,TYPE_3__*) ;
 scalar_t__ fq_if_add_fcentry (TYPE_4__*,TYPE_2__*,int,scalar_t__,TYPE_5__*) ;
 scalar_t__ fq_if_at_drop_limit (TYPE_4__*) ;
 int fq_if_destroy_flow (TYPE_4__*,TYPE_5__*,TYPE_3__*) ;
 int fq_if_drop_packet (TYPE_4__*) ;
 TYPE_3__* fq_if_hash_pkt (TYPE_4__*,int,int ,scalar_t__,int ,scalar_t__) ;
 int fq_if_is_flow_heavy (TYPE_4__*,TYPE_3__*) ;
 int nanouptime (struct timespec*) ;
 int pktsched_get_pkt_len (TYPE_2__*) ;
 int pktsched_get_pkt_svc (TYPE_2__*) ;
 int pktsched_get_pkt_vars (TYPE_2__*,int**,scalar_t__**,int*,scalar_t__*,scalar_t__*,int*) ;

int
fq_addq(fq_if_t *fqs, pktsched_pkt_t *pkt, fq_if_classq_t *fq_cl)
{
 int droptype = DTYPE_NODROP, fc_adv = 0, ret = CLASSQEQ_SUCCESS;
 u_int64_t now;
 fq_t *fq = ((void*)0);
 uint64_t *pkt_timestamp;
 uint32_t *pkt_flags;
 uint32_t pkt_flowid, pkt_tx_start_seq;
 uint8_t pkt_proto, pkt_flowsrc;

 pktsched_get_pkt_vars(pkt, &pkt_flags, &pkt_timestamp, &pkt_flowid,
     &pkt_flowsrc, &pkt_proto, &pkt_tx_start_seq);

 if (pkt->pktsched_ptype == QP_MBUF) {

  VERIFY(!(*pkt_flags & PKTF_PRIV_GUARDED));
  *pkt_flags |= PKTF_PRIV_GUARDED;
 }

 if (*pkt_timestamp > 0) {
  now = *pkt_timestamp;
 } else {
  struct timespec now_ts;
  nanouptime(&now_ts);
  now = (now_ts.tv_sec * NSEC_PER_SEC) + now_ts.tv_nsec;
  *pkt_timestamp = now;
 }


 fq = fq_if_hash_pkt(fqs, pkt_flowid, pktsched_get_pkt_svc(pkt),
     now, TRUE, pkt->pktsched_ptype);
 if (fq == ((void*)0)) {

  fq_cl->fcl_stat.fcl_drop_memfailure++;
  IFCQ_CONVERT_LOCK(fqs->fqs_ifq);
  return (CLASSQEQ_DROP);
 }
 VERIFY(fq->fq_ptype == pkt->pktsched_ptype);

 fq_detect_dequeue_stall(fqs, fq, fq_cl, &now);

 if (FQ_IS_DELAYHIGH(fq)) {
  if ((fq->fq_flags & FQF_FLOWCTL_CAPABLE) &&
      (*pkt_flags & PKTF_FLOW_ADV)) {
   fc_adv = 1;




   if (pkt_proto != IPPROTO_TCP) {
    droptype = DTYPE_EARLY;
    fq_cl->fcl_stat.fcl_drop_early++;
   }
  } else {




   if (!fq_empty(fq)) {
    fq_head_drop(fqs, fq);
    droptype = DTYPE_NODROP;
   } else {
    droptype = DTYPE_EARLY;
   }
   fq_cl->fcl_stat.fcl_drop_early++;
  }

 }


 if (fc_adv == 1 && droptype != DTYPE_FORCED) {
  if (fq_if_add_fcentry(fqs, pkt, pkt_flowid, pkt_flowsrc,
      fq_cl)) {
   fq->fq_flags |= FQF_FLOWCTL_ON;

   if (droptype == DTYPE_NODROP) {
    ret = CLASSQEQ_SUCCESS_FC;
   } else {

    ret = CLASSQEQ_DROP_FC;
   }
  } else {




   droptype = DTYPE_FORCED;
   ret = CLASSQEQ_DROP_FC;
   fq_cl->fcl_stat.fcl_flow_control_fail++;
  }
 }







 if (droptype == DTYPE_NODROP && fq_if_at_drop_limit(fqs)) {
  if (fqs->fqs_large_flow == fq) {





   fq_head_drop(fqs, fq);
  } else {
   if (fqs->fqs_large_flow == ((void*)0)) {
    droptype = DTYPE_FORCED;
    fq_cl->fcl_stat.fcl_drop_overflow++;
    ret = CLASSQEQ_DROP;





    if (fq_empty(fq) && !(fq->fq_flags &
        (FQF_NEW_FLOW | FQF_OLD_FLOW))) {
     fq_if_destroy_flow(fqs, fq_cl, fq);
     fq = ((void*)0);
    }
   } else {
    fq_if_drop_packet(fqs);
   }
  }
 }

 if (droptype == DTYPE_NODROP) {
  uint32_t pkt_len = pktsched_get_pkt_len(pkt);
  fq_enqueue(fq, pkt->pktsched_pkt);
  fq->fq_bytes += pkt_len;
  fq_cl->fcl_stat.fcl_byte_cnt += pkt_len;
  fq_cl->fcl_stat.fcl_pkt_cnt++;





  fq_if_is_flow_heavy(fqs, fq);
 } else {
  IFCQ_CONVERT_LOCK(fqs->fqs_ifq);
  return ((ret != CLASSQEQ_SUCCESS) ? ret : CLASSQEQ_DROP);
 }





 if ((fq->fq_flags & (FQF_NEW_FLOW|FQF_OLD_FLOW)) == 0) {
  VERIFY(STAILQ_NEXT(fq, fq_actlink) == ((void*)0));
  STAILQ_INSERT_TAIL(&fq_cl->fcl_new_flows, fq, fq_actlink);
  fq->fq_flags |= FQF_NEW_FLOW;

  fq_cl->fcl_stat.fcl_newflows_cnt++;

  fq->fq_deficit = fq_cl->fcl_quantum;
 }
 return (ret);
}
