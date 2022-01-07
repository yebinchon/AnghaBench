
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;


 int hb_audio_compression_get_limits (int ,float*,float*,float*,int*) ;

float hb_audio_compression_get_best(uint32_t codec, float compression)
{
    int direction;
    float low, high, granularity;
    hb_audio_compression_get_limits(codec, &low, &high, &granularity, &direction);
    if( compression > high )
        compression = high;
    if( compression < low )
        compression = low;
    return compression;
}
