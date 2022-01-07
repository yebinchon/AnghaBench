
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int gint ;


 int HB_ACODEC_INVALID ;
 int hb_audio_samplerate_find_closest (int ,int ) ;

gint
ghb_find_closest_audio_samplerate(gint irate)
{
    return hb_audio_samplerate_find_closest(irate, HB_ACODEC_INVALID);
}
