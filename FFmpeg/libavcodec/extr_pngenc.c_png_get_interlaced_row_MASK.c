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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int*,int const*,int) ; 
 int /*<<< orphan*/  FUNC1 (int*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC2(uint8_t *dst, int row_size,
                                   int bits_per_pixel, int pass,
                                   const uint8_t *src, int width)
{
    int x, mask, dst_x, j, b, bpp;
    uint8_t *d;
    const uint8_t *s;
    static const int masks[] = {0x80, 0x08, 0x88, 0x22, 0xaa, 0x55, 0xff};

    mask = masks[pass];
    switch (bits_per_pixel) {
    case 1:
        FUNC1(dst, 0, row_size);
        dst_x = 0;
        for (x = 0; x < width; x++) {
            j = (x & 7);
            if ((mask << j) & 0x80) {
                b = (src[x >> 3] >> (7 - j)) & 1;
                dst[dst_x >> 3] |= b << (7 - (dst_x & 7));
                dst_x++;
            }
        }
        break;
    default:
        bpp = bits_per_pixel >> 3;
        d = dst;
        s = src;
        for (x = 0; x < width; x++) {
            j = x & 7;
            if ((mask << j) & 0x80) {
                FUNC0(d, s, bpp);
                d += bpp;
            }
            s += bpp;
        }
        break;
    }
}