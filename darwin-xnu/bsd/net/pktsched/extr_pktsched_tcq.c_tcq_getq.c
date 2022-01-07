
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tcq_class {int cl_q; int * cl_sfb; TYPE_1__* cl_tif; } ;
typedef int pktsched_pkt_t ;
struct TYPE_2__ {int tif_ifq; } ;


 int IFCQ_LOCK_ASSERT_HELD (int ) ;
 int _getq (int *) ;
 void pktsched_pkt_encap (int *,int ,int ) ;
 scalar_t__ q_is_sfb (int *) ;
 int qptype (int *) ;
 void sfb_getq (int *,int *,int *) ;

__attribute__((used)) static inline void
tcq_getq(struct tcq_class *cl, pktsched_pkt_t *pkt)
{
 IFCQ_LOCK_ASSERT_HELD(cl->cl_tif->tif_ifq);

 if (q_is_sfb(&cl->cl_q) && cl->cl_sfb != ((void*)0)) {
  return (sfb_getq(cl->cl_sfb, &cl->cl_q, pkt));
 }

 return (pktsched_pkt_encap(pkt, qptype(&cl->cl_q), _getq(&cl->cl_q)));
}
