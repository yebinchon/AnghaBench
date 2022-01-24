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
typedef  int uint16_t ;
struct TYPE_7__ {int* changes_map; TYPE_2__* frame; TYPE_1__* avctx; int /*<<< orphan*/  offset_bits_len; } ;
struct TYPE_6__ {int* linesize; int /*<<< orphan*/ ** data; } ;
struct TYPE_5__ {int width; int height; } ;
typedef  TYPE_3__ MotionPixelsContext ;
typedef  int /*<<< orphan*/  GetBitContext ;

/* Variables and functions */
 int FUNC0 (int,int) ; 
 int FUNC1 (int /*<<< orphan*/ *,int) ; 
 int FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(MotionPixelsContext *mp, GetBitContext *gb, int count, int bits_len, int read_color)
{
    uint16_t *pixels;
    int offset, w, h, color = 0, x, y, i;

    while (count--) {
        offset = FUNC2(gb, mp->offset_bits_len);
        w      = FUNC1(gb, bits_len) + 1;
        h      = FUNC1(gb, bits_len) + 1;
        if (read_color)
            color = FUNC1(gb, 15);
        x = offset % mp->avctx->width;
        y = offset / mp->avctx->width;
        if (y >= mp->avctx->height)
            continue;
        w = FUNC0(w, mp->avctx->width  - x);
        h = FUNC0(h, mp->avctx->height - y);
        pixels = (uint16_t *)&mp->frame->data[0][y * mp->frame->linesize[0] + x * 2];
        while (h--) {
            mp->changes_map[offset] = w;
            if (read_color)
                for (i = 0; i < w; ++i)
                    pixels[i] = color;
            offset += mp->avctx->width;
            pixels += mp->frame->linesize[0] / 2;
        }
    }
}