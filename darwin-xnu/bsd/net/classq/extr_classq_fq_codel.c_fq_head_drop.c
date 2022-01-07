
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef scalar_t__ uint64_t ;
typedef int uint32_t ;
struct ifclassq {int dummy; } ;
struct TYPE_10__ {scalar_t__ pktsched_ptype; } ;
typedef TYPE_1__ pktsched_pkt_t ;
typedef int fq_t ;
struct TYPE_11__ {struct ifclassq* fqs_ifq; } ;
typedef TYPE_2__ fq_if_t ;


 int IFCQ_CONVERT_LOCK (struct ifclassq*) ;
 int IFCQ_DROP_ADD (struct ifclassq*,int,int ) ;
 int PKTF_PRIV_GUARDED ;
 scalar_t__ QP_MBUF ;
 int _PKTSCHED_PKT_INIT (TYPE_1__*) ;
 int * fq_getq_flow_internal (TYPE_2__*,int *,TYPE_1__*) ;
 int pktsched_free_pkt (TYPE_1__*) ;
 int pktsched_get_pkt_len (TYPE_1__*) ;
 int pktsched_get_pkt_vars (TYPE_1__*,int **,scalar_t__**,int *,int *,int *,int *) ;

void
fq_head_drop(fq_if_t *fqs, fq_t *fq)
{
 pktsched_pkt_t pkt;
 uint32_t *pkt_flags;
 uint64_t *pkt_timestamp;
 struct ifclassq *ifq = fqs->fqs_ifq;

 _PKTSCHED_PKT_INIT(&pkt);
 if (fq_getq_flow_internal(fqs, fq, &pkt) == ((void*)0))
  return;

 pktsched_get_pkt_vars(&pkt, &pkt_flags, &pkt_timestamp, ((void*)0), ((void*)0),
     ((void*)0), ((void*)0));

 *pkt_timestamp = 0;
 if (pkt.pktsched_ptype == QP_MBUF)
  *pkt_flags &= ~PKTF_PRIV_GUARDED;

 IFCQ_DROP_ADD(ifq, 1, pktsched_get_pkt_len(&pkt));
 IFCQ_CONVERT_LOCK(ifq);
 pktsched_free_pkt(&pkt);
}
