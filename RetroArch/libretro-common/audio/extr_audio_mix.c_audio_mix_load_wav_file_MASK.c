#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int uint8_t ;
struct resampler_data {float const* data_in; float* data_out; int input_frames; int output_frames; int ratio; } ;
struct TYPE_7__ {int numsamples; int bitspersample; unsigned int numchannels; double samplerate; int /*<<< orphan*/  subchunk2size; scalar_t__ samples; } ;
typedef  TYPE_1__ rwav_t ;
typedef  int /*<<< orphan*/  int64_t ;
typedef  void* int16_t ;
struct TYPE_8__ {int sample_rate; void** upsample_buf; int resample; double ratio; float* float_buf; float* float_resample_buf; void** resample_buf; int resample_len; scalar_t__ resampler_data; TYPE_4__* resampler; TYPE_1__* rwav; int /*<<< orphan*/  len; void* buf; } ;
typedef  TYPE_2__ audio_chunk_t ;
struct TYPE_9__ {int /*<<< orphan*/  (* process ) (scalar_t__,struct resampler_data*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  RESAMPLER_QUALITY_DONTCARE ; 
 scalar_t__ RWAV_ITERATE_ERROR ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 scalar_t__ FUNC1 (int,int) ; 
 int /*<<< orphan*/  FUNC2 (void**,float*,int) ; 
 int /*<<< orphan*/  FUNC3 (float*,void**,int,double) ; 
 int /*<<< orphan*/  FUNC4 (char const*,void**,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int) ; 
 scalar_t__ FUNC6 (int,int) ; 
 int /*<<< orphan*/  FUNC7 (void**,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (char*,...) ; 
 int /*<<< orphan*/  FUNC9 (scalar_t__*,TYPE_4__**,int /*<<< orphan*/ *,int /*<<< orphan*/ ,double) ; 
 scalar_t__ FUNC10 (TYPE_1__*,void*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (scalar_t__,struct resampler_data*) ; 

audio_chunk_t* FUNC12(const char *path, int sample_rate)
{
   int sample_size;
   int64_t len          = 0;
   void *buf            = NULL;
   audio_chunk_t *chunk = (audio_chunk_t*)FUNC1(1, sizeof(*chunk));

   if (!chunk)
      return NULL;

   if (!FUNC4(path, &buf, &len))
   {
      FUNC8("Could not open WAV file for reading.\n");
      goto error;
   }

   chunk->sample_rate = sample_rate;
   chunk->buf         = buf;
   chunk->len         = len;
   chunk->rwav        = (rwav_t*)FUNC5(sizeof(rwav_t));

   if (FUNC10(chunk->rwav, chunk->buf, chunk->len) == RWAV_ITERATE_ERROR)
   {
      FUNC8("error: could not load WAV file\n");
      goto error;
   }

   /* numsamples does not know or care about
    * multiple channels, but we need space for 2 */
   chunk->upsample_buf = (int16_t*)FUNC6(128,
         chunk->rwav->numsamples * 2 * sizeof(int16_t));

   sample_size = chunk->rwav->bitspersample / 8;

   if (sample_size == 1)
   {
      unsigned i;

     for (i = 0; i < chunk->rwav->numsamples; i++)
     {
        uint8_t *sample                     = (
              (uint8_t*)chunk->rwav->samples) +
           (i * chunk->rwav->numchannels);

        chunk->upsample_buf[i * 2]          = (int16_t)((sample[0] - 128) << 8);

        if (chunk->rwav->numchannels == 1)
           chunk->upsample_buf[(i * 2) + 1] = (int16_t)((sample[0] - 128) << 8);
        else if (chunk->rwav->numchannels == 2)
           chunk->upsample_buf[(i * 2) + 1] = (int16_t)((sample[1] - 128) << 8);
     }
   }
   else if (sample_size == 2)
   {
      if (chunk->rwav->numchannels == 1)
      {
         unsigned i;

         for (i = 0; i < chunk->rwav->numsamples; i++)
         {
            int16_t sample                   = ((int16_t*)chunk->rwav->samples)[i];

            chunk->upsample_buf[i * 2]       = sample;
            chunk->upsample_buf[(i * 2) + 1] = sample;
         }
      }
      else if (chunk->rwav->numchannels == 2)
         FUNC7(chunk->upsample_buf, chunk->rwav->samples, chunk->rwav->subchunk2size);
   }
   else if (sample_size != 2)
   {
      /* we don't support any other sample size besides 8 and 16-bit yet */
      FUNC8("error: we don't support a sample size of %d\n", sample_size);
      goto error;
   }

   if (sample_rate != (int)chunk->rwav->samplerate)
   {
      chunk->resample = true;
      chunk->ratio = (double)sample_rate / chunk->rwav->samplerate;

      FUNC9(&chunk->resampler_data,
            &chunk->resampler,
            NULL,
            RESAMPLER_QUALITY_DONTCARE,
            chunk->ratio);

      if (chunk->resampler && chunk->resampler_data)
      {
         struct resampler_data info;

         chunk->float_buf = (float*)FUNC6(128, chunk->rwav->numsamples * 2 * chunk->ratio * sizeof(float));

         /* why is *3 needed instead of just *2? does the sinc driver require more space than we know about? */
         chunk->float_resample_buf = (float*)FUNC6(128, chunk->rwav->numsamples * 3 * chunk->ratio * sizeof(float));

         FUNC3(chunk->float_buf, chunk->upsample_buf, chunk->rwav->numsamples * 2, 1.0);

         info.data_in       = (const float*)chunk->float_buf;
         info.data_out      = chunk->float_resample_buf;
         /* a 'frame' consists of two channels, so we set this
          * to the number of samples irrespective of channel count */
         info.input_frames  = chunk->rwav->numsamples;
         info.output_frames = 0;
         info.ratio         = chunk->ratio;

         chunk->resampler->process(chunk->resampler_data, &info);

         /* number of output_frames does not increase with multiple channels, but assume we need space for 2 */
         chunk->resample_buf = (int16_t*)FUNC6(128, info.output_frames * 2 * sizeof(int16_t));
         chunk->resample_len = info.output_frames;
         FUNC2(chunk->resample_buf, chunk->float_resample_buf, info.output_frames * 2);
      }
   }

   return chunk;

error:
   FUNC0(chunk);
   return NULL;
}