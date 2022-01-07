
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* hb_audio_samplerate_get_name (int) ;

const char*
ghb_audio_samplerate_get_short_name(int rate)
{
    const char *name;
    name = hb_audio_samplerate_get_name(rate);
    if (name == ((void*)0))
        name = "auto";
    return name;
}
