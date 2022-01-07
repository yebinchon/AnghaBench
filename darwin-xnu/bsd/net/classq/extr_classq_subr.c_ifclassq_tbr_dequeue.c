
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ifclassq {int dummy; } ;
typedef int classq_pkt_type_t ;


 int FALSE ;
 int MBUF_SC_UNSPEC ;
 void* ifclassq_tbr_dequeue_common (struct ifclassq*,int ,int ,int *) ;

void *
ifclassq_tbr_dequeue(struct ifclassq *ifq, classq_pkt_type_t *ptype)
{
 return (ifclassq_tbr_dequeue_common(ifq, MBUF_SC_UNSPEC, FALSE, ptype));
}
