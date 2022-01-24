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
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int /*<<< orphan*/  uint16_t ;
typedef  int /*<<< orphan*/  int16_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 

__attribute__((used)) static void FUNC1(uint16_t *dst, const int16_t *src,
                            int dst_linesize, int src_linesize,
                            int width, int height, int log2_scale,
                            const uint8_t dither[8][8], int depth)
{
    int y, x;
    unsigned int mask = -1<<depth;

#define STORE16(pos) do {                                                   \
    temp = ((src[x + y*src_linesize + pos] << log2_scale) + (d[pos]>>1)) >> 5;   \
    if (temp & mask )                                                       \
        temp = ~(temp >> 31);                                               \
    dst[x + y*dst_linesize + pos] = temp;                                   \
} while (0)

    for (y = 0; y < height; y++) {
        const uint8_t *d = dither[y];
        for (x = 0; x < width; x += 8) {
            int temp;
            STORE16(0);
            STORE16(1);
            STORE16(2);
            STORE16(3);
            STORE16(4);
            STORE16(5);
            STORE16(6);
            STORE16(7);
        }
    }
}