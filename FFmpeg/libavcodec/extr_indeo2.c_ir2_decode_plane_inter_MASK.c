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
struct TYPE_3__ {int /*<<< orphan*/  gb; } ;
typedef  TYPE_1__ Ir2Context ;

/* Variables and functions */
 int AVERROR_INVALIDDATA ; 
 int FUNC0 (int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC3(Ir2Context *ctx, int width, int height, uint8_t *dst,
                                  int pitch, const uint8_t *table)
{
    int j;
    int out = 0;
    int c;
    int t;

    if (width & 1)
        return AVERROR_INVALIDDATA;

    for (j = 0; j < height; j++) {
        out = 0;
        while (out < width) {
            if (FUNC1(&ctx->gb) <= 0)
                return AVERROR_INVALIDDATA;
            c = FUNC2(&ctx->gb);
            if (c >= 0x80) { /* we have a skip */
                c   -= 0x7F;
                out += c * 2;
            } else { /* add two deltas from table */
                if (c <= 0)
                    return AVERROR_INVALIDDATA;
                t        = dst[out] + (((table[c * 2] - 128)*3) >> 2);
                t        = FUNC0(t);
                dst[out] = t;
                out++;
                t        = dst[out] + (((table[(c * 2) + 1] - 128)*3) >> 2);
                t        = FUNC0(t);
                dst[out] = t;
                out++;
            }
        }
        dst += pitch;
    }
    return 0;
}