
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {float volume; int type; } ;
typedef TYPE_1__ audio_mixer_voice_t ;


 unsigned int AUDIO_MIXER_MAX_VOICES ;






 int audio_mixer_mix_flac (float*,size_t,TYPE_1__*,float) ;
 int audio_mixer_mix_mod (float*,size_t,TYPE_1__*,float) ;
 int audio_mixer_mix_mp3 (float*,size_t,TYPE_1__*,float) ;
 int audio_mixer_mix_ogg (float*,size_t,TYPE_1__*,float) ;
 int audio_mixer_mix_wav (float*,size_t,TYPE_1__*,float) ;
 TYPE_1__* s_voices ;

void audio_mixer_mix(float* buffer, size_t num_frames, float volume_override, bool override)
{
   unsigned i;
   size_t j = 0;
   float* sample = ((void*)0);
   audio_mixer_voice_t* voice = s_voices;

   for (i = 0; i < AUDIO_MIXER_MAX_VOICES; i++, voice++)
   {
      float volume = (override) ? volume_override : voice->volume;

      switch (voice->type)
      {
         case 128:
            audio_mixer_mix_wav(buffer, num_frames, voice, volume);
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
   }

   for (j = 0, sample = buffer; j < num_frames; j++, sample++)
   {
      if (*sample < -1.0f)
         *sample = -1.0f;
      else if (*sample > 1.0f)
         *sample = 1.0f;
   }
}
