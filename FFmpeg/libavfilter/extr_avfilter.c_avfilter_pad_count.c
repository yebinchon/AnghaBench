
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ name; } ;
typedef TYPE_1__ AVFilterPad ;



int avfilter_pad_count(const AVFilterPad *pads)
{
    int count;

    if (!pads)
        return 0;

    for (count = 0; pads->name; count++)
        pads++;
    return count;
}
