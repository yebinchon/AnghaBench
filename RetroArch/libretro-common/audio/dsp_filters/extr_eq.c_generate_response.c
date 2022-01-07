
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct eq_gain {float freq; float gain; } ;
struct TYPE_3__ {float real; float imag; } ;
typedef TYPE_1__ fft_complex_t ;



__attribute__((used)) static void generate_response(fft_complex_t *response,
      const struct eq_gain *gains, unsigned num_gains, unsigned samples)
{
   unsigned i;

   float start_freq = 0.0f;
   float start_gain = 1.0f;

   float end_freq = 1.0f;
   float end_gain = 1.0f;

   if (num_gains)
   {
      end_freq = gains->freq;
      end_gain = gains->gain;
      num_gains--;
      gains++;
   }



   for (i = 0; i <= samples; i++)
   {
      float gain;
      float lerp = 0.5f;
      float freq = (float)i / samples;

      while (freq >= end_freq)
      {
         if (num_gains)
         {
            start_freq = end_freq;
            start_gain = end_gain;
            end_freq = gains->freq;
            end_gain = gains->gain;

            gains++;
            num_gains--;
         }
         else
         {
            start_freq = end_freq;
            start_gain = end_gain;
            end_freq = 1.0f;
            end_gain = 1.0f;
            break;
         }
      }


      if (end_freq > start_freq)
         lerp = (freq - start_freq) / (end_freq - start_freq);
      gain = (1.0f - lerp) * start_gain + lerp * end_gain;

      response[i].real = gain;
      response[i].imag = 0.0f;
      response[2 * samples - i].real = gain;
      response[2 * samples - i].imag = 0.0f;
   }
}
