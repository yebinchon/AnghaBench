
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_3__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int amixdown; } ;
typedef TYPE_1__ hb_mixdown_t ;
struct TYPE_5__ {TYPE_1__ item; } ;


 TYPE_3__* hb_audio_mixdowns ;
 int hb_audio_mixdowns_count ;

hb_mixdown_t* hb_mixdown_get_from_mixdown(int mixdown)
{
    int i;
    for (i = 0; i < hb_audio_mixdowns_count; i++)
    {
        if (hb_audio_mixdowns[i].item.amixdown == mixdown)
        {
            return &hb_audio_mixdowns[i].item;
        }
    }

    return ((void*)0);
}
