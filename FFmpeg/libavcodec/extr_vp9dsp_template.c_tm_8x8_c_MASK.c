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
typedef  int pixel ;

/* Variables and functions */
 int FUNC0 (int const) ; 

__attribute__((used)) static void FUNC1(uint8_t *_dst, ptrdiff_t stride,
                     const uint8_t *_left, const uint8_t *_top)
{
    pixel *dst = (pixel *) _dst;
    const pixel *left = (const pixel *) _left;
    const pixel *top = (const pixel *) _top;
    int y, tl = top[-1];

    stride /= sizeof(pixel);
    for (y = 0; y < 8; y++) {
        int l_m_tl = left[7 - y] - tl;

        dst[0] = FUNC0(top[0] + l_m_tl);
        dst[1] = FUNC0(top[1] + l_m_tl);
        dst[2] = FUNC0(top[2] + l_m_tl);
        dst[3] = FUNC0(top[3] + l_m_tl);
        dst[4] = FUNC0(top[4] + l_m_tl);
        dst[5] = FUNC0(top[5] + l_m_tl);
        dst[6] = FUNC0(top[6] + l_m_tl);
        dst[7] = FUNC0(top[7] + l_m_tl);
        dst += stride;
    }
}