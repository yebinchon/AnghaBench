
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
struct cfil_queue {int q_start; } ;



__attribute__((used)) static inline uint64_t
cfil_queue_offset_first(struct cfil_queue *cfq)
{
 return (cfq->q_start);
}
