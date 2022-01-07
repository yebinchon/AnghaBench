
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int codec; int muxers; } ;
typedef TYPE_1__ hb_encoder_t ;
typedef int guint32 ;
typedef int gint ;


 int HB_ACODEC_AUTO_PASS ;
 int HB_ACODEC_PASS_FLAG ;
 int HB_ACODEC_PASS_MASK ;
 int hb_audio_encoder_get_default (int) ;
 TYPE_1__* hb_audio_encoder_get_next (TYPE_1__ const*) ;
 int hb_autopassthru_get_encoder (int,int,int,int) ;

gint
ghb_select_audio_codec(gint mux, guint32 in_codec, gint acodec, gint fallback, gint copy_mask)
{
    if (acodec == HB_ACODEC_AUTO_PASS)
    {
        return hb_autopassthru_get_encoder(in_codec, copy_mask, fallback, mux);
    }


    const hb_encoder_t *enc;
    for (enc = hb_audio_encoder_get_next(((void*)0)); enc != ((void*)0);
         enc = hb_audio_encoder_get_next(enc))
    {
        if (enc->codec == fallback && !(enc->muxers & mux))
        {
            fallback = hb_audio_encoder_get_default(mux);
            break;
        }
    }
    if ((acodec & HB_ACODEC_PASS_FLAG) &&
        !(acodec & in_codec & HB_ACODEC_PASS_MASK))
    {
        return fallback;
    }
    for (enc = hb_audio_encoder_get_next(((void*)0)); enc != ((void*)0);
         enc = hb_audio_encoder_get_next(enc))
    {
        if (enc->codec == acodec && !(enc->muxers & mux))
        {
            return fallback;
        }
    }
    return acodec;
}
