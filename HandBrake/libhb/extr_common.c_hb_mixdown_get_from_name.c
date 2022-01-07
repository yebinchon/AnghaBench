
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int amixdown; int short_name; int name; } ;
struct TYPE_4__ {TYPE_1__ item; } ;


 int HB_INVALID_AMIXDOWN ;
 TYPE_2__* hb_audio_mixdowns ;
 int hb_audio_mixdowns_count ;
 int strcasecmp (int ,char const*) ;

int hb_mixdown_get_from_name(const char *name)
{
    if (name == ((void*)0) || *name == '\0')
        goto fail;

    int i;
    for (i = 0; i < hb_audio_mixdowns_count; i++)
    {
        if (!strcasecmp(hb_audio_mixdowns[i].item.name, name) ||
            !strcasecmp(hb_audio_mixdowns[i].item.short_name, name))
        {
            return hb_audio_mixdowns[i].item.amixdown;
        }
    }

fail:
    return HB_INVALID_AMIXDOWN;
}
