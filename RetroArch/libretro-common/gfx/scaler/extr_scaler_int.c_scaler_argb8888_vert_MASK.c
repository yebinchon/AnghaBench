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
struct TYPE_4__ {int* frame; int stride; } ;
struct TYPE_3__ {int* filter; int* filter_pos; int filter_len; int /*<<< orphan*/  filter_stride; } ;
struct scaler_ctx {int out_height; int out_width; TYPE_2__ scaled; TYPE_1__ vert; } ;
typedef  int int16_t ;
typedef  int /*<<< orphan*/  __m128i ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int const,int const) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int) ; 
 int FUNC8 (int) ; 

void FUNC9(const struct scaler_ctx *ctx, void *output_, int stride)
{
   int h, w, y;
   const uint64_t      *input = ctx->scaled.frame;
   uint32_t           *output = (uint32_t*)output_;

   const int16_t *filter_vert = ctx->vert.filter;

   for (h = 0; h < ctx->out_height; h++,
         filter_vert += ctx->vert.filter_stride, output += stride >> 2)
   {
      const uint64_t *input_base = input + ctx->vert.filter_pos[h]
         * (ctx->scaled.stride >> 3);

      for (w = 0; w < ctx->out_width; w++)
      {
         const uint64_t *input_base_y = input_base + w;
#if defined(__SSE2__)
         __m128i final;
         __m128i res = FUNC5();

         for (y = 0; (y + 1) < ctx->vert.filter_len; y += 2,
               input_base_y += (ctx->scaled.stride >> 2))
         {
            __m128i coeff = FUNC4(filter_vert[y + 1] * 0x0001000100010001ll, filter_vert[y + 0] * 0x0001000100010001ll);
            __m128i col   = FUNC4(input_base_y[ctx->scaled.stride >> 3], input_base_y[0]);

            res           = FUNC0(FUNC2(col, coeff), res);
         }

         for (; y < ctx->vert.filter_len; y++, input_base_y += (ctx->scaled.stride >> 3))
         {
            __m128i coeff = FUNC4(0, filter_vert[y] * 0x0001000100010001ll);
            __m128i col   = FUNC4(0, input_base_y[0]);

            res           = FUNC0(FUNC2(col, coeff), res);
         }

         res       = FUNC0(FUNC7(res, 8), res);
         res       = FUNC6(res, (7 - 2 - 2));

         final     = FUNC3(res, res);

         output[w] = FUNC1(final);
#else
         int16_t res_a = 0;
         int16_t res_r = 0;
         int16_t res_g = 0;
         int16_t res_b = 0;

         for (y = 0; y < ctx->vert.filter_len; y++,
               input_base_y += (ctx->scaled.stride >> 3))
         {
            uint64_t col   = *input_base_y;

            int16_t a      = (col >> 48) & 0xffff;
            int16_t r      = (col >> 32) & 0xffff;
            int16_t g      = (col >> 16) & 0xffff;
            int16_t b      = (col >>  0) & 0xffff;

            int16_t coeff  = filter_vert[y];

            res_a         += (a * coeff) >> 16;
            res_r         += (r * coeff) >> 16;
            res_g         += (g * coeff) >> 16;
            res_b         += (b * coeff) >> 16;
         }

         res_a           >>= (7 - 2 - 2);
         res_r           >>= (7 - 2 - 2);
         res_g           >>= (7 - 2 - 2);
         res_b           >>= (7 - 2 - 2);

         output[w]         =
            (clamp_8bit(res_a) << 24) |
            (clamp_8bit(res_r) << 16) |
            (clamp_8bit(res_g) << 8)  |
            (clamp_8bit(res_b) << 0);
#endif
      }
   }
}