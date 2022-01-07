
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {double lfe_mix_level; double center_mix_level; double surround_mix_level; } ;
struct TYPE_5__ {TYPE_1__ in; } ;
typedef TYPE_2__ hb_audio_resample_t ;



void hb_audio_resample_set_mix_levels(hb_audio_resample_t *resample,
                                      double surround_mix_level,
                                      double center_mix_level,
                                      double lfe_mix_level)
{
    if (resample != ((void*)0))
    {
        resample->in.lfe_mix_level = lfe_mix_level;
        resample->in.center_mix_level = center_mix_level;
        resample->in.surround_mix_level = surround_mix_level;
    }
}
