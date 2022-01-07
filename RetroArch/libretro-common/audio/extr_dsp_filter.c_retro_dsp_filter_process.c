
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct retro_dsp_data {int output_frames; int output; int input_frames; int input; } ;
struct dspfilter_output {int frames; int samples; int member_0; } ;
struct dspfilter_input {int frames; int samples; int member_0; } ;
struct TYPE_7__ {unsigned int num_instances; TYPE_2__* instances; } ;
typedef TYPE_3__ retro_dsp_filter_t ;
struct TYPE_6__ {int impl_data; TYPE_1__* impl; } ;
struct TYPE_5__ {int (* process ) (int ,struct dspfilter_output*,struct dspfilter_input*) ;} ;


 int stub1 (int ,struct dspfilter_output*,struct dspfilter_input*) ;

void retro_dsp_filter_process(retro_dsp_filter_t *dsp,
      struct retro_dsp_data *data)
{
   unsigned i;
   struct dspfilter_output output = {0};
   struct dspfilter_input input = {0};

   output.samples = data->input;
   output.frames = data->input_frames;

   for (i = 0; i < dsp->num_instances; i++)
   {
      input.samples = output.samples;
      input.frames = output.frames;
      dsp->instances[i].impl->process(
            dsp->instances[i].impl_data, &output, &input);
   }

   data->output = output.samples;
   data->output_frames = output.frames;
}
