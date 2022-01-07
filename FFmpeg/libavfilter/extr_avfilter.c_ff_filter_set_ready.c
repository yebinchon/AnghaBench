
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int ready; } ;
typedef TYPE_1__ AVFilterContext ;


 int FFMAX (int ,unsigned int) ;

void ff_filter_set_ready(AVFilterContext *filter, unsigned priority)
{
    filter->ready = FFMAX(filter->ready, priority);
}
