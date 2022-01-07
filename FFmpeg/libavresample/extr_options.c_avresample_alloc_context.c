
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int * av_class; } ;
typedef TYPE_1__ AVAudioResampleContext ;


 TYPE_1__* av_mallocz (int) ;
 int av_opt_set_defaults (TYPE_1__*) ;
 int av_resample_context_class ;

AVAudioResampleContext *avresample_alloc_context(void)
{
    AVAudioResampleContext *avr;

    avr = av_mallocz(sizeof(*avr));
    if (!avr)
        return ((void*)0);

    avr->av_class = &av_resample_context_class;
    av_opt_set_defaults(avr);

    return avr;
}
