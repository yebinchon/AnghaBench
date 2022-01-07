
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int codec; char const* name; } ;
typedef TYPE_1__ hb_encoder_t ;


 int HB_ACODEC_ANY ;
 TYPE_1__* hb_audio_encoder_get_next (TYPE_1__ const*) ;

const char* hb_audio_encoder_get_name(int encoder)
{
    if (!(encoder & HB_ACODEC_ANY))
        goto fail;

    const hb_encoder_t *audio_encoder = ((void*)0);
    while ((audio_encoder = hb_audio_encoder_get_next(audio_encoder)) != ((void*)0))
    {
        if (audio_encoder->codec == encoder)
        {
            return audio_encoder->name;
        }
    }

fail:
    return ((void*)0);
}
