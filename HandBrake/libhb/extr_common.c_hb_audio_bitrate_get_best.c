
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;


 int hb_audio_bitrate_find_closest (int) ;
 int hb_audio_bitrate_get_limits (int ,int,int,int*,int*) ;

int hb_audio_bitrate_get_best(uint32_t codec, int bitrate, int samplerate,
                              int mixdown)
{
    int low, high;
    hb_audio_bitrate_get_limits(codec, samplerate, mixdown, &low, &high);
    if (bitrate > high)
        bitrate = high;
    if (bitrate < low)
        bitrate = low;
    return hb_audio_bitrate_find_closest(bitrate);
}
