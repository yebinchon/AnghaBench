
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_6__ ;
typedef struct TYPE_14__ TYPE_5__ ;
typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_12__ {int position; } ;
struct TYPE_13__ {TYPE_3__ wav; } ;
struct TYPE_14__ {TYPE_4__ types; int type; TYPE_6__* sound; int (* stop_cb ) (TYPE_6__*,int ) ;scalar_t__ repeat; } ;
typedef TYPE_5__ audio_mixer_voice_t ;
struct TYPE_10__ {int frames; float* pcm; } ;
struct TYPE_11__ {TYPE_1__ wav; } ;
struct TYPE_15__ {TYPE_2__ types; } ;
typedef TYPE_6__ audio_mixer_sound_t ;


 int AUDIO_MIXER_SOUND_FINISHED ;
 int AUDIO_MIXER_SOUND_REPEATED ;
 int AUDIO_MIXER_TYPE_NONE ;
 int stub1 (TYPE_6__*,int ) ;
 int stub2 (TYPE_6__*,int ) ;

__attribute__((used)) static void audio_mixer_mix_wav(float* buffer, size_t num_frames,
      audio_mixer_voice_t* voice,
      float volume)
{
   int i;
   unsigned buf_free = (unsigned)(num_frames * 2);
   const audio_mixer_sound_t* sound = voice->sound;
   unsigned pcm_available = sound->types.wav.frames
      * 2 - voice->types.wav.position;
   const float* pcm = sound->types.wav.pcm +
      voice->types.wav.position;

again:
   if (pcm_available < buf_free)
   {
      for (i = pcm_available; i != 0; i--)
         *buffer++ += *pcm++ * volume;

      if (voice->repeat)
      {
         if (voice->stop_cb)
            voice->stop_cb(voice->sound, AUDIO_MIXER_SOUND_REPEATED);

         buf_free -= pcm_available;
         pcm_available = sound->types.wav.frames * 2;
         pcm = sound->types.wav.pcm;
         voice->types.wav.position = 0;
         goto again;
      }

      if (voice->stop_cb)
         voice->stop_cb(voice->sound, AUDIO_MIXER_SOUND_FINISHED);

      voice->type = AUDIO_MIXER_TYPE_NONE;
   }
   else
   {
      for (i = buf_free; i != 0; i--)
         *buffer++ += *pcm++ * volume;

      voice->types.wav.position += buf_free;
   }
}
