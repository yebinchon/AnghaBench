
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_4__ {int rate; } ;
typedef TYPE_1__ hb_rate_t ;


 TYPE_1__* hb_audio_samplerate_get_next_for_codec (TYPE_1__ const*,int ) ;

int hb_audio_samplerate_find_closest(int samplerate, uint32_t codec)
{
    const hb_rate_t * rate, * prev, * next;

    rate = prev = next = hb_audio_samplerate_get_next_for_codec(((void*)0), codec);

    if (rate == ((void*)0))
    {

        return 0;
    }

    while (rate != ((void*)0) && next->rate < samplerate)
    {
        rate = hb_audio_samplerate_get_next_for_codec(rate, codec);
        if (rate != ((void*)0))
        {
            prev = next;
            next = rate;
        }
    }

    int delta_prev = samplerate - prev->rate;
    int delta_next = next->rate - samplerate;
    if (delta_prev <= delta_next)
    {
        return prev->rate;
    }
    else
    {
        return next->rate;
    }
}
