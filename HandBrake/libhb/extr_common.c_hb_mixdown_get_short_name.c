
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_5__ ;
typedef struct TYPE_7__ TYPE_4__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int amixdown; char const* short_name; } ;
typedef TYPE_1__ hb_mixdown_t ;
struct TYPE_8__ {int amixdown; } ;
struct TYPE_7__ {int amixdown; } ;


 TYPE_5__* hb_audio_mixdowns_first_item ;
 TYPE_4__* hb_audio_mixdowns_last_item ;
 TYPE_1__* hb_mixdown_get_next (TYPE_1__ const*) ;

const char* hb_mixdown_get_short_name(int mixdown)
{
    if (mixdown < hb_audio_mixdowns_first_item->amixdown ||
        mixdown > hb_audio_mixdowns_last_item ->amixdown)
        goto fail;

    const hb_mixdown_t *audio_mixdown = ((void*)0);
    while ((audio_mixdown = hb_mixdown_get_next(audio_mixdown)) != ((void*)0))
    {
        if (audio_mixdown->amixdown == mixdown)
        {
            return audio_mixdown->short_name;
        }
    }

fail:
    return ((void*)0);
}
