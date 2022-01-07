
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int chrV; int chrH; int lumV; int lumH; } ;
typedef TYPE_1__ SwsFilter ;


 int av_free (TYPE_1__*) ;
 int sws_freeVec (int ) ;

void sws_freeFilter(SwsFilter *filter)
{
    if (!filter)
        return;

    sws_freeVec(filter->lumH);
    sws_freeVec(filter->lumV);
    sws_freeVec(filter->chrH);
    sws_freeVec(filter->chrV);
    av_free(filter);
}
