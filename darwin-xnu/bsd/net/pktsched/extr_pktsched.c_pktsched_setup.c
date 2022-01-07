
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int32_t ;
struct ifclassq {int ifcq_type; int ifcq_flags; int * ifcq_request; int * ifcq_dequeue_sc; int * ifcq_dequeue; int * ifcq_enqueue; int * ifcq_disc; } ;
typedef int classq_pkt_type_t ;


 int ENXIO ;
 int IFCQF_ENABLED ;
 int IFCQ_LOCK_ASSERT_HELD (struct ifclassq*) ;

 scalar_t__ PKTSCHEDT_NONE ;


 int VERIFY (int) ;
 int fq_if_setup_ifclassq (struct ifclassq*,int,int ) ;
 scalar_t__ machclk_freq ;
 int pktsched_teardown (struct ifclassq*) ;
 int qfq_setup_ifclassq (struct ifclassq*,int,int ) ;
 int tcq_setup_ifclassq (struct ifclassq*,int,int ) ;

int
pktsched_setup(struct ifclassq *ifq, u_int32_t scheduler, u_int32_t sflags,
    classq_pkt_type_t ptype)
{
 int error = 0;
 u_int32_t rflags;

 IFCQ_LOCK_ASSERT_HELD(ifq);

 VERIFY(machclk_freq != 0);


 if (ifq->ifcq_type == scheduler)
  return (0);





 rflags = (ifq->ifcq_flags & IFCQF_ENABLED);

 if (ifq->ifcq_type != PKTSCHEDT_NONE) {
  (void) pktsched_teardown(ifq);


  VERIFY(ifq->ifcq_type == PKTSCHEDT_NONE);
  VERIFY(ifq->ifcq_disc == ((void*)0));
  VERIFY(ifq->ifcq_enqueue == ((void*)0));
  VERIFY(ifq->ifcq_dequeue == ((void*)0));
  VERIFY(ifq->ifcq_dequeue_sc == ((void*)0));
  VERIFY(ifq->ifcq_request == ((void*)0));
 }

 switch (scheduler) {
 case 128:
  error = tcq_setup_ifclassq(ifq, sflags, ptype);
  break;

 case 129:
  error = qfq_setup_ifclassq(ifq, sflags, ptype);
  break;
 case 130:
  error = fq_if_setup_ifclassq(ifq, sflags, ptype);
  break;
 default:
  error = ENXIO;
  break;
 }

 if (error == 0)
  ifq->ifcq_flags |= rflags;

 return (error);
}
