#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int uint8_t ;
typedef  int /*<<< orphan*/  PutByteContext ;

/* Variables and functions */
 int AVERROR_INVALIDDATA ; 
 int const FUNC0 (int const*) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 void FUNC2 (int /*<<< orphan*/ *,unsigned int) ; 
 void FUNC3 (int /*<<< orphan*/ *,unsigned int) ; 
 int FUNC4 (int /*<<< orphan*/ *) ; 
 int FUNC5 (int const*,int,int,int) ; 

__attribute__((used)) static int FUNC6(PutByteContext *pbc, const uint8_t *src,
                          int w, int bpp)
{
    int val, count, x, start = FUNC4(pbc);
    void (*bytestream2_put)(PutByteContext *, unsigned int);

    if (bpp == 1)
        bytestream2_put = bytestream2_put_byte;
    else
        bytestream2_put = bytestream2_put_be16;

    for (x = 0; x < w; x += count) {
        /* see if we can encode the next set of pixels with RLE */
        count = FUNC5(src, w - x, bpp, 1);
        if (count > 1) {
            if (FUNC1(pbc) < bpp * 2)
                return AVERROR_INVALIDDATA;

            val = bpp == 1 ? *src : FUNC0(src);
            bytestream2_put(pbc, count);
            bytestream2_put(pbc, val);
        } else {
            int i;
            /* fall back on uncompressed */
            count = FUNC5(src, w - x, bpp, 0);
            if (FUNC1(pbc) < bpp * (count + 1))
                return AVERROR_INVALIDDATA;

            bytestream2_put(pbc, count + 0x80);
            for (i = 0; i < count; i++) {
                val = bpp == 1 ? src[i] : FUNC0(src + i * bpp);
                bytestream2_put(pbc, val);
            }
        }

        src += count * bpp;
    }

    return FUNC4(pbc) - start;
}