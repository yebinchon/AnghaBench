
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int rate; } ;
typedef TYPE_1__ hb_rate_t ;


 TYPE_1__* ghb_lookup_audio_bitrate (char const*) ;

int
ghb_lookup_audio_bitrate_rate(const char *name)
{
    const hb_rate_t *rate;
    rate = ghb_lookup_audio_bitrate(name);
    if (rate == ((void*)0))
        return 0;
    return rate->rate;
}
