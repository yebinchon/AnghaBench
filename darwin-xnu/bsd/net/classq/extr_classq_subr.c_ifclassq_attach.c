
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int32_t ;
struct ifclassq {int * ifcq_request; int ifcq_dequeue_sc_multi; int ifcq_dequeue_multi; int ifcq_dequeue_sc; int ifcq_dequeue; int * ifcq_enqueue; int * ifcq_disc; int ifcq_type; } ;
typedef int * ifclassq_req_func ;
typedef int * ifclassq_enq_func ;
typedef int ifclassq_deq_sc_multi_func ;
typedef int ifclassq_deq_sc_func ;
typedef int ifclassq_deq_multi_func ;
typedef int ifclassq_deq_func ;


 int IFCQ_LOCK_ASSERT_HELD (struct ifclassq*) ;
 int VERIFY (int ) ;

int
ifclassq_attach(struct ifclassq *ifq, u_int32_t type, void *discipline,
    ifclassq_enq_func enqueue, ifclassq_deq_func dequeue,
    ifclassq_deq_sc_func dequeue_sc, ifclassq_deq_multi_func dequeue_multi,
    ifclassq_deq_sc_multi_func dequeue_sc_multi, ifclassq_req_func request)
{
 IFCQ_LOCK_ASSERT_HELD(ifq);

 VERIFY(ifq->ifcq_disc == ((void*)0));
 VERIFY(enqueue != ((void*)0));
 VERIFY(request != ((void*)0));

 ifq->ifcq_type = type;
 ifq->ifcq_disc = discipline;
 ifq->ifcq_enqueue = enqueue;
 ifq->ifcq_dequeue = dequeue;
 ifq->ifcq_dequeue_sc = dequeue_sc;
 ifq->ifcq_dequeue_multi = dequeue_multi;
 ifq->ifcq_dequeue_sc_multi = dequeue_sc_multi;
 ifq->ifcq_request = request;

 return (0);
}
