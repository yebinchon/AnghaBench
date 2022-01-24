#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int uint8_t ;
typedef  int uint32_t ;
struct TYPE_5__ {int width; int height; TYPE_1__* priv_data; } ;
struct TYPE_4__ {int maplength; int depth; scalar_t__ type; int length; int /*<<< orphan*/  p; } ;
typedef  TYPE_1__ SUNRASTContext ;
typedef  int /*<<< orphan*/  PutByteContext ;
typedef  TYPE_2__ AVCodecContext ;

/* Variables and functions */
 int GET_VALUE ; 
 int RLE_TRIGGER ; 
 scalar_t__ RT_BYTE_ENCODED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int const*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int) ; 
 int FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC5(AVCodecContext *avctx,
                                      const uint8_t *pixels,
                                      const uint32_t *palette_data,
                                      int linesize)
{
    SUNRASTContext *s = avctx->priv_data;
    const uint8_t *ptr;
    int len, alen, x, y;

    if (s->maplength) {     // palettized
        PutByteContext pb_r, pb_g;
        int len = s->maplength / 3;

        pb_r = s->p;
        FUNC3(&s->p, len);
        pb_g = s->p;
        FUNC3(&s->p, len);

        for (x = 0; x < len; x++) {
            uint32_t pixel = palette_data[x];

            FUNC2(&pb_r, (pixel >> 16) & 0xFF);
            FUNC2(&pb_g, (pixel >> 8)  & 0xFF);
            FUNC2(&s->p,  pixel        & 0xFF);
        }
    }

    len  = (s->depth * avctx->width + 7) >> 3;
    alen = len + (len & 1);
    ptr  = pixels;

     if (s->type == RT_BYTE_ENCODED) {
        uint8_t value, value2;
        int run;

        ptr = pixels;

#define GET_VALUE y >= avctx->height ? 0 : x >= len ? ptr[len-1] : ptr[x]

        x = 0, y = 0;
        value2 = GET_VALUE;
        while (y < avctx->height) {
            run = 1;
            value = value2;
            x++;
            if (x >= alen) {
                x = 0;
                ptr += linesize, y++;
            }

            value2 = GET_VALUE;
            while (value2 == value && run < 256 && y < avctx->height) {
                x++;
                run++;
                if (x >= alen) {
                    x = 0;
                    ptr += linesize, y++;
                }
                value2 = GET_VALUE;
            }

            if (run > 2 || value == RLE_TRIGGER) {
                FUNC2(&s->p, RLE_TRIGGER);
                FUNC2(&s->p, run - 1);
                if (run > 1)
                    FUNC2(&s->p, value);
            } else if (run == 1) {
                FUNC2(&s->p, value);
            } else
                FUNC0(&s->p, (value << 8) | value);
        }

        // update data length for header
        s->length = FUNC4(&s->p) - 32 - s->maplength;
    } else {
        for (y = 0; y < avctx->height; y++) {
            FUNC1(&s->p, ptr, len);
            if (len < alen)
                FUNC2(&s->p, 0);
            ptr += linesize;
        }
    }
}