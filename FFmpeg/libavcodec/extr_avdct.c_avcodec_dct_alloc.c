
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int * av_class; } ;
typedef TYPE_1__ AVDCT ;


 TYPE_1__* av_mallocz (int) ;
 int av_opt_set_defaults (TYPE_1__*) ;
 int avdct_class ;

AVDCT *avcodec_dct_alloc(void)
{
    AVDCT *dsp = av_mallocz(sizeof(AVDCT));

    if (!dsp)
        return ((void*)0);

    dsp->av_class = &avdct_class;
    av_opt_set_defaults(dsp);

    return dsp;
}
