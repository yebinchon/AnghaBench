
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_11__ {int numsamples; scalar_t__ samplerate; } ;
typedef TYPE_3__ rwav_t ;
typedef int int32_t ;
typedef enum rwav_state { ____Placeholder_rwav_state } rwav_state ;
struct TYPE_9__ {unsigned int frames; float* pcm; } ;
struct TYPE_10__ {TYPE_1__ wav; } ;
struct TYPE_12__ {TYPE_2__ types; int type; } ;
typedef TYPE_4__ audio_mixer_sound_t ;


 int AUDIO_MIXER_TYPE_WAV ;
 int RWAV_ITERATE_DONE ;
 scalar_t__ calloc (int,int) ;
 int memalign_free (void*) ;
 int one_shot_resample (float*,size_t,scalar_t__,float**,size_t*) ;
 int rwav_free (TYPE_3__*) ;
 int rwav_load (TYPE_3__*,void*,int ) ;
 scalar_t__ s_rate ;
 int wav2float (TYPE_3__*,float**,size_t) ;

audio_mixer_sound_t* audio_mixer_load_wav(void *buffer, int32_t size)
{

   rwav_t wav;

   float* pcm = ((void*)0);
   size_t samples = 0;

   audio_mixer_sound_t* sound = ((void*)0);
   enum rwav_state rwav_ret = rwav_load(&wav, buffer, size);

   if (rwav_ret != RWAV_ITERATE_DONE)
      return ((void*)0);

   samples = wav.numsamples * 2;

   if (!wav2float(&wav, &pcm, samples))
      return ((void*)0);

   if (wav.samplerate != s_rate)
   {
      float* resampled = ((void*)0);

      if (!one_shot_resample(pcm, samples,
               wav.samplerate, &resampled, &samples))
         return ((void*)0);

      memalign_free((void*)pcm);
      pcm = resampled;
   }

   sound = (audio_mixer_sound_t*)calloc(1, sizeof(*sound));

   if (!sound)
   {
      memalign_free((void*)pcm);
      return ((void*)0);
   }

   sound->type = AUDIO_MIXER_TYPE_WAV;
   sound->types.wav.frames = (unsigned)(samples / 2);
   sound->types.wav.pcm = pcm;

   rwav_free(&wav);

   return sound;
}
