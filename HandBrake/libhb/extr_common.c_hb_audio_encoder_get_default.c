
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int muxers; int codec; } ;
typedef TYPE_1__ hb_encoder_t ;


 int HB_ACODEC_FFAAC ;
 int HB_ACODEC_INVALID ;
 int HB_ACODEC_LAME ;
 int HB_ACODEC_PASS_FLAG ;
 int HB_MUX_MASK ;
 int HB_MUX_MASK_MKV ;
 TYPE_1__* hb_audio_encoder_get_next (TYPE_1__ const*) ;

int hb_audio_encoder_get_default(int muxer)
{
    if (!(muxer & HB_MUX_MASK))
        goto fail;

    int codec = 0;
    const hb_encoder_t *audio_encoder = ((void*)0);
    while ((audio_encoder = hb_audio_encoder_get_next(audio_encoder)) != ((void*)0))
    {

        if ((audio_encoder->muxers & muxer) &&
            (audio_encoder->codec & HB_ACODEC_PASS_FLAG) == 0)
        {
            codec = audio_encoder->codec;
            break;
        }
    }




    if (codec == HB_ACODEC_FFAAC && (muxer & HB_MUX_MASK_MKV) == muxer)
    {
        return HB_ACODEC_LAME;
    }
    else
    {
        return codec;
    }

fail:
    return HB_ACODEC_INVALID;
}
