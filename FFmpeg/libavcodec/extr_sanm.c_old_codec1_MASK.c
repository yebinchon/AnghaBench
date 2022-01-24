#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int uint8_t ;
struct TYPE_3__ {int pitch; scalar_t__ rotate_code; int /*<<< orphan*/  gb; scalar_t__ frm0; } ;
typedef  TYPE_1__ SANMVideoContext ;

/* Variables and functions */
 int AVERROR_INVALIDDATA ; 
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int*,int,int) ; 

__attribute__((used)) static int FUNC5(SANMVideoContext *ctx, int top,
                      int left, int width, int height)
{
    uint8_t *dst = ((uint8_t *)ctx->frm0) + left + top * ctx->pitch;
    int i, j, len, flag, code, val, pos, end;

    for (i = 0; i < height; i++) {
        pos = 0;

        if (FUNC0(&ctx->gb) < 2)
            return AVERROR_INVALIDDATA;

        len = FUNC2(&ctx->gb);
        end = FUNC3(&ctx->gb) + len;

        while (FUNC3(&ctx->gb) < end) {
            if (FUNC0(&ctx->gb) < 2)
                return AVERROR_INVALIDDATA;

            code = FUNC1(&ctx->gb);
            flag = code & 1;
            code = (code >> 1) + 1;
            if (pos + code > width)
                return AVERROR_INVALIDDATA;
            if (flag) {
                val = FUNC1(&ctx->gb);
                if (val)
                    FUNC4(dst + pos, val, code);
                pos += code;
            } else {
                if (FUNC0(&ctx->gb) < code)
                    return AVERROR_INVALIDDATA;
                for (j = 0; j < code; j++) {
                    val = FUNC1(&ctx->gb);
                    if (val)
                        dst[pos] = val;
                    pos++;
                }
            }
        }
        dst += ctx->pitch;
    }
    ctx->rotate_code = 0;

    return 0;
}