
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
 float HB_INVALID_AUDIO_QUALITY ;

void hb_audio_quality_get_limits(uint32_t codec, float *low, float *high,
                                 float *granularity, int *direction)
{
    switch (codec)
    {
        case 130:
            *direction = 0;
            *granularity = 1.;
            *low = 1.;
            *high = 10.;
            break;

        case 131:
        case 132:
            *direction = 0;
            *granularity = 1.;
            *low = 1.;
            *high = 5.;
            break;

        case 129:
            *direction = 1;
            *granularity = 0.5;
            *low = 0.;
            *high = 10.;
            break;

        case 128:
            *direction = 0;
            *granularity = 0.5;
            *low = -2.;
            *high = 10.;
            break;

        case 133:
            *direction = 0;
            *granularity = 9.;
            *low = 1.;
            *high = 127.;
            break;

        default:
            *direction = 0;
            *granularity = 1.;
            *low = *high = HB_INVALID_AUDIO_QUALITY;
            break;
    }
}
