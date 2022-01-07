
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int type; int * sound; int (* stop_cb ) (int *,int ) ;} ;
typedef TYPE_1__ audio_mixer_voice_t ;
typedef int (* audio_mixer_stop_cb_t ) (int *,int ) ;
typedef int audio_mixer_sound_t ;


 int AUDIO_MIXER_SOUND_STOPPED ;
 int AUDIO_MIXER_TYPE_NONE ;

void audio_mixer_stop(audio_mixer_voice_t* voice)
{
   audio_mixer_stop_cb_t stop_cb = ((void*)0);
   audio_mixer_sound_t* sound = ((void*)0);

   if (voice)
   {
      stop_cb = voice->stop_cb;
      sound = voice->sound;

      voice->type = AUDIO_MIXER_TYPE_NONE;

      if (stop_cb)
         stop_cb(sound, AUDIO_MIXER_SOUND_STOPPED);
   }
}
