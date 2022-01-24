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
                          const uint8_t *_left, const uint8_t *top)
{
    pixel *dst = (pixel *) _dst;
    const pixel *left = (const pixel *) _left;
    pixel4 dc = FUNC1
        ((left[0] + left[1] + left[2] + left[3] +
          left[4] + left[5] + left[6] + left[7] + 4) >> 3);
    int y;

    stride /= sizeof(pixel);
    for (y = 0; y < 8; y++) {
        FUNC0(dst + 0, dc);
        FUNC0(dst + 4, dc);
        dst += stride;
    }
}