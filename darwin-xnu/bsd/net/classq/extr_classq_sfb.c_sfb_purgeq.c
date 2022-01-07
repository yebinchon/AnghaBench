
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u_int32_t ;
struct sfb {TYPE_1__* sfb_ifp; } ;
typedef int pktsched_pkt_t ;
typedef int class_queue_t ;
struct TYPE_2__ {int if_snd; } ;


 int IFCQ_CONVERT_LOCK (int *) ;
 int TRUE ;
 int pktsched_free_pkt (int *) ;
 scalar_t__ pktsched_get_pkt_len (int *) ;
 int * sfb_getq_flow (struct sfb*,int *,scalar_t__,int ,int *) ;

void
sfb_purgeq(struct sfb *sp, class_queue_t *q, u_int32_t flow, u_int32_t *packets,
    u_int32_t *bytes)
{
 u_int32_t cnt = 0, len = 0;
 pktsched_pkt_t pkt;

 IFCQ_CONVERT_LOCK(&sp->sfb_ifp->if_snd);
 while (sfb_getq_flow(sp, q, flow, TRUE, &pkt) != ((void*)0)) {
  cnt++;
  len += pktsched_get_pkt_len(&pkt);
  pktsched_free_pkt(&pkt);
 }

 if (packets != ((void*)0))
  *packets = cnt;
 if (bytes != ((void*)0))
  *bytes = len;
}
