
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef size_t u_int32_t ;
struct ifclassq {scalar_t__ ifcq_disc; } ;
typedef int mbuf_svc_class_t ;
struct TYPE_8__ {int fqs_ptype; TYPE_3__* fqs_classq; } ;
typedef TYPE_2__ fq_if_t ;
struct TYPE_7__ {scalar_t__ fcl_pkt_cnt; } ;
struct TYPE_9__ {TYPE_1__ fcl_stat; } ;
typedef TYPE_3__ fq_if_classq_t ;
typedef int (* fq_if_append_pkt_t ) (void*,void*) ;
typedef int classq_pkt_type_t ;



 int TRUE ;
 int VERIFY (int ) ;
 int fq_if_append_mbuf (void*,void*) ;
 int fq_if_dequeue (TYPE_2__*,TYPE_3__*,size_t,size_t,void**,void**,size_t*,size_t*,int ,int *) ;
 size_t fq_if_service_to_priority (TYPE_2__*,int ) ;

int
fq_if_dequeue_sc_classq_multi(struct ifclassq *ifq, mbuf_svc_class_t svc,
    u_int32_t maxpktcnt, u_int32_t maxbytecnt, void **first_packet,
    void **last_packet, u_int32_t *retpktcnt, u_int32_t *retbytecnt,
    classq_pkt_type_t *ptype)
{
#pragma unused(maxpktcnt, maxbytecnt, first_packet, last_packet, retpktcnt, retbytecnt)
 fq_if_t *fqs = (fq_if_t *)ifq->ifcq_disc;
 u_int32_t pri;
 u_int32_t total_pktcnt = 0, total_bytecnt = 0;
 fq_if_classq_t *fq_cl;
 void *first = ((void*)0), *last = ((void*)0);
 fq_if_append_pkt_t append_pkt;

 switch (fqs->fqs_ptype) {
 case 128:
  append_pkt = fq_if_append_mbuf;
  break;


 default:
  VERIFY(0);

 }

 pri = fq_if_service_to_priority(fqs, svc);
 fq_cl = &fqs->fqs_classq[pri];






 while (total_pktcnt < maxpktcnt && total_bytecnt < maxbytecnt &&
     fq_cl->fcl_stat.fcl_pkt_cnt > 0) {
  void *top, *tail;
  u_int32_t pktcnt = 0, bytecnt = 0;
  fq_if_dequeue(fqs, fq_cl, (maxpktcnt - total_pktcnt),
      (maxbytecnt - total_bytecnt), &top, &tail, &pktcnt,
      &bytecnt, TRUE, ptype);
  if (first == ((void*)0)) {
   first = top;
   total_pktcnt = pktcnt;
   total_bytecnt = bytecnt;
  } else {
   append_pkt(last, top);
   total_pktcnt += pktcnt;
   total_bytecnt += bytecnt;
  }
  last = tail;
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
