
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int sample_rate; } ;
struct TYPE_5__ {TYPE_1__ in; } ;
typedef TYPE_2__ hb_audio_resample_t ;



void hb_audio_resample_set_sample_rate(hb_audio_resample_t *resample,
                                       int sample_rate)
{
    if (resample != ((void*)0))
    {
        resample->in.sample_rate = sample_rate;
    }
}
