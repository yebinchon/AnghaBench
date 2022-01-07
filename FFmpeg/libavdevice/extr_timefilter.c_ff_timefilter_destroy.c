
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int TimeFilter ;


 int av_freep (int **) ;

void ff_timefilter_destroy(TimeFilter *self)
{
    av_freep(&self);
}
