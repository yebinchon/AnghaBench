
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct reverb_data {int right; int left; } ;
struct dspfilter_output {float* samples; unsigned int frames; } ;
struct dspfilter_input {float* samples; unsigned int frames; } ;


 float revmodel_process (int *,float) ;

__attribute__((used)) static void reverb_process(void *data, struct dspfilter_output *output,
      const struct dspfilter_input *input)
{
   unsigned i;
   float *out;
   struct reverb_data *rev = (struct reverb_data*)data;

   output->samples = input->samples;
   output->frames = input->frames;
   out = output->samples;

   for (i = 0; i < input->frames; i++, out += 2)
   {
      float in[2] = { out[0], out[1] };

      out[0] = revmodel_process(&rev->left, in[0]);
      out[1] = revmodel_process(&rev->right, in[1]);
   }
}
