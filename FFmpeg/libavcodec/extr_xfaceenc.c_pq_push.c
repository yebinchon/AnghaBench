
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int prob_ranges_idx; int * prob_ranges; } ;
typedef TYPE_1__ ProbRangesQueue ;
typedef int ProbRange ;


 int XFACE_PIXELS ;

__attribute__((used)) static inline int pq_push(ProbRangesQueue *pq, const ProbRange *p)
{
    if (pq->prob_ranges_idx >= XFACE_PIXELS * 2 - 1)
        return -1;
    pq->prob_ranges[pq->prob_ranges_idx++] = *p;
    return 0;
}
