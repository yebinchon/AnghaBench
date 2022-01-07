
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int prob; } ;
typedef TYPE_1__ PTable ;



__attribute__((used)) static int compare_by_prob(const void *a, const void *b)
{
    PTable a_val = *(PTable *) a;
    PTable b_val = *(PTable *) b;
    return a_val.prob - b_val.prob;
}
