
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
int hb_audio_samplerate_get_sr_shift(int samplerate)
{
    return ((samplerate < 16000) ? 2 : (samplerate < 32000) ? 1 : 0);
}
