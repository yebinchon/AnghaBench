#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int int8_t ;
struct TYPE_7__ {int /*<<< orphan*/  g; TYPE_2__* avctx; TYPE_1__* frame; } ;
struct TYPE_6__ {int height; } ;
struct TYPE_5__ {int* linesize; int /*<<< orphan*/ ** data; } ;
typedef  TYPE_3__ QtrleContext ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (int /*<<< orphan*/ *) ; 
 unsigned int FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC7(QtrleContext *s, int row_ptr, int lines_to_change)
{
    int rle_code, rle_code_half;
    int pixel_ptr;
    int row_inc = s->frame->linesize[0];
    unsigned int argb;
    uint8_t *rgb = s->frame->data[0];
    int pixel_limit = s->frame->linesize[0] * s->avctx->height;

    while (lines_to_change--) {
        pixel_ptr = row_ptr + (FUNC3(&s->g) - 1) * 4;
        FUNC2(0);

        while ((rle_code = (int8_t)FUNC3(&s->g)) != -1) {
            if (FUNC4(&s->g) < 1)
                return;
            if (rle_code == 0) {
                /* there's another skip code in the stream */
                pixel_ptr += (FUNC3(&s->g) - 1) * 4;
                FUNC2(0);  /* make sure pixel_ptr is positive */
            } else if (rle_code < 0) {
                /* decode the run length code */
                rle_code = -rle_code;
                argb = FUNC5(&s->g);

                FUNC2(rle_code * 4);

                while (rle_code--) {
                    FUNC0(rgb + pixel_ptr, argb);
                    pixel_ptr += 4;
                }
            } else {
                FUNC2(rle_code * 4);

                /* copy pixels directly to output */
                rle_code_half = rle_code / 2;
                while (rle_code_half--) { /* copy 2 argb raw value at the same time */
                    FUNC1(rgb + pixel_ptr, FUNC6(&s->g));
                    pixel_ptr += 8;
                }

                if (rle_code % 2 != 0){ /* not even raw value */
                    FUNC0(rgb + pixel_ptr, FUNC5(&s->g));
                    pixel_ptr += 4;
                }
            }
        }
        row_ptr += row_inc;
    }
}