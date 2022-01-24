#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint16_t ;
typedef  size_t ptrdiff_t ;
struct TYPE_4__ {int pitch; int /*<<< orphan*/  gb; int /*<<< orphan*/ * frm0; } ;
typedef  TYPE_1__ SANMVideoContext ;

/* Variables and functions */
 int AVERROR_INVALIDDATA ; 
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,size_t) ; 

__attribute__((used)) static int FUNC4(SANMVideoContext *ctx, int cx, int cy, int block_size, ptrdiff_t pitch)
{
    uint16_t *dst = ctx->frm0 + cx + cy * ctx->pitch;

    if (block_size == 2) {
        if (FUNC0(&ctx->gb) < 8)
            return AVERROR_INVALIDDATA;

        dst[0]         = FUNC2(&ctx->gb);
        dst[1]         = FUNC2(&ctx->gb);
        dst[pitch]     = FUNC2(&ctx->gb);
        dst[pitch + 1] = FUNC2(&ctx->gb);
    } else {
        uint16_t fgcolor, bgcolor;
        int glyph;

        if (FUNC0(&ctx->gb) < 5)
            return AVERROR_INVALIDDATA;

        glyph   = FUNC1(&ctx->gb);
        bgcolor = FUNC2(&ctx->gb);
        fgcolor = FUNC2(&ctx->gb);

        FUNC3(ctx, dst, glyph, fgcolor, bgcolor, block_size, pitch);
    }
    return 0;
}