
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int rate; char const* name; } ;
typedef TYPE_1__ hb_rate_t ;
struct TYPE_8__ {int rate; } ;
struct TYPE_7__ {int rate; } ;


 TYPE_1__* hb_video_framerate_get_next (TYPE_1__ const*) ;
 TYPE_3__* hb_video_rates_first_item ;
 TYPE_2__* hb_video_rates_last_item ;

const char* hb_video_framerate_get_name(int framerate)
{
    if (framerate > hb_video_rates_first_item->rate ||
        framerate < hb_video_rates_last_item ->rate)
        goto fail;

    const hb_rate_t *video_framerate = ((void*)0);
    while ((video_framerate = hb_video_framerate_get_next(video_framerate)) != ((void*)0))
    {
        if (video_framerate->rate == framerate)
        {
            return video_framerate->name;
        }
    }

fail:
    return ((void*)0);
}
