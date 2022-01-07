
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef size_t u_int32_t ;
struct ifclassq {scalar_t__ ifcq_disc; } ;
typedef int mbuf_svc_class_t ;
struct TYPE_4__ {int * fqs_classq; } ;
typedef TYPE_1__ fq_if_t ;
typedef int fq_if_classq_t ;
typedef int classq_pkt_type_t ;


 int CLASSQ_DEQUEUE_MAX_BYTE_LIMIT ;
 int TRUE ;
 int fq_if_dequeue (TYPE_1__*,int *,int,int ,void**,int *,int *,int *,int ,int *) ;
 size_t fq_if_service_to_priority (TYPE_1__*,int ) ;

__attribute__((used)) static void *
fq_if_dequeue_sc_classq(struct ifclassq *ifq, mbuf_svc_class_t svc,
    classq_pkt_type_t *ptype)
{
 void *top;
 fq_if_t *fqs = (fq_if_t *)ifq->ifcq_disc;
 fq_if_classq_t *fq_cl;
 u_int32_t pri;

 pri = fq_if_service_to_priority(fqs, svc);
 fq_cl = &fqs->fqs_classq[pri];

 fq_if_dequeue(fqs, fq_cl, 1, CLASSQ_DEQUEUE_MAX_BYTE_LIMIT,
     &top, ((void*)0), ((void*)0), ((void*)0), TRUE, ptype);
 return (top);
}
