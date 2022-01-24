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
typedef  int ptrdiff_t ;
typedef  int /*<<< orphan*/  pixel4 ;
typedef  int pixel ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int const) ; 

__attribute__((used)) static void FUNC2(uint8_t *_dst, ptrdiff_t stride,
                           const uint8_t *left, const uint8_t *_top)
{
    pixel *dst = (pixel *) _dst;
    const pixel *top = (const pixel *) _top;
    pixel4 dc = FUNC1
        ((top[0] + top[1] + top[2] + top[3] + top[4] + top[5] +
          top[6] + top[7] + top[8] + top[9] + top[10] + top[11] +
          top[12] + top[13] + top[14] + top[15] + top[16] + top[17] +
          top[18] + top[19] + top[20] + top[21] + top[22] + top[23] +
          top[24] + top[25] + top[26] + top[27] + top[28] + top[29] +
          top[30] + top[31] + 16) >> 5);
    int y;

    stride /= sizeof(pixel);
    for (y = 0; y < 32; y++) {
        FUNC0(dst +  0, dc);
        FUNC0(dst +  4, dc);
        FUNC0(dst +  8, dc);
        FUNC0(dst + 12, dc);
        FUNC0(dst + 16, dc);
        FUNC0(dst + 20, dc);
        FUNC0(dst + 24, dc);
        FUNC0(dst + 28, dc);
        dst += stride;
    }
}