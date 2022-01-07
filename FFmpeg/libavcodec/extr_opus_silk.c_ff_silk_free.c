
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int SilkContext ;


 int av_freep (int **) ;

void ff_silk_free(SilkContext **ps)
{
    av_freep(ps);
}
