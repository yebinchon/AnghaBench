
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int name; } ;
typedef TYPE_1__ hb_rate_t ;


 TYPE_1__* hb_audio_bitrate_get_next (TYPE_1__ const*) ;
 int strncmp (char const*,int ,int) ;

const hb_rate_t*
ghb_lookup_audio_bitrate(const char *name)
{

    const hb_rate_t *hb_rate;
    for (hb_rate = hb_audio_bitrate_get_next(((void*)0)); hb_rate != ((void*)0);
         hb_rate = hb_audio_bitrate_get_next(hb_rate))
    {
        if (!strncmp(name, hb_rate->name, 8))
        {
            return hb_rate;
        }
    }

    return ((void*)0);
}
