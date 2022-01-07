
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int rate; char const* name; } ;
typedef TYPE_1__ hb_rate_t ;


 TYPE_1__* hb_audio_bitrate_get_next (TYPE_1__ const*) ;

const char*
ghb_audio_bitrate_get_short_name(int rate)
{
    const hb_rate_t *hb_rate, *first;
    for (first = hb_rate = hb_audio_bitrate_get_next(((void*)0)); hb_rate != ((void*)0);
         hb_rate = hb_audio_bitrate_get_next(hb_rate))
    {
        if (rate == hb_rate->rate)
        {
            return hb_rate->name;
        }
    }
    return first->name;
}
