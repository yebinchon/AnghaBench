
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;







void hb_audio_compression_get_limits(uint32_t codec, float *low, float *high,
                                     float *granularity, int *direction)
{
    switch (codec)
    {
        case 131:
        case 130:
            *direction = 0;
            *granularity = 1.;
            *high = 12.;
            *low = 0.;
            break;

        case 129:
            *direction = 1;
            *granularity = 1.;
            *high = 9.;
            *low = 0.;
            break;

        case 128:
            *direction = 0;
            *granularity = 1.;
            *high = 10.;
            *low = 0.;
            break;

        default:
            *direction = 0;
            *granularity = 1.;
            *low = *high = -1.;
            break;
    }
}
