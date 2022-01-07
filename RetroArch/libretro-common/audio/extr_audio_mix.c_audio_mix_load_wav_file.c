
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int uint8_t ;
struct resampler_data {float const* data_in; float* data_out; int input_frames; int output_frames; int ratio; } ;
struct TYPE_7__ {int numsamples; int bitspersample; unsigned int numchannels; double samplerate; int subchunk2size; scalar_t__ samples; } ;
typedef TYPE_1__ rwav_t ;
typedef int int64_t ;
typedef void* int16_t ;
struct TYPE_8__ {int sample_rate; void** upsample_buf; int resample; double ratio; float* float_buf; float* float_resample_buf; void** resample_buf; int resample_len; scalar_t__ resampler_data; TYPE_4__* resampler; TYPE_1__* rwav; int len; void* buf; } ;
typedef TYPE_2__ audio_chunk_t ;
struct TYPE_9__ {int (* process ) (scalar_t__,struct resampler_data*) ;} ;


 int RESAMPLER_QUALITY_DONTCARE ;
 scalar_t__ RWAV_ITERATE_ERROR ;
 int audio_mix_free_chunk (TYPE_2__*) ;
 scalar_t__ calloc (int,int) ;
 int convert_float_to_s16 (void**,float*,int) ;
 int convert_s16_to_float (float*,void**,int,double) ;
 int filestream_read_file (char const*,void**,int *) ;
 scalar_t__ malloc (int) ;
 scalar_t__ memalign_alloc (int,int) ;
 int memcpy (void**,scalar_t__,int ) ;
 int printf (char*,...) ;
 int retro_resampler_realloc (scalar_t__*,TYPE_4__**,int *,int ,double) ;
 scalar_t__ rwav_load (TYPE_1__*,void*,int ) ;
 int stub1 (scalar_t__,struct resampler_data*) ;

audio_chunk_t* audio_mix_load_wav_file(const char *path, int sample_rate)
{
   int sample_size;
   int64_t len = 0;
   void *buf = ((void*)0);
   audio_chunk_t *chunk = (audio_chunk_t*)calloc(1, sizeof(*chunk));

   if (!chunk)
      return ((void*)0);

   if (!filestream_read_file(path, &buf, &len))
   {
      printf("Could not open WAV file for reading.\n");
      goto error;
   }

   chunk->sample_rate = sample_rate;
   chunk->buf = buf;
   chunk->len = len;
   chunk->rwav = (rwav_t*)malloc(sizeof(rwav_t));

   if (rwav_load(chunk->rwav, chunk->buf, chunk->len) == RWAV_ITERATE_ERROR)
   {
      printf("error: could not load WAV file\n");
      goto error;
   }



   chunk->upsample_buf = (int16_t*)memalign_alloc(128,
         chunk->rwav->numsamples * 2 * sizeof(int16_t));

   sample_size = chunk->rwav->bitspersample / 8;

   if (sample_size == 1)
   {
      unsigned i;

     for (i = 0; i < chunk->rwav->numsamples; i++)
     {
        uint8_t *sample = (
              (uint8_t*)chunk->rwav->samples) +
           (i * chunk->rwav->numchannels);

        chunk->upsample_buf[i * 2] = (int16_t)((sample[0] - 128) << 8);

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
            int16_t sample = ((int16_t*)chunk->rwav->samples)[i];

            chunk->upsample_buf[i * 2] = sample;
            chunk->upsample_buf[(i * 2) + 1] = sample;
         }
      }
      else if (chunk->rwav->numchannels == 2)
         memcpy(chunk->upsample_buf, chunk->rwav->samples, chunk->rwav->subchunk2size);
   }
   else if (sample_size != 2)
   {

      printf("error: we don't support a sample size of %d\n", sample_size);
      goto error;
   }

   if (sample_rate != (int)chunk->rwav->samplerate)
   {
      chunk->resample = 1;
      chunk->ratio = (double)sample_rate / chunk->rwav->samplerate;

      retro_resampler_realloc(&chunk->resampler_data,
            &chunk->resampler,
            ((void*)0),
            RESAMPLER_QUALITY_DONTCARE,
            chunk->ratio);

      if (chunk->resampler && chunk->resampler_data)
      {
         struct resampler_data info;

         chunk->float_buf = (float*)memalign_alloc(128, chunk->rwav->numsamples * 2 * chunk->ratio * sizeof(float));


         chunk->float_resample_buf = (float*)memalign_alloc(128, chunk->rwav->numsamples * 3 * chunk->ratio * sizeof(float));

         convert_s16_to_float(chunk->float_buf, chunk->upsample_buf, chunk->rwav->numsamples * 2, 1.0);

         info.data_in = (const float*)chunk->float_buf;
         info.data_out = chunk->float_resample_buf;


         info.input_frames = chunk->rwav->numsamples;
         info.output_frames = 0;
         info.ratio = chunk->ratio;

         chunk->resampler->process(chunk->resampler_data, &info);


         chunk->resample_buf = (int16_t*)memalign_alloc(128, info.output_frames * 2 * sizeof(int16_t));
         chunk->resample_len = info.output_frames;
         convert_float_to_s16(chunk->resample_buf, chunk->float_resample_buf, info.output_frames * 2);
      }
   }

   return chunk;

error:
   audio_mix_free_chunk(chunk);
   return ((void*)0);
}
