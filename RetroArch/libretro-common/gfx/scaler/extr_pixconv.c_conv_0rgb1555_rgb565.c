
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;
typedef int int16_t ;
typedef int __m128i ;


 int _mm_and_si128 (int const,int const) ;
 int _mm_loadu_si128 (int const*) ;
 int _mm_or_si128 (int ,int ) ;
 int _mm_set1_epi16 (int) ;
 int const _mm_slli_epi16 (int const,int) ;
 int const _mm_srli_epi16 (int const,int) ;
 int _mm_storeu_si128 (int *,int ) ;

void conv_0rgb1555_rgb565(void *output_, const void *input_,
      int width, int height,
      int out_stride, int in_stride)
{
   int h;
   const uint16_t *input = (const uint16_t*)input_;
   uint16_t *output = (uint16_t*)output_;


   int max_width = width - 7;

   const __m128i hi_mask = _mm_set1_epi16(
         (int16_t)((0x1f << 11) | (0x1f << 6)));
   const __m128i lo_mask = _mm_set1_epi16(0x1f);
   const __m128i glow_mask = _mm_set1_epi16(1 << 5);


   for (h = 0; h < height;
         h++, output += out_stride >> 1, input += in_stride >> 1)
   {
      int w = 0;

      for (; w < max_width; w += 8)
      {
         const __m128i in = _mm_loadu_si128((const __m128i*)(input + w));
         __m128i rg = _mm_and_si128(_mm_slli_epi16(in, 1), hi_mask);
         __m128i b = _mm_and_si128(in, lo_mask);
         __m128i glow = _mm_and_si128(_mm_srli_epi16(in, 4), glow_mask);
         _mm_storeu_si128((__m128i*)(output + w),
               _mm_or_si128(rg, _mm_or_si128(b, glow)));
      }


      for (; w < width; w++)
      {
         uint16_t col = input[w];
         uint16_t rg = (col << 1) & ((0x1f << 11) | (0x1f << 6));
         uint16_t b = col & 0x1f;
         uint16_t glow = (col >> 4) & (1 << 5);
         output[w] = rg | b | glow;
      }
   }
}
