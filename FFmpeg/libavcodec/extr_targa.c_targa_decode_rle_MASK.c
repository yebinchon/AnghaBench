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
struct TYPE_3__ {int /*<<< orphan*/  gb; } ;
typedef  TYPE_1__ TargaContext ;
typedef  int /*<<< orphan*/  AVCodecContext ;

/* Variables and functions */
 int AVERROR_INVALIDDATA ; 
 int /*<<< orphan*/  AV_LOG_ERROR ; 
 int FUNC0 (int,int) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int,int*,int,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *) ; 
 int FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static int FUNC7(AVCodecContext *avctx, TargaContext *s,
                            uint8_t *start, int w, int h, int stride,
                            int bpp, int interleave)
{
    int x, y;
    int depth = (bpp + 1) >> 3;
    int type, count;
    uint8_t *line = start;
    uint8_t *dst  = line;

    x = y = count = 0;
    while (dst) {
        if (FUNC4(&s->gb) <= 0) {
            FUNC2(avctx, AV_LOG_ERROR,
                   "Ran ouf of data before end-of-image\n");
            return AVERROR_INVALIDDATA;
        }
        type  = FUNC5(&s->gb);
        count = (type & 0x7F) + 1;
        type &= 0x80;
        if (!type) {
            do {
                int n  = FUNC0(count, w - x);
                FUNC3(&s->gb, dst, n * depth);
                count -= n;
                dst   += n * depth;
                x     += n;
                if (x == w) {
                    x    = 0;
                    dst = line = FUNC1(start, line, stride, &y, h, interleave);
                }
            } while (dst && count > 0);
        } else {
            uint8_t tmp[4];
            FUNC3(&s->gb, tmp, depth);
            do {
                int n  = FUNC0(count, w - x);
                count -= n;
                x     += n;
                do {
                    FUNC6(dst, tmp, depth);
                    dst += depth;
                } while (--n);
                if (x == w) {
                    x    = 0;
                    dst = line = FUNC1(start, line, stride, &y, h, interleave);
                }
            } while (dst && count > 0);
        }
    }

    if (count) {
        FUNC2(avctx, AV_LOG_ERROR, "Packet went out of bounds\n");
        return AVERROR_INVALIDDATA;
    }

    return 0;
}