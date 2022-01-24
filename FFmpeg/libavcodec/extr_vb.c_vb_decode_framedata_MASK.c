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
typedef  int uint8_t ;
struct TYPE_4__ {int* prev_frame; int* frame; TYPE_3__* avctx; int /*<<< orphan*/  stream; } ;
typedef  TYPE_1__ VBDecContext ;
struct TYPE_5__ {int width; int const height; } ;
typedef  int /*<<< orphan*/  GetByteContext ;

/* Variables and functions */
 int AVERROR_INVALIDDATA ; 
 int /*<<< orphan*/  AV_LOG_ERROR ; 
 int /*<<< orphan*/  FUNC0 (TYPE_3__*,int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int*,int) ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int*,int*,int*) ; 
 int /*<<< orphan*/  FUNC5 (int*,int*,int*) ; 
 int /*<<< orphan*/  FUNC6 (int*,int*,int) ; 
 int /*<<< orphan*/  FUNC7 (int*,int,int) ; 
 int* vb_patterns ; 

__attribute__((used)) static int FUNC8(VBDecContext *c, int offset)
{
    GetByteContext g;
    uint8_t *prev, *cur;
    int blk, blocks, t, blk2;
    int blocktypes = 0;
    int x, y, a, b;
    int pattype, pattern;
    const int width = c->avctx->width;
    uint8_t *pstart = c->prev_frame;
    uint8_t *pend   = c->prev_frame + width*c->avctx->height;

    g = c->stream;

    prev = c->prev_frame + offset;
    cur  = c->frame;

    blocks = (c->avctx->width >> 2) * (c->avctx->height >> 2);
    blk2   = 0;
    for (blk = 0; blk < blocks; blk++) {
        if (!(blk & 3)) {
            if (FUNC3(&g) < 1) {
                FUNC0(c->avctx, AV_LOG_ERROR, "Insufficient data\n");
                return AVERROR_INVALIDDATA;
            }
            blocktypes = FUNC2(&g);
        }
        switch (blocktypes & 0xC0) {
        case 0x00: //skip
            for (y = 0; y < 4; y++)
                if (FUNC4(prev + y*width, pstart, pend))
                    FUNC6(cur + y*width, prev + y*width, 4);
                else
                    FUNC7(cur + y*width, 0, 4);
            break;
        case 0x40:
            t = FUNC2(&g);
            if (!t) { //raw block
                if (FUNC3(&g) < 16) {
                    FUNC0(c->avctx, AV_LOG_ERROR, "Insufficient data\n");
                    return AVERROR_INVALIDDATA;
                }
                for (y = 0; y < 4; y++)
                    FUNC1(&g, cur + y * width, 4);
            } else { // motion compensation
                x = ((t & 0xF)^8) - 8;
                y = ((t >> 4) ^8) - 8;
                t = x + y*width;
                for (y = 0; y < 4; y++)
                    if (FUNC4(prev + t + y*width, pstart, pend))
                        FUNC6(cur + y*width, prev + t + y*width, 4);
                    else
                        FUNC7(cur + y*width, 0, 4);
            }
            break;
        case 0x80: // fill
            t = FUNC2(&g);
            for (y = 0; y < 4; y++)
                FUNC7(cur + y*width, t, 4);
            break;
        case 0xC0: // pattern fill
            t       = FUNC2(&g);
            pattype = t >> 6;
            pattern = vb_patterns[t & 0x3F];
            switch (pattype) {
            case 0:
                a = FUNC2(&g);
                b = FUNC2(&g);
                for (y = 0; y < 4; y++)
                    for (x = 0; x < 4; x++, pattern >>= 1)
                        cur[x + y*width] = (pattern & 1) ? b : a;
                break;
            case 1:
                pattern = ~pattern;
            case 2:
                a = FUNC2(&g);
                for (y = 0; y < 4; y++)
                    for (x = 0; x < 4; x++, pattern >>= 1)
                        if (pattern & 1 && FUNC5(prev + x + y*width, pstart, pend))
                            cur[x + y*width] = prev[x + y*width];
                        else
                            cur[x + y*width] = a;
                break;
            case 3:
                FUNC0(c->avctx, AV_LOG_ERROR, "Invalid opcode seen @%d\n", blk);
                return AVERROR_INVALIDDATA;
            }
            break;
        }
        blocktypes <<= 2;
        cur  += 4;
        prev += 4;
        blk2++;
        if (blk2 == (width >> 2)) {
            blk2  = 0;
            cur  += width * 3;
            prev += width * 3;
        }
    }
    return 0;
}