
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_19__ TYPE_3__ ;
typedef struct TYPE_18__ TYPE_2__ ;
typedef struct TYPE_17__ TYPE_1__ ;


typedef scalar_t__ u_int32_t ;
typedef int pktsched_pkt_t ;
struct TYPE_17__ {size_t fq_sc_index; int fq_flags; } ;
typedef TYPE_1__ fq_t ;
struct TYPE_18__ {int * fqs_bitmaps; int fqs_ifq; TYPE_3__* fqs_classq; } ;
typedef TYPE_2__ fq_if_t ;
struct TYPE_19__ {int fcl_pri; } ;
typedef TYPE_3__ fq_if_classq_t ;


 int FQF_NEW_FLOW ;
 int FQF_OLD_FLOW ;
 scalar_t__ FQ_IF_CLASSQ_IDLE (TYPE_3__*) ;
 int FQ_IF_ER ;
 int FQ_IF_MAX_STATE ;
 int IFCQ_DROP_ADD (int ,scalar_t__,scalar_t__) ;
 int _PKTSCHED_PKT_INIT (int *) ;
 int * fq_getq_flow (TYPE_2__*,TYPE_1__*,int *) ;
 int fq_if_destroy_flow (TYPE_2__*,TYPE_3__*,TYPE_1__*) ;
 int fq_if_empty_new_flow (TYPE_1__*,TYPE_3__*,int) ;
 int fq_if_empty_old_flow (TYPE_2__*,TYPE_3__*,TYPE_1__*,int) ;
 int pktsched_bit_clr (int ,int *) ;
 int pktsched_free_pkt (int *) ;
 scalar_t__ pktsched_get_pkt_len (int *) ;

__attribute__((used)) static void
fq_if_purge_flow(fq_if_t *fqs, fq_t *fq, u_int32_t *pktsp,
    u_int32_t *bytesp)
{
 fq_if_classq_t *fq_cl;
 u_int32_t pkts, bytes;
 pktsched_pkt_t pkt;

 fq_cl = &fqs->fqs_classq[fq->fq_sc_index];
 pkts = bytes = 0;
 _PKTSCHED_PKT_INIT(&pkt);
 while (fq_getq_flow(fqs, fq, &pkt) != ((void*)0)) {
  pkts++;
  bytes += pktsched_get_pkt_len(&pkt);
  pktsched_free_pkt(&pkt);
 }
 IFCQ_DROP_ADD(fqs->fqs_ifq, pkts, bytes);

 if (fq->fq_flags & FQF_NEW_FLOW) {
  fq_if_empty_new_flow(fq, fq_cl, 0);
 } else if (fq->fq_flags & FQF_OLD_FLOW) {
  fq_if_empty_old_flow(fqs, fq_cl, fq, 0);
 }

 fq_if_destroy_flow(fqs, fq_cl, fq);

 if (FQ_IF_CLASSQ_IDLE(fq_cl)) {
  int i;
  for (i = FQ_IF_ER; i < FQ_IF_MAX_STATE; i++) {
   pktsched_bit_clr(fq_cl->fcl_pri,
       &fqs->fqs_bitmaps[i]);
  }
 }
 if (pktsp != ((void*)0))
  *pktsp = pkts;
 if (bytesp != ((void*)0))
  *bytesp = bytes;
}
