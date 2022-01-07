
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint64_t ;
typedef int uint32_t ;
struct TYPE_4__ {int* filter; int* filter_pos; int filter_len; int filter_stride; } ;
struct TYPE_3__ {int* frame; int height; int stride; int width; } ;
struct scaler_ctx {TYPE_2__ horiz; TYPE_1__ scaled; } ;
typedef int int16_t ;
typedef int __m128i ;


 int _mm_adds_epi16 (int ,int ) ;
 void* _mm_cvtsi128_si32 (int ) ;
 int _mm_cvtsi128_si64 (int ) ;
 int _mm_mulhi_epi16 (int ,int ) ;
 int _mm_set_epi32 (int ,int ,int ,int const) ;
 int _mm_set_epi64x (int const,int const) ;
 int _mm_setzero_si128 () ;
 int _mm_slli_epi16 (int ,int) ;
 int _mm_srli_si128 (int ,int) ;
 int _mm_unpacklo_epi8 (int ,int ) ;

void scaler_argb8888_horiz(const struct scaler_ctx *ctx, const void *input_, int stride)
{
   int h, w, x;
   const uint32_t *input = (uint32_t*)input_;
   uint64_t *output = ctx->scaled.frame;

   for (h = 0; h < ctx->scaled.height; h++, input += stride >> 2,
         output += ctx->scaled.stride >> 3)
   {
      const int16_t *filter_horiz = ctx->horiz.filter;

      for (w = 0; w < ctx->scaled.width; w++,
            filter_horiz += ctx->horiz.filter_stride)
      {
         const uint32_t *input_base_x = input + ctx->horiz.filter_pos[w];

         __m128i res = _mm_setzero_si128();







         for (x = 0; (x + 1) < ctx->horiz.filter_len; x += 2)
         {
            __m128i coeff = _mm_set_epi64x(filter_horiz[x + 1] * 0x0001000100010001ll, filter_horiz[x + 0] * 0x0001000100010001ll);

            __m128i col = _mm_unpacklo_epi8(_mm_set_epi64x(0,
                     ((uint64_t)input_base_x[x + 1] << 32) | input_base_x[x + 0]), _mm_setzero_si128());

            col = _mm_slli_epi16(col, 7);
            res = _mm_adds_epi16(_mm_mulhi_epi16(col, coeff), res);
         }

         for (; x < ctx->horiz.filter_len; x++)
         {
            __m128i coeff = _mm_set_epi64x(0, filter_horiz[x] * 0x0001000100010001ll);
            __m128i col = _mm_unpacklo_epi8(_mm_set_epi32(0, 0, 0, input_base_x[x]), _mm_setzero_si128());

            col = _mm_slli_epi16(col, 7);
            res = _mm_adds_epi16(_mm_mulhi_epi16(col, coeff), res);
         }

         res = _mm_adds_epi16(_mm_srli_si128(res, 8), res);


         output[w] = _mm_cvtsi128_si64(res);
      }
   }
}
