
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;


 int AV_CODEC_ID_AC3 ;
 int AV_CODEC_ID_EAC3 ;
 int HB_ACODEC_AC3 ;
 int HB_ACODEC_FF_MASK ;
 int HB_ACODEC_PASS_FLAG ;

int hb_audio_can_apply_drc(uint32_t codec, uint32_t codec_param, int encoder)
{
    if (encoder & HB_ACODEC_PASS_FLAG)
    {

        return 0;
    }
    else if (codec & HB_ACODEC_FF_MASK)
    {
        return (codec_param == AV_CODEC_ID_AC3 ||
                codec_param == AV_CODEC_ID_EAC3);
    }
    else if (codec == HB_ACODEC_AC3)
    {
        return 1;
    }
    else
    {
        return 0;
    }
}
