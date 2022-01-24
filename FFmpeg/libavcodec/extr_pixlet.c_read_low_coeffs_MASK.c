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
typedef  int /*<<< orphan*/  ptrdiff_t ;
typedef  int int64_t ;
typedef  int int16_t ;
struct TYPE_5__ {TYPE_1__* priv_data; } ;
struct TYPE_4__ {int /*<<< orphan*/  bc; } ;
typedef  TYPE_1__ PixletContext ;
typedef  int /*<<< orphan*/  GetBitContext ;
typedef  TYPE_2__ AVCodecContext ;

/* Variables and functions */
 int AVERROR_INVALIDDATA ; 
 unsigned int FUNC0 (int,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (int,unsigned int) ; 
 int FUNC3 (int) ; 
 int FUNC4 (int /*<<< orphan*/ *,int) ; 
 int FUNC5 (int /*<<< orphan*/ *) ; 
 unsigned int FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int FUNC7 (int /*<<< orphan*/ *,unsigned int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,unsigned int) ; 

__attribute__((used)) static int FUNC9(AVCodecContext *avctx, int16_t *dst, int size,
                           int width, ptrdiff_t stride)
{
    PixletContext *ctx = avctx->priv_data;
    GetBitContext *bc = &ctx->bc;
    unsigned cnt1, nbits, k, j = 0, i = 0;
    int64_t value, state = 3;
    int rlen, escape, flag = 0;

    while (i < size) {
        nbits = FUNC0(FUNC3((state >> 8) + 3) ^ 0x1F, 14);

        cnt1 = FUNC6(bc, 0, 8);
        if (cnt1 < 8) {
            value = FUNC7(bc, nbits);
            if (value <= 1) {
                FUNC8(bc, nbits - 1);
                escape = ((1 << nbits) - 1) * cnt1;
            } else {
                FUNC8(bc, nbits);
                escape = value + ((1 << nbits) - 1) * cnt1 - 1;
            }
        } else {
            escape = FUNC4(bc, 16);
        }

        value    = -((escape + flag) & 1) | 1;
        dst[j++] = value * ((escape + flag + 1) >> 1);
        i++;
        if (j == width) {
            j    = 0;
            dst += stride;
        }
        state = 120 * (escape + flag) + state - (120 * state >> 8);
        flag  = 0;

        if (state * 4ULL > 0xFF || i >= size)
            continue;

        nbits  = ((state + 8) >> 5) + (state ? FUNC3(state) : 32) - 24;
        escape = FUNC2(16383, nbits);
        cnt1   = FUNC6(bc, 0, 8);
        if (cnt1 > 7) {
            rlen = FUNC4(bc, 16);
        } else {
            value = FUNC7(bc, nbits);
            if (value > 1) {
                FUNC8(bc, nbits);
                rlen = value + escape * cnt1 - 1;
            } else {
                FUNC8(bc, nbits - 1);
                rlen = escape * cnt1;
            }
        }

        if (rlen > size - i)
            return AVERROR_INVALIDDATA;
        i += rlen;

        for (k = 0; k < rlen; k++) {
            dst[j++] = 0;
            if (j == width) {
                j    = 0;
                dst += stride;
            }
        }

        state = 0;
        flag  = rlen < 0xFFFF ? 1 : 0;
    }

    FUNC1(bc);
    return FUNC5(bc) >> 3;
}