
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ifclassq {int dummy; } ;
typedef int mbuf_svc_class_t ;
typedef int classq_pkt_type_t ;


 int TRUE ;
 void* ifclassq_tbr_dequeue_common (struct ifclassq*,int ,int ,int *) ;

void *
ifclassq_tbr_dequeue_sc(struct ifclassq *ifq, mbuf_svc_class_t sc,
    classq_pkt_type_t *ptype)
{
 return (ifclassq_tbr_dequeue_common(ifq, sc, TRUE, ptype));
}
