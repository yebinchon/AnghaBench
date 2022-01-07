
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vibrato {int right; int left; } ;
struct dspfilter_output {float* samples; unsigned int frames; } ;
struct dspfilter_input {float* samples; unsigned int frames; } ;


 float vibratocore_core (int *,float) ;

__attribute__((used)) static void vibrato_process(void *data, struct dspfilter_output *output,
      const struct dspfilter_input *input)
{
   unsigned i;
   float *out;
   struct vibrato *vib = (struct vibrato*)data;

   output->samples = input->samples;
   output->frames = input->frames;
   out = output->samples;

   for (i = 0; i < input->frames; i++, out += 2)
   {
      float in[2] = { out[0], out[1] };

      out[0] = vibratocore_core(&vib->left, in[0]);
      out[1] = vibratocore_core(&vib->right, in[1]);
   }
}
