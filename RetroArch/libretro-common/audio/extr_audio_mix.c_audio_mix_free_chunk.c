
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {scalar_t__ resampler_data; TYPE_1__* resampler; scalar_t__ resample_buf; scalar_t__ float_resample_buf; scalar_t__ float_buf; scalar_t__ upsample_buf; struct TYPE_7__* buf; struct TYPE_7__* rwav; scalar_t__ samples; } ;
typedef TYPE_2__ audio_chunk_t ;
struct TYPE_6__ {int (* free ) (scalar_t__) ;} ;


 int free (TYPE_2__*) ;
 int memalign_free (scalar_t__) ;
 int rwav_free (TYPE_2__*) ;
 int stub1 (scalar_t__) ;

void audio_mix_free_chunk(audio_chunk_t *chunk)
{
   if (!chunk)
      return;

   if (chunk->rwav && chunk->rwav->samples)
   {

      rwav_free(chunk->rwav);
      free(chunk->rwav);
   }

   if (chunk->buf)
      free(chunk->buf);

   if (chunk->upsample_buf)
      memalign_free(chunk->upsample_buf);

   if (chunk->float_buf)
      memalign_free(chunk->float_buf);

   if (chunk->float_resample_buf)
      memalign_free(chunk->float_resample_buf);

   if (chunk->resample_buf)
      memalign_free(chunk->resample_buf);

   if (chunk->resampler && chunk->resampler_data)
      chunk->resampler->free(chunk->resampler_data);

   free(chunk);
}
