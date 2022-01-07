
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int codec; } ;
typedef TYPE_1__ hb_encoder_t ;
struct TYPE_6__ {int gid; } ;
typedef TYPE_2__ hb_encoder_internal_t ;






 int HB_ACODEC_INVALID ;

 int HB_GID_ACODEC_AAC ;
 int HB_GID_ACODEC_AC3 ;
 int HB_GID_ACODEC_EAC3 ;
 int HB_GID_ACODEC_FLAC ;
 int HB_GID_ACODEC_MP3 ;
 TYPE_1__* hb_audio_encoder_get_next (TYPE_1__ const*) ;

int hb_audio_encoder_get_fallback_for_passthru(int passthru)
{
    int gid;
    const hb_encoder_t *audio_encoder = ((void*)0);
    switch (passthru)
    {
        case 132:
            gid = HB_GID_ACODEC_AAC;
            break;

        case 131:
            gid = HB_GID_ACODEC_AC3;
            break;

        case 130:
            gid = HB_GID_ACODEC_EAC3;
            break;

        case 129:
            gid = HB_GID_ACODEC_FLAC;
            break;

        case 128:
            gid = HB_GID_ACODEC_MP3;
            break;

        default:
            return HB_ACODEC_INVALID;
            break;
    }
    while ((audio_encoder = hb_audio_encoder_get_next(audio_encoder)) != ((void*)0))
    {
        if (((hb_encoder_internal_t*)audio_encoder)->gid == gid)
        {
            return audio_encoder->codec;
        }
    }





    return HB_ACODEC_INVALID;
}
