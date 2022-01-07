
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef scalar_t__ u_int32_t ;
struct ifclassq {scalar_t__ ifcq_disc; } ;
struct TYPE_8__ {int fqs_ptype; int* fqs_bitmaps; TYPE_3__* fqs_classq; } ;
typedef TYPE_2__ fq_if_t ;
struct TYPE_7__ {int fcl_flows_cnt; } ;
struct TYPE_9__ {scalar_t__ fcl_budget; int fcl_quantum; TYPE_1__ fcl_stat; int fcl_drr_max; } ;
typedef TYPE_3__ fq_if_classq_t ;
typedef int (* fq_if_append_pkt_t ) (void*,void*) ;
typedef int classq_pkt_type_t ;


 int ASSERT (int) ;
 int FALSE ;
 int FQ_IF_CLASSQ_IDLE (TYPE_3__*) ;
 size_t FQ_IF_EB ;
 size_t FQ_IF_ER ;
 size_t FQ_IF_IB ;
 int IFCQ_LOCK_ASSERT_HELD (struct ifclassq*) ;
 int IFCQ_XMIT_ADD (struct ifclassq*,scalar_t__,scalar_t__) ;

 int VERIFY (int) ;
 int fq_if_append_mbuf (void*,void*) ;
 int fq_if_dequeue (TYPE_2__*,TYPE_3__*,scalar_t__,scalar_t__,void**,void**,scalar_t__*,scalar_t__*,int ,int*) ;
 int min (int ,int ) ;
 int pktsched_bit_clr (int,int*) ;
 int pktsched_bit_set (int,int*) ;
 int pktsched_ffs (int) ;

int
fq_if_dequeue_classq_multi(struct ifclassq *ifq, u_int32_t maxpktcnt,
    u_int32_t maxbytecnt, void **first_packet,
    void **last_packet, u_int32_t *retpktcnt, u_int32_t *retbytecnt,
    classq_pkt_type_t *ptype)
{
 void *top = ((void*)0), *tail = ((void*)0), *first, *last;
 u_int32_t pktcnt = 0, bytecnt = 0, total_pktcnt, total_bytecnt;
 fq_if_t *fqs;
 fq_if_classq_t *fq_cl;
 int pri;
 fq_if_append_pkt_t append_pkt;

 IFCQ_LOCK_ASSERT_HELD(ifq);

 fqs = (fq_if_t *)ifq->ifcq_disc;

 switch (fqs->fqs_ptype) {
 case 128:
  append_pkt = fq_if_append_mbuf;
  break;


 default:
  VERIFY(0);

 }

 first = last = ((void*)0);
 total_pktcnt = total_bytecnt = 0;
 *ptype = fqs->fqs_ptype;

 for (;;) {
  classq_pkt_type_t tmp_ptype;
  if (fqs->fqs_bitmaps[FQ_IF_ER] == 0 &&
      fqs->fqs_bitmaps[FQ_IF_EB] == 0) {
   fqs->fqs_bitmaps[FQ_IF_EB] = fqs->fqs_bitmaps[FQ_IF_IB];
   fqs->fqs_bitmaps[FQ_IF_IB] = 0;
   if (fqs->fqs_bitmaps[FQ_IF_EB] == 0)
    break;
  }
  pri = pktsched_ffs(fqs->fqs_bitmaps[FQ_IF_ER]);
  if (pri == 0) {





   pri = pktsched_ffs(fqs->fqs_bitmaps[FQ_IF_EB]);
   VERIFY(pri > 0);
   pktsched_bit_clr((pri - 1),
       &fqs->fqs_bitmaps[FQ_IF_EB]);
   pktsched_bit_set((pri - 1),
       &fqs->fqs_bitmaps[FQ_IF_ER]);
  }
  pri--;
  fq_cl = &fqs->fqs_classq[pri];

  if (fq_cl->fcl_budget <= 0) {

   fq_cl->fcl_budget += (min(fq_cl->fcl_drr_max,
       fq_cl->fcl_stat.fcl_flows_cnt) *
       fq_cl->fcl_quantum);
   if (fq_cl->fcl_budget <= 0)
    goto state_change;
  }
  fq_if_dequeue(fqs, fq_cl, (maxpktcnt - total_pktcnt),
      (maxbytecnt - total_bytecnt), &top, &tail, &pktcnt,
      &bytecnt, FALSE, &tmp_ptype);
  if (top != ((void*)0)) {
   ASSERT(tmp_ptype == *ptype);
   ASSERT(pktcnt > 0 && bytecnt > 0);
   if (first == ((void*)0)) {
    first = top;
    last = tail;
    total_pktcnt = pktcnt;
    total_bytecnt = bytecnt;
   } else {
    append_pkt(last, top);
    last = tail;
    total_pktcnt += pktcnt;
    total_bytecnt += bytecnt;
   }
   append_pkt(last, ((void*)0));
   fq_cl->fcl_budget -= bytecnt;
   pktcnt = 0;
   bytecnt = 0;
  }





state_change:
  if (!FQ_IF_CLASSQ_IDLE(fq_cl)) {
   if (fq_cl->fcl_budget <= 0) {
    pktsched_bit_set(pri,
        &fqs->fqs_bitmaps[FQ_IF_IB]);
    pktsched_bit_clr(pri,
        &fqs->fqs_bitmaps[FQ_IF_ER]);
   }
  } else {
   pktsched_bit_clr(pri, &fqs->fqs_bitmaps[FQ_IF_ER]);
   VERIFY(((fqs->fqs_bitmaps[FQ_IF_ER] |
       fqs->fqs_bitmaps[FQ_IF_EB] |
       fqs->fqs_bitmaps[FQ_IF_IB])&(1 << pri)) == 0);
   fq_cl->fcl_budget = 0;
  }
  if (total_pktcnt >= maxpktcnt || total_bytecnt >= maxbytecnt)
   break;
 }
 if (first != ((void*)0)) {
  if (first_packet != ((void*)0))
   *first_packet = first;
  if (last_packet != ((void*)0))
   *last_packet = last;
  if (retpktcnt != ((void*)0))
   *retpktcnt = total_pktcnt;
  if (retbytecnt != ((void*)0))
   *retbytecnt = total_bytecnt;
  IFCQ_XMIT_ADD(ifq, total_pktcnt, total_bytecnt);
 } else {
  if (first_packet != ((void*)0))
   *first_packet = ((void*)0);
  if (last_packet != ((void*)0))
   *last_packet = ((void*)0);
  if (retpktcnt != ((void*)0))
   *retpktcnt = 0;
  if (retbytecnt != ((void*)0))
   *retbytecnt = 0;
 }
 return (0);
}
