
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_6__ {int rate; } ;
typedef TYPE_1__ hb_rate_t ;


 TYPE_1__* hb_audio_samplerate_get_next (TYPE_1__ const*) ;
 scalar_t__ hb_audio_samplerate_is_supported (int ,int ) ;

const hb_rate_t* hb_audio_samplerate_get_next_for_codec(const hb_rate_t *last,
                                                        uint32_t codec)
{
    while ((last = hb_audio_samplerate_get_next(last)) != ((void*)0))
        if (hb_audio_samplerate_is_supported(last->rate, codec))
            return last;


    return ((void*)0);
}
