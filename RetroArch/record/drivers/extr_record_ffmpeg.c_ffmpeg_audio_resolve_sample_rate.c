
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct record_params {scalar_t__ samplerate; } ;
struct ff_config_param {int sample_rate; } ;
struct TYPE_5__ {struct record_params params; struct ff_config_param config; } ;
typedef TYPE_1__ ffmpeg_t ;
struct TYPE_6__ {int* supported_samplerates; } ;
typedef TYPE_2__ AVCodec ;


 int RARCH_LOG (char*,int) ;

__attribute__((used)) static void ffmpeg_audio_resolve_sample_rate(ffmpeg_t *handle,
      const AVCodec *codec)
{
   struct ff_config_param *params = &handle->config;
   struct record_params *param = &handle->params;


   if (codec->supported_samplerates && !params->sample_rate)
   {
      unsigned i;
      int input_rate = (int)param->samplerate;


      int best_rate = codec->supported_samplerates[0];
      int best_diff = best_rate - input_rate;

      for (i = 1; codec->supported_samplerates[i]; i++)
      {
         bool better_rate;
         int diff = codec->supported_samplerates[i] - input_rate;

         if (best_diff < 0)
            better_rate = (diff > best_diff);
         else
            better_rate = ((diff >= 0) && (diff < best_diff));

         if (better_rate)
         {
            best_rate = codec->supported_samplerates[i];
            best_diff = diff;
         }
      }

      params->sample_rate = best_rate;
      RARCH_LOG("[FFmpeg]: Using output sampling rate: %d.\n", best_rate);
   }
}
