
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef unsigned int uint32_t ;
struct resampler_data {unsigned int ratio; float* data_in; float* data_out; size_t input_frames; size_t output_frames; } ;
struct TYPE_2__ {int phase_bits; int subphase_bits; unsigned int time; size_t ptr; size_t taps; float* buffer_l; float* buffer_r; scalar_t__ window_type; float* phase_table; int subphase_mask; float subphase_mod; } ;
typedef TYPE_1__ rarch_sinc_resampler_t ;
typedef int __m128 ;


 scalar_t__ SINC_WINDOW_KAISER ;
 int _MM_SHUFFLE (int,int,int,int) ;
 int _mm_add_ps (int ,int ) ;
 int _mm_load_ps (float const*) ;
 int _mm_loadu_ps (float const*) ;
 int _mm_movehl_ps (int ,int ) ;
 int _mm_mul_ps (int ,int ) ;
 int _mm_set1_ps (float) ;
 int _mm_setzero_ps () ;
 int _mm_shuffle_ps (int ,int ,int ) ;
 int _mm_store_ss (float*,int ) ;

__attribute__((used)) static void resampler_sinc_process_sse(void *re_, struct resampler_data *data)
{
   rarch_sinc_resampler_t *resamp = (rarch_sinc_resampler_t*)re_;
   unsigned phases = 1 << (resamp->phase_bits + resamp->subphase_bits);

   uint32_t ratio = phases / data->ratio;
   const float *input = data->data_in;
   float *output = data->data_out;
   size_t frames = data->input_frames;
   size_t out_frames = 0;

   while (frames)
   {
      while (frames && resamp->time >= phases)
      {

         if (!resamp->ptr)
            resamp->ptr = resamp->taps;
         resamp->ptr--;

         resamp->buffer_l[resamp->ptr + resamp->taps] =
         resamp->buffer_l[resamp->ptr] = *input++;

         resamp->buffer_r[resamp->ptr + resamp->taps] =
         resamp->buffer_r[resamp->ptr] = *input++;

         resamp->time -= phases;
         frames--;
      }

      while (resamp->time < phases)
      {
         unsigned i;
         __m128 sum, sum_l, sum_r, delta;
         float *phase_table = ((void*)0);
         float *delta_table = ((void*)0);
         const float *buffer_l = resamp->buffer_l + resamp->ptr;
         const float *buffer_r = resamp->buffer_r + resamp->ptr;
         unsigned taps = resamp->taps;
         unsigned phase = resamp->time >> resamp->subphase_bits;

         if (resamp->window_type == SINC_WINDOW_KAISER)
         {
            phase_table = resamp->phase_table + phase * taps * 2;
            delta_table = phase_table + taps;
            delta = _mm_set1_ps((float)
                  (resamp->time & resamp->subphase_mask) * resamp->subphase_mod);
         }
         else
         {
            phase_table = resamp->phase_table + phase * taps;
         }

         sum_l = _mm_setzero_ps();
         sum_r = _mm_setzero_ps();

         for (i = 0; i < taps; i += 4)
         {
            __m128 deltas, _sinc;
            __m128 buf_l = _mm_loadu_ps(buffer_l + i);
            __m128 buf_r = _mm_loadu_ps(buffer_r + i);

            if (resamp->window_type == SINC_WINDOW_KAISER)
            {
               deltas = _mm_load_ps(delta_table + i);
               _sinc = _mm_add_ps(_mm_load_ps((const float*)phase_table + i),
                     _mm_mul_ps(deltas, delta));
            }
            else
            {
               _sinc = _mm_load_ps((const float*)phase_table + i);
            }
            sum_l = _mm_add_ps(sum_l, _mm_mul_ps(buf_l, _sinc));
            sum_r = _mm_add_ps(sum_r, _mm_mul_ps(buf_r, _sinc));
         }






         sum = _mm_add_ps(_mm_shuffle_ps(sum_l, sum_r,
                  _MM_SHUFFLE(1, 0, 1, 0)),
               _mm_shuffle_ps(sum_l, sum_r, _MM_SHUFFLE(3, 2, 3, 2)));





         sum = _mm_add_ps(_mm_shuffle_ps(sum, sum, _MM_SHUFFLE(3, 3, 1, 1)), sum);






         _mm_store_ss(output + 0, sum);


         _mm_store_ss(output + 1, _mm_movehl_ps(sum, sum));

         output += 2;
         out_frames++;
         resamp->time += ratio;
      }
   }

   data->output_frames = out_frames;
}
