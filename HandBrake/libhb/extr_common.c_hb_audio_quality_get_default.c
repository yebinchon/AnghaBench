
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
 float HB_INVALID_AUDIO_QUALITY ;

float hb_audio_quality_get_default(uint32_t codec)
{
    switch (codec)
    {
        case 130:
            return 5.;

        case 131:
        case 132:
            return 3.;

        case 129:
            return 2.;

        case 128:
            return 5.;

        case 133:
            return 91.;

        default:
            return HB_INVALID_AUDIO_QUALITY;
    }
}
