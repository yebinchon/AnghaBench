
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int rate; int name; } ;
struct TYPE_4__ {TYPE_1__ item; } ;


 TYPE_2__* hb_video_rates ;
 int hb_video_rates_count ;
 int strcasecmp (int ,char const*) ;

int hb_video_framerate_get_from_name(const char *name)
{
    if (name == ((void*)0) || *name == '\0')
        goto fail;

    int i;
    for (i = 0; i < hb_video_rates_count; i++)
    {
        if (!strcasecmp(hb_video_rates[i].item.name, name))
        {
            return hb_video_rates[i].item.rate;
        }
    }

fail:
    return -1;
}
