#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_3__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int int16_t ;
struct TYPE_5__ {int bits_per_raw_sample; } ;
struct TYPE_4__ {int chroma_y_shift; int chroma_x_shift; int* last_dc; int dct_precision; int intra_dc_precision; TYPE_3__* avctx; int /*<<< orphan*/  gb; } ;
typedef  TYPE_1__ MpegEncContext ;

/* Variables and functions */
 int AVERROR_INVALIDDATA ; 
 int /*<<< orphan*/  AV_LOG_ERROR ; 
 int FUNC0 (int,int) ; 
 int FUNC1 (int,int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*,int /*<<< orphan*/ ,char*) ; 
 int FUNC3 (int /*<<< orphan*/ *,int) ; 
 int FUNC4 (int /*<<< orphan*/ *,int) ; 
 int FUNC5 (int /*<<< orphan*/ *,int,int) ; 

__attribute__((used)) static int FUNC6(MpegEncContext *s, int16_t macroblock[256], int n)
{
    int i, j, w, h, idx = 0;
    int block_mean, rice_parameter, rice_prefix_code, rice_suffix_code,
        dpcm_residual, left, top, topleft, min_left_top, max_left_top, p, p2, output;
    h = 16 >> (n ? s->chroma_y_shift : 0);
    w = 16 >> (n ? s->chroma_x_shift : 0);

    block_mean = FUNC3(&s->gb, s->avctx->bits_per_raw_sample);
    if (block_mean == 0){
        FUNC2(s->avctx, AV_LOG_ERROR, "Forbidden block_mean\n");
        return AVERROR_INVALIDDATA;
    }
    s->last_dc[n] = block_mean * (1 << (s->dct_precision + s->intra_dc_precision));

    rice_parameter = FUNC3(&s->gb, 4);
    if (rice_parameter == 0) {
        FUNC2(s->avctx, AV_LOG_ERROR, "Forbidden rice_parameter\n");
        return AVERROR_INVALIDDATA;
    }

    if (rice_parameter == 15)
        rice_parameter = 0;

    if (rice_parameter > 11) {
        FUNC2(s->avctx, AV_LOG_ERROR, "Forbidden rice_parameter\n");
        return AVERROR_INVALIDDATA;
    }

    for (i = 0; i < h; i++) {
        output = 1 << (s->avctx->bits_per_raw_sample - 1);
        top = 1 << (s->avctx->bits_per_raw_sample - 1);

        for (j = 0; j < w; j++) {
            left = output;
            topleft = top;

            rice_prefix_code = FUNC5(&s->gb, 1, 12);

            /* Escape */
            if (rice_prefix_code == 11)
                dpcm_residual = FUNC3(&s->gb, s->avctx->bits_per_raw_sample);
            else {
                if (rice_prefix_code == 12) {
                    FUNC2(s->avctx, AV_LOG_ERROR, "Forbidden rice_prefix_code\n");
                    return AVERROR_INVALIDDATA;
                }
                rice_suffix_code = FUNC4(&s->gb, rice_parameter);
                dpcm_residual = (rice_prefix_code << rice_parameter) + rice_suffix_code;
            }

            /* Map to a signed residual */
            if (dpcm_residual & 1)
                dpcm_residual = (-1 * dpcm_residual) >> 1;
            else
                dpcm_residual = (dpcm_residual >> 1);

            if (i != 0)
                top = macroblock[idx-w];

            p = left + top - topleft;
            min_left_top = FUNC1(left, top);
            if (p < min_left_top)
                p = min_left_top;

            max_left_top = FUNC0(left, top);
            if (p > max_left_top)
                p = max_left_top;

            p2 = (FUNC1(min_left_top, topleft) + FUNC0(max_left_top, topleft)) >> 1;
            if (p2 == p)
                p2 = block_mean;

            if (p2 > p)
                dpcm_residual *= -1;

            macroblock[idx++] = output = (dpcm_residual + p) & ((1 << s->avctx->bits_per_raw_sample) - 1);
        }
    }

    return 0;
}