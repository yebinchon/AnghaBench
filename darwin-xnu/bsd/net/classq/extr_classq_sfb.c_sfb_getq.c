
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sfb {int dummy; } ;
typedef int pktsched_pkt_t ;
typedef int class_queue_t ;


 int FALSE ;
 int sfb_getq_flow (struct sfb*,int *,int ,int ,int *) ;

void
sfb_getq(struct sfb *sp, class_queue_t *q, pktsched_pkt_t *pkt)
{
 sfb_getq_flow(sp, q, 0, FALSE, pkt);
}
