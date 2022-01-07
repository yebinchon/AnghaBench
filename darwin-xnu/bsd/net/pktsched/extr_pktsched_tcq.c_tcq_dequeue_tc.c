
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tcq_if {int dummy; } ;
typedef int pktsched_pkt_t ;
typedef int mbuf_svc_class_t ;


 int tcq_dequeue_cl (struct tcq_if*,int *,int ,int *) ;

void
tcq_dequeue_tc(struct tcq_if *tif, mbuf_svc_class_t sc, pktsched_pkt_t *pkt)
{
 tcq_dequeue_cl(tif, ((void*)0), sc, pkt);
}
