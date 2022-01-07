
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint64_t ;
struct cfil_queue {int q_mq; scalar_t__ q_end; scalar_t__ q_start; } ;


 int MBUFQ_DRAIN (int *) ;

__attribute__((used)) static inline uint64_t
cfil_queue_drain(struct cfil_queue *cfq)
{
 uint64_t drained = cfq->q_start - cfq->q_end;
 cfq->q_start = 0;
 cfq->q_end = 0;
 MBUFQ_DRAIN(&cfq->q_mq);

 return (drained);
}
