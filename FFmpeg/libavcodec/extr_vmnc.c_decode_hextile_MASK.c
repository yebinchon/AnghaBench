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
typedef  int /*<<< orphan*/  uint8_t ;
struct TYPE_3__ {int bpp2; int /*<<< orphan*/  avctx; int /*<<< orphan*/  bigendian; } ;
typedef  TYPE_1__ VmncContext ;
typedef  int /*<<< orphan*/  GetByteContext ;

/* Variables and functions */
 int AVERROR_INVALIDDATA ; 
 int /*<<< orphan*/  AV_LOG_ERROR ; 
 int HT_BKG ; 
 int HT_CLR ; 
 int HT_FG ; 
 int HT_RAW ; 
 int HT_SUB ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int,int,int /*<<< orphan*/ *,int const,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int,int,int,int,int,int const,int) ; 
 int FUNC5 (int /*<<< orphan*/ *,int const,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(VmncContext *c, uint8_t* dst, GetByteContext *gb,
                          int w, int h, int stride)
{
    int i, j, k;
    int bg = 0, fg = 0, rects, color, flags, xy, wh;
    const int bpp = c->bpp2;
    uint8_t *dst2;
    int bw = 16, bh = 16;

    for (j = 0; j < h; j += 16) {
        dst2 = dst;
        bw   = 16;
        if (j + 16 > h)
            bh = h - j;
        for (i = 0; i < w; i += 16, dst2 += 16 * bpp) {
            if (FUNC2(gb) <= 0) {
                FUNC0(c->avctx, AV_LOG_ERROR, "Premature end of data!\n");
                return AVERROR_INVALIDDATA;
            }
            if (i + 16 > w)
                bw = w - i;
            flags = FUNC1(gb);
            if (flags & HT_RAW) {
                if (FUNC2(gb) < bw * bh * bpp) {
                    FUNC0(c->avctx, AV_LOG_ERROR, "Premature end of data!\n");
                    return AVERROR_INVALIDDATA;
                }
                FUNC3(dst2, bw, bh, gb, bpp, c->bigendian, stride);
            } else {
                if (flags & HT_BKG)
                    bg = FUNC5(gb, bpp, c->bigendian);
                if (flags & HT_FG)
                    fg = FUNC5(gb, bpp, c->bigendian);
                rects = 0;
                if (flags & HT_SUB)
                    rects = FUNC1(gb);
                color = !!(flags & HT_CLR);

                FUNC4(dst2, 0, 0, bw, bh, bg, bpp, stride);

                if (FUNC2(gb) < rects * (color * bpp + 2)) {
                    FUNC0(c->avctx, AV_LOG_ERROR, "Premature end of data!\n");
                    return AVERROR_INVALIDDATA;
                }
                for (k = 0; k < rects; k++) {
                    int rect_x, rect_y, rect_w, rect_h;
                    if (color)
                        fg = FUNC5(gb, bpp, c->bigendian);
                    xy = FUNC1(gb);
                    wh = FUNC1(gb);

                    rect_x = xy >> 4;
                    rect_y = xy & 0xF;
                    rect_w = (wh >> 4) + 1;
                    rect_h = (wh & 0xF) + 1;

                    if (rect_x + rect_w > w - i || rect_y + rect_h > h - j) {
                        FUNC0(c->avctx, AV_LOG_ERROR, "Rectangle outside picture\n");
                        return AVERROR_INVALIDDATA;
                    }

                    FUNC4(dst2, rect_x, rect_y,
                               rect_w, rect_h, fg, bpp, stride);
                }
            }
        }
        dst += stride * 16;
    }
    return 0;
}