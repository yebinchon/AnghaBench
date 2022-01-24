#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int uint64_t ;
typedef  int uint32_t ;
struct TYPE_4__ {int* filter; int* filter_pos; int filter_len; int /*<<< orphan*/  filter_stride; } ;
struct TYPE_3__ {int* frame; int height; int stride; int width; } ;
struct scaler_ctx {TYPE_2__ horiz; TYPE_1__ scaled; } ;
typedef  int int16_t ;
typedef  int /*<<< orphan*/  __m128i ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 void* FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int const) ; 
 int /*<<< orphan*/  FUNC5 (int const,int const) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void FUNC10(const struct scaler_ctx *ctx, const void *input_, int stride)
{
   int h, w, x;
   const uint32_t *input = (uint32_t*)input_;
   uint64_t *output      = ctx->scaled.frame;

   for (h = 0; h < ctx->scaled.height; h++, input += stride >> 2,
         output += ctx->scaled.stride >> 3)
   {
      const int16_t *filter_horiz = ctx->horiz.filter;

      for (w = 0; w < ctx->scaled.width; w++,
            filter_horiz += ctx->horiz.filter_stride)
      {
         const uint32_t *input_base_x = input + ctx->horiz.filter_pos[w];
#if defined(__SSE2__)
         __m128i res = FUNC6();
#ifndef __x86_64__
         union
         {
            uint32_t *u32;
            uint64_t *u64;
         } u;
#endif
         for (x = 0; (x + 1) < ctx->horiz.filter_len; x += 2)
         {
            __m128i coeff = FUNC5(filter_horiz[x + 1] * 0x0001000100010001ll, filter_horiz[x + 0] * 0x0001000100010001ll);

            __m128i col   = FUNC9(FUNC5(0,
                     ((uint64_t)input_base_x[x + 1] << 32) | input_base_x[x + 0]), FUNC6());

            col           = FUNC7(col, 7);
            res           = FUNC0(FUNC3(col, coeff), res);
         }

         for (; x < ctx->horiz.filter_len; x++)
         {
            __m128i coeff = FUNC5(0, filter_horiz[x] * 0x0001000100010001ll);
            __m128i col   = FUNC9(FUNC4(0, 0, 0, input_base_x[x]), FUNC6());

            col           = FUNC7(col, 7);
            res           = FUNC0(FUNC3(col, coeff), res);
         }

         res              = FUNC0(FUNC8(res, 8), res);

#ifdef __x86_64__
         output[w]        = FUNC2(res);
#else /* 32-bit doesn't have si64. Do it in two steps. */
         u.u64    = output + w;
         u.u32[0] = _mm_cvtsi128_si32(res);
         u.u32[1] = _mm_cvtsi128_si32(_mm_srli_si128(res, 4));
#endif
#else
         int16_t res_a = 0;
         int16_t res_r = 0;
         int16_t res_g = 0;
         int16_t res_b = 0;

         for (x = 0; x < ctx->horiz.filter_len; x++)
         {
            uint32_t col   = input_base_x[x];

            int16_t a      = (col >> (24 - 7)) & (0xff << 7);
            int16_t r      = (col >> (16 - 7)) & (0xff << 7);
            int16_t g      = (col >> ( 8 - 7)) & (0xff << 7);
            int16_t b      = (col << ( 0 + 7)) & (0xff << 7);

            int16_t coeff  = filter_horiz[x];

            res_a         += (a * coeff) >> 16;
            res_r         += (r * coeff) >> 16;
            res_g         += (g * coeff) >> 16;
            res_b         += (b * coeff) >> 16;
         }

         output[w]         = (
               (uint64_t)res_a  << 48)  |
               ((uint64_t)res_r << 32)  |
               ((uint64_t)res_g << 16)  |
               ((uint64_t)res_b << 0);
#endif
      }
   }
}