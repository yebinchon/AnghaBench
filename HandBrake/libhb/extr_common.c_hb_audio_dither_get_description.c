
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int method; char const* description; } ;
typedef TYPE_1__ hb_dither_t ;
struct TYPE_8__ {int method; } ;
struct TYPE_7__ {int method; } ;


 TYPE_1__* hb_audio_dither_get_next (TYPE_1__ const*) ;
 TYPE_3__* hb_audio_dithers_first_item ;
 TYPE_2__* hb_audio_dithers_last_item ;

const char* hb_audio_dither_get_description(int method)
{
    if (method < hb_audio_dithers_first_item->method ||
        method > hb_audio_dithers_last_item ->method)
        goto fail;

    const hb_dither_t *audio_dither = ((void*)0);
    while ((audio_dither = hb_audio_dither_get_next(audio_dither)) != ((void*)0))
    {
        if (audio_dither->method == method)
        {
            return audio_dither->description;
        }
    }

fail:
    return ((void*)0);
}
