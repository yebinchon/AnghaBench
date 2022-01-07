
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int codec; int muxers; int short_name; } ;
typedef TYPE_1__ hb_encoder_t ;


 int HB_ACODEC_NONE ;
 TYPE_1__* hb_audio_encoder_get_next (TYPE_1__ const*) ;
 int hb_container_get_short_name (int) ;
 int hb_error (char*,int,int ,int ) ;

__attribute__((used)) static int validate_audio_codec_mux(int codec, int mux, int track)
{
    const hb_encoder_t *enc = ((void*)0);
    while ((enc = hb_audio_encoder_get_next(enc)) != ((void*)0))
    {
        if ((enc->codec == codec) && (enc->muxers & mux) == 0)
        {
            if (codec != HB_ACODEC_NONE)
            {
                hb_error("track %d: incompatible encoder '%s' for muxer '%s'",
                         track + 1, enc->short_name,
                         hb_container_get_short_name(mux));
            }
            return -1;
        }
    }
    return 0;
}
