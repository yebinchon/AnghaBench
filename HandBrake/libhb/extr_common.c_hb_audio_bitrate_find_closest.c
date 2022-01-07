
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int rate; } ;
typedef TYPE_1__ hb_rate_t ;
struct TYPE_6__ {int rate; } ;


 TYPE_1__* hb_audio_bitrate_get_next (TYPE_1__ const*) ;
 TYPE_2__* hb_audio_bitrates_first_item ;

__attribute__((used)) static int hb_audio_bitrate_find_closest(int bitrate)
{

    if (bitrate <= 0)
        return bitrate;

    int closest_bitrate = hb_audio_bitrates_first_item->rate;
    const hb_rate_t *audio_bitrate = ((void*)0);
    while ((audio_bitrate = hb_audio_bitrate_get_next(audio_bitrate)) != ((void*)0))
    {
        if (bitrate == audio_bitrate->rate)
        {

            closest_bitrate = audio_bitrate->rate;
            break;
        }
        if (bitrate > audio_bitrate->rate)
        {

            closest_bitrate = audio_bitrate->rate;
        }
    }
    return closest_bitrate;
}
