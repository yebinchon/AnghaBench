
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct resampler_data {int input_frames; double ratio; int output_frames; scalar_t__ data_out; scalar_t__ data_in; } ;
struct TYPE_2__ {int fraction; } ;
typedef TYPE_1__ rarch_nearest_resampler_t ;
typedef int audio_frame_float_t ;



__attribute__((used)) static void resampler_nearest_process(
      void *re_, struct resampler_data *data)
{
   rarch_nearest_resampler_t *re = (rarch_nearest_resampler_t*)re_;
   audio_frame_float_t *inp = (audio_frame_float_t*)data->data_in;
   audio_frame_float_t *inp_max = (audio_frame_float_t*)inp + data->input_frames;
   audio_frame_float_t *outp = (audio_frame_float_t*)data->data_out;
   float ratio = 1.0 / data->ratio;

   while(inp != inp_max)
   {
      while(re->fraction > 1)
      {
         *outp++ = *inp;
         re->fraction -= ratio;
      }
      re->fraction++;
      inp++;
   }

   data->output_frames = (outp - (audio_frame_float_t*)data->data_out);
}
