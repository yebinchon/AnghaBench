
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_3__ {int bitspersample; int numchannels; size_t numsamples; scalar_t__ samples; } ;
typedef TYPE_1__ rwav_t ;
typedef int int16_t ;


 scalar_t__ memalign_alloc (int,size_t) ;

__attribute__((used)) static bool wav2float(const rwav_t* wav, float** pcm, size_t samples_out)
{
   size_t i;

   float *f = (float*)memalign_alloc(16,
         ((samples_out + 15) & ~15) * sizeof(float));

   if (!f)
      return 0;

   *pcm = f;

   if (wav->bitspersample == 8)
   {
      float sample = 0.0f;
      const uint8_t *u8 = (const uint8_t*)wav->samples;

      if (wav->numchannels == 1)
      {
         for (i = wav->numsamples; i != 0; i--)
         {
            sample = (float)*u8++ / 255.0f;
            sample = sample * 2.0f - 1.0f;
            *f++ = sample;
            *f++ = sample;
         }
      }
      else if (wav->numchannels == 2)
      {
         for (i = wav->numsamples; i != 0; i--)
         {
            sample = (float)*u8++ / 255.0f;
            sample = sample * 2.0f - 1.0f;
            *f++ = sample;
            sample = (float)*u8++ / 255.0f;
            sample = sample * 2.0f - 1.0f;
            *f++ = sample;
         }
      }
   }
   else
   {



      float sample = 0.0f;
      const int16_t *s16 = (const int16_t*)wav->samples;

      if (wav->numchannels == 1)
      {
         for (i = wav->numsamples; i != 0; i--)
         {
            sample = (float)((int)*s16++ + 32768) / 65535.0f;
            sample = sample * 2.0f - 1.0f;
            *f++ = sample;
            *f++ = sample;
         }
      }
      else if (wav->numchannels == 2)
      {
         for (i = wav->numsamples; i != 0; i--)
         {
            sample = (float)((int)*s16++ + 32768) / 65535.0f;
            sample = sample * 2.0f - 1.0f;
            *f++ = sample;
            sample = (float)((int)*s16++ + 32768) / 65535.0f;
            sample = sample * 2.0f - 1.0f;
            *f++ = sample;
         }
      }
   }

   return 1;
}
