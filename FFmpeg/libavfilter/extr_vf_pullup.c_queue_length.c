
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {struct TYPE_4__* next; } ;
typedef TYPE_1__ PullupField ;



__attribute__((used)) static int queue_length(PullupField *begin, PullupField *end)
{
    PullupField *f;
    int count = 1;

    if (!begin || !end)
        return 0;

    for (f = begin; f != end; f = f->next)
        count++;

    return count;
}
