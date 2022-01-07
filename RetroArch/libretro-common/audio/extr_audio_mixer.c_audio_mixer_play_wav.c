
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ position; } ;
struct TYPE_6__ {TYPE_1__ wav; } ;
struct TYPE_7__ {TYPE_2__ types; } ;
typedef TYPE_3__ audio_mixer_voice_t ;
typedef int audio_mixer_stop_cb_t ;
typedef int audio_mixer_sound_t ;



__attribute__((used)) static bool audio_mixer_play_wav(audio_mixer_sound_t* sound,
      audio_mixer_voice_t* voice, bool repeat, float volume,
      audio_mixer_stop_cb_t stop_cb)
{
   voice->types.wav.position = 0;
   return 1;
}
