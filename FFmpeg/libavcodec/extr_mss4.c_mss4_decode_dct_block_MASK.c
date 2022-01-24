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
struct TYPE_5__ {int** imgbuf; TYPE_1__* pic; int /*<<< orphan*/  block; int /*<<< orphan*/ ** dc_cache; int /*<<< orphan*/ ** prev_dc; int /*<<< orphan*/ * quant_mat; scalar_t__ ac_vlc; scalar_t__ dc_vlc; } ;
struct TYPE_4__ {int* linesize; } ;
typedef  TYPE_2__ MSS4Context ;
typedef  int /*<<< orphan*/  GetBitContext ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int*,int) ; 
 size_t LEFT ; 
 size_t TOP ; 
 size_t TOP_LEFT ; 
 int /*<<< orphan*/  FUNC1 (int*,int,int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ *,scalar_t__,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(MSS4Context *c, GetBitContext *gb,
                                 uint8_t *dst[3], int mb_x, int mb_y)
{
    int i, j, k, ret;
    uint8_t *out = dst[0];

    for (j = 0; j < 2; j++) {
        for (i = 0; i < 2; i++) {
            int xpos = mb_x * 2 + i;
            c->dc_cache[j][TOP_LEFT] = c->dc_cache[j][TOP];
            c->dc_cache[j][TOP]      = c->prev_dc[0][mb_x * 2 + i];
            ret = FUNC2(gb, c->dc_vlc, c->ac_vlc, c->block,
                                  c->dc_cache[j],
                                  xpos, mb_y * 2 + j, c->quant_mat[0]);
            if (ret)
                return ret;
            c->prev_dc[0][mb_x * 2 + i] = c->dc_cache[j][LEFT];

            FUNC1(out + xpos * 8, c->pic->linesize[0],
                             c->block);
        }
        out += 8 * c->pic->linesize[0];
    }

    for (i = 1; i < 3; i++) {
        c->dc_cache[i + 1][TOP_LEFT] = c->dc_cache[i + 1][TOP];
        c->dc_cache[i + 1][TOP]      = c->prev_dc[i][mb_x];
        ret = FUNC2(gb, c->dc_vlc + 1, c->ac_vlc + 1,
                              c->block, c->dc_cache[i + 1], mb_x, mb_y,
                              c->quant_mat[1]);
        if (ret)
            return ret;
        c->prev_dc[i][mb_x] = c->dc_cache[i + 1][LEFT];

        FUNC1(c->imgbuf[i], 8, c->block);
        out = dst[i] + mb_x * 16;
        // Since the DCT block is coded as YUV420 and the whole frame as YUV444,
        // we need to scale chroma.
        for (j = 0; j < 16; j++) {
            for (k = 0; k < 8; k++)
                FUNC0(out + k * 2, c->imgbuf[i][k + (j & ~1) * 4] * 0x101);
            out += c->pic->linesize[i];
        }
    }

    return 0;
}