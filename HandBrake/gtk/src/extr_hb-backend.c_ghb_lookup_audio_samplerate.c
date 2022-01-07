
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int rate; } ;
typedef TYPE_1__ hb_rate_t ;


 int hb_audio_samplerate_get_from_name (char const*) ;
 TYPE_1__* hb_audio_samplerate_get_next (TYPE_1__ const*) ;
 TYPE_1__ const sas_rate ;
 int strncmp (char const*,char*,int) ;

const hb_rate_t*
ghb_lookup_audio_samplerate(const char *name)
{

    if (!strncmp(name, "auto", 8))
        return &sas_rate;


    int rate = hb_audio_samplerate_get_from_name(name);


    const hb_rate_t *hb_rate, *first;
    for (first = hb_rate = hb_audio_samplerate_get_next(((void*)0)); hb_rate != ((void*)0);
         hb_rate = hb_audio_samplerate_get_next(hb_rate))
    {
        if (rate == hb_rate->rate)
        {
            return hb_rate;
        }
    }

    return first;
}
