
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef size_t u_int32_t ;
struct ifclassq {scalar_t__ ifcq_disc; } ;
typedef int pktsched_pkt_t ;
typedef TYPE_2__* mbuf_t ;
typedef scalar_t__ mbuf_svc_class_t ;
struct TYPE_12__ {int fqs_throttle; int fqs_flags; int* fqs_bitmaps; TYPE_4__* fqs_classq; } ;
typedef TYPE_3__ fq_if_t ;
struct TYPE_10__ {int fcl_throttle_drops; } ;
struct TYPE_13__ {TYPE_1__ fcl_stat; } ;
typedef TYPE_4__ fq_if_classq_t ;
typedef int classq_pkt_type_t ;
typedef int boolean_t ;
struct TYPE_11__ {int m_flags; } ;





 int CLASSQEQ_SUCCESS_FC ;
 int ENOBUFS ;
 int EQFULL ;
 int EQSUSPENDED ;
 int FALSE ;
 int FQS_DRIVER_MANAGED ;
 int FQ_IF_CLASSQ_IDLE (TYPE_4__*) ;
 size_t FQ_IF_EB ;
 size_t FQ_IF_ER ;
 size_t FQ_IF_IB ;
 size_t FQ_IF_MAX_CLASSES ;
 int IFCQ_CONVERT_LOCK (struct ifclassq*) ;
 int IFCQ_INC_BYTES (struct ifclassq*,int) ;
 int IFCQ_INC_LEN (struct ifclassq*) ;
 int IFCQ_LOCK_ASSERT_HELD (struct ifclassq*) ;
 scalar_t__ MBUF_SC_BK_SYS ;
 int M_PKTHDR ;
 int QP_MBUF ;
 int TRUE ;
 int VERIFY (int) ;
 int fq_addq (TYPE_3__*,int *,TYPE_4__*) ;
 size_t fq_if_service_to_priority (TYPE_3__*,scalar_t__) ;
 int m_freem (TYPE_2__*) ;
 int pktsched_bit_set (size_t,int*) ;
 int pktsched_free_pkt (int *) ;
 int pktsched_get_pkt_len (int *) ;
 scalar_t__ pktsched_get_pkt_svc (int *) ;
 int pktsched_pkt_encap (int *,int ,void*) ;

int
fq_if_enqueue_classq(struct ifclassq *ifq, void *p, classq_pkt_type_t ptype,
    boolean_t *pdrop)
{
 u_int32_t pri;
 fq_if_t *fqs;
 fq_if_classq_t *fq_cl;
 int ret, len;
 mbuf_svc_class_t svc;
 pktsched_pkt_t pkt;

 IFCQ_LOCK_ASSERT_HELD(ifq);
 if ((ptype == QP_MBUF) && !(((mbuf_t)p)->m_flags & M_PKTHDR)) {
  IFCQ_CONVERT_LOCK(ifq);
  m_freem((mbuf_t)p);
  *pdrop = TRUE;
  return (ENOBUFS);
 }
 pktsched_pkt_encap(&pkt, ptype, p);

 fqs = (fq_if_t *)ifq->ifcq_disc;
 svc = pktsched_get_pkt_svc(&pkt);
 pri = fq_if_service_to_priority(fqs, svc);
 VERIFY(pri >= 0 && pri < FQ_IF_MAX_CLASSES);
 fq_cl = &fqs->fqs_classq[pri];

 if (svc == MBUF_SC_BK_SYS && fqs->fqs_throttle == 1) {

  fq_cl->fcl_stat.fcl_throttle_drops++;
  IFCQ_CONVERT_LOCK(ifq);
  pktsched_free_pkt(&pkt);
  *pdrop = TRUE;
  return (EQSUSPENDED);
 }

 len = pktsched_get_pkt_len(&pkt);
 ret = fq_addq(fqs, &pkt, fq_cl);
 if (!(fqs->fqs_flags & FQS_DRIVER_MANAGED) &&
     !FQ_IF_CLASSQ_IDLE(fq_cl)) {
  if (((fqs->fqs_bitmaps[FQ_IF_ER] | fqs->fqs_bitmaps[FQ_IF_EB]) &
      (1 << pri)) == 0) {




   pktsched_bit_set(pri, &fqs->fqs_bitmaps[FQ_IF_IB]);
  }
 }

 if (ret != 0) {
  if (ret == CLASSQEQ_SUCCESS_FC) {

   ret = EQFULL;
   *pdrop = FALSE;
  } else {
   *pdrop = TRUE;
   VERIFY(ret == 130 ||
       ret == 129 ||
       ret == 128);
   pktsched_free_pkt(&pkt);
   switch (ret) {
   case 130:
    return (ENOBUFS);
   case 129:
    return (EQFULL);
   case 128:
    return (EQSUSPENDED);
   }
  }
 } else {
  *pdrop = FALSE;
 }
 IFCQ_INC_LEN(ifq);
 IFCQ_INC_BYTES(ifq, len);
 return (ret);
}
