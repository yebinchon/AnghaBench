
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;


 int hb_audio_quality_get_limits (int ,float*,float*,float*,int*) ;

float hb_audio_quality_get_best(uint32_t codec, float quality)
{
    int direction;
    float low, high, granularity;
    hb_audio_quality_get_limits(codec, &low, &high, &granularity, &direction);
    if (quality > high)
        quality = high;
    if (quality < low)
        quality = low;
    return quality;
}
