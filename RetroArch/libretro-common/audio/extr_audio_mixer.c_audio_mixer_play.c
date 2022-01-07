
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_17__ TYPE_2__ ;
typedef struct TYPE_16__ TYPE_1__ ;


struct TYPE_16__ {int type; int repeat; float volume; int stop_cb; TYPE_2__* sound; } ;
typedef TYPE_1__ audio_mixer_voice_t ;
typedef int audio_mixer_stop_cb_t ;
struct TYPE_17__ {int type; } ;
typedef TYPE_2__ audio_mixer_sound_t ;


 unsigned int AUDIO_MIXER_MAX_VOICES ;






 int audio_mixer_play_flac (TYPE_2__*,TYPE_1__*,int,float,int ) ;
 int audio_mixer_play_mod (TYPE_2__*,TYPE_1__*,int,float,int ) ;
 int audio_mixer_play_mp3 (TYPE_2__*,TYPE_1__*,int,float,int ) ;
 int audio_mixer_play_ogg (TYPE_2__*,TYPE_1__*,int,float,int ) ;
 int audio_mixer_play_wav (TYPE_2__*,TYPE_1__*,int,float,int ) ;
 TYPE_1__* s_voices ;

audio_mixer_voice_t* audio_mixer_play(audio_mixer_sound_t* sound, bool repeat,
      float volume, audio_mixer_stop_cb_t stop_cb)
{
   unsigned i;
   bool res = 0;
   audio_mixer_voice_t* voice = s_voices;

   if (!sound)
      return ((void*)0);

   for (i = 0; i < AUDIO_MIXER_MAX_VOICES; i++, voice++)
   {
      if (voice->type != 130)
         continue;

      switch (sound->type)
      {
         case 128:
            res = audio_mixer_play_wav(sound, voice, repeat, volume, stop_cb);
            break;
         case 129:



            break;
         case 132:



            break;
         case 133:



            break;
         case 131:



            break;
         case 130:
            break;
      }

      break;
   }

   if (res)
   {
      voice->type = sound->type;
      voice->repeat = repeat;
      voice->volume = volume;
      voice->sound = sound;
      voice->stop_cb = stop_cb;
   }
   else
      voice = ((void*)0);

   return voice;
}
