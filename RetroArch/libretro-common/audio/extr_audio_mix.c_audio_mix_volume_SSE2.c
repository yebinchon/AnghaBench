
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int __m128 ;


 int _mm_add_ps (int ,int ) ;
 int _mm_loadu_ps (float const*) ;
 int _mm_mul_ps (int ,int ) ;
 int _mm_set1_ps (float) ;
 int _mm_storeu_ps (float*,int ) ;
 int audio_mix_volume_C (float*,float const*,float,size_t) ;

void audio_mix_volume_SSE2(float *out, const float *in, float vol, size_t samples)
{
   size_t i;
   __m128 volume = _mm_set1_ps(vol);

   for (i = 0; i + 16 <= samples; i += 16, out += 16, in += 16)
   {
      unsigned j;
      __m128 input[4];
      __m128 additive[4];

      input[0] = _mm_loadu_ps(out + 0);
      input[1] = _mm_loadu_ps(out + 4);
      input[2] = _mm_loadu_ps(out + 8);
      input[3] = _mm_loadu_ps(out + 12);

      additive[0] = _mm_mul_ps(volume, _mm_loadu_ps(in + 0));
      additive[1] = _mm_mul_ps(volume, _mm_loadu_ps(in + 4));
      additive[2] = _mm_mul_ps(volume, _mm_loadu_ps(in + 8));
      additive[3] = _mm_mul_ps(volume, _mm_loadu_ps(in + 12));

      for (j = 0; j < 4; j++)
         _mm_storeu_ps(out + 4 * j, _mm_add_ps(input[j], additive[j]));
   }

   audio_mix_volume_C(out, in, vol, samples - i);
}
