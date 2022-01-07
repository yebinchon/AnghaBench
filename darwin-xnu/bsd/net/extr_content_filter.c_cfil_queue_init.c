
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cfil_queue {int q_mq; scalar_t__ q_end; scalar_t__ q_start; } ;


 int MBUFQ_INIT (int *) ;

__attribute__((used)) static inline void
cfil_queue_init(struct cfil_queue *cfq)
{
 cfq->q_start = 0;
 cfq->q_end = 0;
 MBUFQ_INIT(&cfq->q_mq);
}
