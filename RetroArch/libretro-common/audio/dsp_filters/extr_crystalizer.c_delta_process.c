
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dspfilter_output {float* samples; unsigned int frames; } ;
struct dspfilter_input {float* samples; unsigned int frames; } ;
struct delta_data {float* old; float intensity; } ;



__attribute__((used)) static void delta_process(void *data, struct dspfilter_output *output,
      const struct dspfilter_input *input)
{
   unsigned i, c;
   struct delta_data *d = (struct delta_data*)data;
   float *out = output->samples;
   output->samples = input->samples;
   output->frames = input->frames;

   for (i = 0; i < input->frames; i++)
   {
      for (c = 0; c < 2; c++)
      {
           float current = *out;
           *out++ = current + (current - d->old[c]) * d->intensity;
           d->old[c] = current;
      }
   }
}
