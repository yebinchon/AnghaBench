
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cfil_queue {int q_mq; } ;
typedef int mbuf_t ;


 int MBUFQ_FIRST (int *) ;

__attribute__((used)) static mbuf_t
cfil_queue_first(struct cfil_queue *cfq)
{
 return (MBUFQ_FIRST(&cfq->q_mq));
}
