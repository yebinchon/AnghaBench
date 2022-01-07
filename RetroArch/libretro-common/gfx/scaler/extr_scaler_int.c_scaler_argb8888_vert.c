
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint64_t ;
typedef int uint32_t ;
struct TYPE_4__ {int* frame; int stride; } ;
struct TYPE_3__ {int* filter; int* filter_pos; int filter_len; int filter_stride; } ;
struct scaler_ctx {int out_height; int out_width; TYPE_2__ scaled; TYPE_1__ vert; } ;
typedef int int16_t ;
typedef int __m128i ;


 int _mm_adds_epi16 (int ,int ) ;
 int _mm_cvtsi128_si32 (int ) ;
 int _mm_mulhi_epi16 (int ,int ) ;
 int _mm_packus_epi16 (int ,int ) ;
 int _mm_set_epi64x (int const,int const) ;
 int _mm_setzero_si128 () ;
 int _mm_srai_epi16 (int ,int) ;
 int _mm_srli_si128 (int ,int) ;
 int clamp_8bit (int) ;

void scaler_argb8888_vert(const struct scaler_ctx *ctx, void *output_, int stride)
{
   int h, w, y;
   const uint64_t *input = ctx->scaled.frame;
   uint32_t *output = (uint32_t*)output_;

   const int16_t *filter_vert = ctx->vert.filter;

   for (h = 0; h < ctx->out_height; h++,
         filter_vert += ctx->vert.filter_stride, output += stride >> 2)
   {
      const uint64_t *input_base = input + ctx->vert.filter_pos[h]
         * (ctx->scaled.stride >> 3);

      for (w = 0; w < ctx->out_width; w++)
      {
         const uint64_t *input_base_y = input_base + w;

         __m128i final;
         __m128i res = _mm_setzero_si128();

         for (y = 0; (y + 1) < ctx->vert.filter_len; y += 2,
               input_base_y += (ctx->scaled.stride >> 2))
         {
            __m128i coeff = _mm_set_epi64x(filter_vert[y + 1] * 0x0001000100010001ll, filter_vert[y + 0] * 0x0001000100010001ll);
            __m128i col = _mm_set_epi64x(input_base_y[ctx->scaled.stride >> 3], input_base_y[0]);

            res = _mm_adds_epi16(_mm_mulhi_epi16(col, coeff), res);
         }

         for (; y < ctx->vert.filter_len; y++, input_base_y += (ctx->scaled.stride >> 3))
         {
            __m128i coeff = _mm_set_epi64x(0, filter_vert[y] * 0x0001000100010001ll);
            __m128i col = _mm_set_epi64x(0, input_base_y[0]);

            res = _mm_adds_epi16(_mm_mulhi_epi16(col, coeff), res);
         }

         res = _mm_adds_epi16(_mm_srli_si128(res, 8), res);
         res = _mm_srai_epi16(res, (7 - 2 - 2));

         final = _mm_packus_epi16(res, res);

         output[w] = _mm_cvtsi128_si32(final);
      }
   }
}
