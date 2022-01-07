
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef scalar_t__ uint32_t ;
struct ifclassq {int dummy; } ;
typedef int pktsched_pkt_t ;
struct TYPE_10__ {scalar_t__ fq_bytes; size_t fq_sc_index; scalar_t__ fq_getqtime; int fq_ptype; } ;
typedef TYPE_2__ fq_t ;
struct TYPE_11__ {TYPE_4__* fqs_classq; struct ifclassq* fqs_ifq; } ;
typedef TYPE_3__ fq_if_t ;
struct TYPE_9__ {int fcl_pkt_cnt; int fcl_byte_cnt; } ;
struct TYPE_12__ {TYPE_1__ fcl_stat; } ;
typedef TYPE_4__ fq_if_classq_t ;


 int IFCQ_DEC_BYTES (struct ifclassq*,scalar_t__) ;
 int IFCQ_DEC_LEN (struct ifclassq*) ;
 int VERIFY (int) ;
 int fq_dequeue (TYPE_2__*,void*) ;
 scalar_t__ fq_empty (TYPE_2__*) ;
 scalar_t__ pktsched_get_pkt_len (int *) ;
 int pktsched_pkt_encap (int *,int ,void*) ;

void *
fq_getq_flow_internal(fq_if_t *fqs, fq_t *fq, pktsched_pkt_t *pkt)
{
 void *p;
 uint32_t plen;
 fq_if_classq_t *fq_cl;
 struct ifclassq *ifq = fqs->fqs_ifq;

 fq_dequeue(fq, p);
 if (p == ((void*)0))
  return (((void*)0));

 pktsched_pkt_encap(pkt, fq->fq_ptype, p);
 plen = pktsched_get_pkt_len(pkt);

 VERIFY(fq->fq_bytes >= plen);
 fq->fq_bytes -= plen;

 fq_cl = &fqs->fqs_classq[fq->fq_sc_index];
 fq_cl->fcl_stat.fcl_byte_cnt -= plen;
 fq_cl->fcl_stat.fcl_pkt_cnt--;
 IFCQ_DEC_LEN(ifq);
 IFCQ_DEC_BYTES(ifq, plen);


 if (fq_empty(fq))
  fq->fq_getqtime = 0;

 return (p);
}
