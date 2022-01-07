
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int method; int description; int short_name; } ;
struct TYPE_4__ {TYPE_1__ item; } ;


 int hb_audio_dither_get_default () ;
 TYPE_2__* hb_audio_dithers ;
 int hb_audio_dithers_count ;
 int strcasecmp (int ,char const*) ;

int hb_audio_dither_get_from_name(const char *name)
{
    if (name == ((void*)0) || *name == '\0')
        goto fail;

    int i;
    for ( i = 0; i < hb_audio_dithers_count; i++)
    {
        if (!strcasecmp(hb_audio_dithers[i].item.short_name, name) ||
            !strcasecmp(hb_audio_dithers[i].item.description, name))
        {
            return hb_audio_dithers[i].item.method;
        }
    }

fail:
    return hb_audio_dither_get_default();
}
