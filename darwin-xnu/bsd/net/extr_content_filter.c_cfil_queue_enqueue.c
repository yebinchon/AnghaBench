
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cfil_queue {size_t q_end; int q_mq; } ;
typedef int mbuf_t ;


 int CFIL_QUEUE_VERIFY (struct cfil_queue*) ;
 int MBUFQ_ENQUEUE (int *,int ) ;

__attribute__((used)) static void
cfil_queue_enqueue(struct cfil_queue *cfq, mbuf_t m, size_t len)
{
 CFIL_QUEUE_VERIFY(cfq);

 MBUFQ_ENQUEUE(&cfq->q_mq, m);
 cfq->q_end += len;

 CFIL_QUEUE_VERIFY(cfq);
}
