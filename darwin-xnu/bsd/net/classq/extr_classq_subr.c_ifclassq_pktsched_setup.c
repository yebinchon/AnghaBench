
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ifnet {int if_eflags; int if_output_sched_model; } ;
struct ifclassq {int ifcq_sflags; struct ifnet* ifcq_ifp; } ;
typedef int classq_pkt_type_t ;


 int IFCQ_LOCK_ASSERT_HELD (struct ifclassq*) ;
 int IFEF_TXSTART ;



 int PKTSCHEDT_FQ_CODEL ;
 int PKTSCHEDT_QFQ ;
 int PKTSCHEDT_TCQ ;
 int QP_MBUF ;
 int VERIFY (int) ;
 int ifclassq_sched_fq_codel ;
 int pktsched_setup (struct ifclassq*,int ,int ,int ) ;

int
ifclassq_pktsched_setup(struct ifclassq *ifq)
{
 struct ifnet *ifp = ifq->ifcq_ifp;
 classq_pkt_type_t ptype = QP_MBUF;
 int err = 0;

 IFCQ_LOCK_ASSERT_HELD(ifq);
 VERIFY(ifp->if_eflags & IFEF_TXSTART);

 switch (ifp->if_output_sched_model) {
 case 130:
  if (ifclassq_sched_fq_codel != 0) {
   err = pktsched_setup(ifq, PKTSCHEDT_FQ_CODEL,
       ifq->ifcq_sflags, ptype);
  } else {
   err = pktsched_setup(ifq, PKTSCHEDT_TCQ,
       ifq->ifcq_sflags, ptype);
  }
  break;

 case 128:
  if (ifclassq_sched_fq_codel != 0) {
   err = pktsched_setup(ifq, PKTSCHEDT_FQ_CODEL,
       ifq->ifcq_sflags, ptype);
  } else {
   err = pktsched_setup(ifq, PKTSCHEDT_QFQ,
       ifq->ifcq_sflags, ptype);
  }
  break;
 case 129:
  err = pktsched_setup(ifq, PKTSCHEDT_FQ_CODEL,
      ifq->ifcq_sflags, ptype);
  break;
 default:
  VERIFY(0);

 }

 return (err);
}
