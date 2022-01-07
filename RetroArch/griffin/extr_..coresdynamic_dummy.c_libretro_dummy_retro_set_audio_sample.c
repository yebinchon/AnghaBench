
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int retro_audio_sample_t ;


 int dummy_audio_cb ;

void libretro_dummy_retro_set_audio_sample(retro_audio_sample_t cb)
{
   dummy_audio_cb = cb;
}
