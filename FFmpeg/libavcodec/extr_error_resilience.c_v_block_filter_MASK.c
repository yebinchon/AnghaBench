#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int uint8_t ;
typedef  int ptrdiff_t ;
typedef  int int16_t ;
struct TYPE_5__ {int*** motion_val; int /*<<< orphan*/ * mb_type; } ;
struct TYPE_6__ {int* error_status_table; int mb_stride; TYPE_1__ cur_pic; } ;
typedef  TYPE_2__ ERContext ;

/* Variables and functions */
 int ER_MB_ERROR ; 
 int FUNC0 (int) ; 
 int FUNC1 (int,int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int MAX_NEG_CROP ; 
 int* ff_crop_tab ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,int*,int*) ; 

__attribute__((used)) static void FUNC4(ERContext *s, uint8_t *dst, int w, int h,
                           ptrdiff_t stride, int is_luma)
{
    int b_x, b_y;
    ptrdiff_t mvx_stride, mvy_stride;
    const uint8_t *cm = ff_crop_tab + MAX_NEG_CROP;
    FUNC3(s, &mvx_stride, &mvy_stride);
    mvx_stride >>= is_luma;
    mvy_stride *= mvx_stride;

    for (b_y = 0; b_y < h - 1; b_y++) {
        for (b_x = 0; b_x < w; b_x++) {
            int x;
            int top_status    = s->error_status_table[(b_x >> is_luma) +  (b_y      >> is_luma) * s->mb_stride];
            int bottom_status = s->error_status_table[(b_x >> is_luma) + ((b_y + 1) >> is_luma) * s->mb_stride];
            int top_intra     = FUNC2(s->cur_pic.mb_type[(b_x >> is_luma) + ( b_y      >> is_luma) * s->mb_stride]);
            int bottom_intra  = FUNC2(s->cur_pic.mb_type[(b_x >> is_luma) + ((b_y + 1) >> is_luma) * s->mb_stride]);
            int top_damage    = top_status & ER_MB_ERROR;
            int bottom_damage = bottom_status & ER_MB_ERROR;
            int offset        = b_x * 8 + b_y * stride * 8;

            int16_t *top_mv    = s->cur_pic.motion_val[0][mvy_stride *  b_y      + mvx_stride * b_x];
            int16_t *bottom_mv = s->cur_pic.motion_val[0][mvy_stride * (b_y + 1) + mvx_stride * b_x];

            if (!(top_damage || bottom_damage))
                continue; // both undamaged

            if ((!top_intra) && (!bottom_intra) &&
                FUNC0(top_mv[0] - bottom_mv[0]) +
                FUNC0(top_mv[1] + bottom_mv[1]) < 2)
                continue;

            for (x = 0; x < 8; x++) {
                int a, b, c, d;

                a = dst[offset + x + 7 * stride] - dst[offset + x + 6 * stride];
                b = dst[offset + x + 8 * stride] - dst[offset + x + 7 * stride];
                c = dst[offset + x + 9 * stride] - dst[offset + x + 8 * stride];

                d = FUNC0(b) - ((FUNC0(a) + FUNC0(c) + 1) >> 1);
                d = FUNC1(d, 0);
                if (b < 0)
                    d = -d;

                if (d == 0)
                    continue;

                if (!(top_damage && bottom_damage))
                    d = d * 16 / 9;

                if (top_damage) {
                    dst[offset + x +  7 * stride] = cm[dst[offset + x +  7 * stride] + ((d * 7) >> 4)];
                    dst[offset + x +  6 * stride] = cm[dst[offset + x +  6 * stride] + ((d * 5) >> 4)];
                    dst[offset + x +  5 * stride] = cm[dst[offset + x +  5 * stride] + ((d * 3) >> 4)];
                    dst[offset + x +  4 * stride] = cm[dst[offset + x +  4 * stride] + ((d * 1) >> 4)];
                }
                if (bottom_damage) {
                    dst[offset + x +  8 * stride] = cm[dst[offset + x +  8 * stride] - ((d * 7) >> 4)];
                    dst[offset + x +  9 * stride] = cm[dst[offset + x +  9 * stride] - ((d * 5) >> 4)];
                    dst[offset + x + 10 * stride] = cm[dst[offset + x + 10 * stride] - ((d * 3) >> 4)];
                    dst[offset + x + 11 * stride] = cm[dst[offset + x + 11 * stride] - ((d * 1) >> 4)];
                }
            }
        }
    }
}