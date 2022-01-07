
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cfil_queue {int q_mq; } ;


 int MBUFQ_EMPTY (int *) ;

__attribute__((used)) static inline int
cfil_queue_empty(struct cfil_queue *cfq)
{
 return (MBUFQ_EMPTY(&cfq->q_mq));
}
