
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct resampler_data {float const* data_in; float* data_out; int input_frames; int ratio; int output_frames; int member_0; } ;
struct record_audio_data {int frames; float* data; } ;
typedef float int16_t ;
struct TYPE_8__ {int float_conv_frames; float* float_conv; int resample_out_frames; int ratio; float* resample_out; int fixed_conv_frames; float* fixed_conv; scalar_t__ use_float; int resampler_data; TYPE_1__* resampler; } ;
struct TYPE_7__ {int channels; } ;
struct TYPE_9__ {TYPE_3__ audio; TYPE_2__ params; } ;
typedef TYPE_4__ ffmpeg_t ;
struct TYPE_6__ {int (* process ) (int ,struct resampler_data*) ;} ;


 int MAX (int,int) ;
 scalar_t__ av_realloc (float*,int) ;
 int convert_float_to_s16 (float*,float*,int) ;
 int convert_s16_to_float (float*,float const*,int,double) ;
 int stub1 (int ,struct resampler_data*) ;

__attribute__((used)) static void ffmpeg_audio_resample(ffmpeg_t *handle,
      struct record_audio_data *aud)
{
   if (!handle->audio.use_float && !handle->audio.resampler)
      return;

   if (aud->frames > handle->audio.float_conv_frames)
   {
      handle->audio.float_conv = (float*)av_realloc(handle->audio.float_conv,
            aud->frames * handle->params.channels * sizeof(float));
      if (!handle->audio.float_conv)
         return;

      handle->audio.float_conv_frames = aud->frames;


      handle->audio.resample_out_frames = aud->frames * handle->audio.ratio + 16;

      handle->audio.resample_out = (float*)av_realloc(handle->audio.resample_out,
            handle->audio.resample_out_frames *
            handle->params.channels * sizeof(float));
      if (!handle->audio.resample_out)
         return;

      handle->audio.fixed_conv_frames = MAX(handle->audio.resample_out_frames,
            handle->audio.float_conv_frames);
      handle->audio.fixed_conv = (int16_t*)av_realloc(handle->audio.fixed_conv,
            handle->audio.fixed_conv_frames * handle->params.channels * sizeof(int16_t));
      if (!handle->audio.fixed_conv)
         return;
   }

   if (handle->audio.use_float || handle->audio.resampler)
   {
      convert_s16_to_float(handle->audio.float_conv,
            (const int16_t*)aud->data, aud->frames * handle->params.channels, 1.0);
      aud->data = handle->audio.float_conv;
   }

   if (handle->audio.resampler)
   {

      struct resampler_data info = {0};

      info.data_in = (const float*)aud->data;
      info.data_out = handle->audio.resample_out;
      info.input_frames = aud->frames;
      info.ratio = handle->audio.ratio;

      handle->audio.resampler->process(handle->audio.resampler_data, &info);

      aud->data = handle->audio.resample_out;
      aud->frames = info.output_frames;

      if (!handle->audio.use_float)
      {
         convert_float_to_s16(handle->audio.fixed_conv,
               handle->audio.resample_out,
               aud->frames * handle->params.channels);
         aud->data = handle->audio.fixed_conv;
      }
   }
}
