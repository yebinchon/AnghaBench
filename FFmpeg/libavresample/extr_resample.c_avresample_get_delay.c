
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_7__ {TYPE_2__* resample; int resample_needed; } ;
struct TYPE_6__ {scalar_t__ padding_size; TYPE_1__* buffer; } ;
struct TYPE_5__ {scalar_t__ nb_samples; } ;
typedef TYPE_2__ ResampleContext ;
typedef TYPE_3__ AVAudioResampleContext ;


 int FFMAX (scalar_t__,int ) ;

int avresample_get_delay(AVAudioResampleContext *avr)
{
    ResampleContext *c = avr->resample;

    if (!avr->resample_needed || !avr->resample)
        return 0;

    return FFMAX(c->buffer->nb_samples - c->padding_size, 0);
}
