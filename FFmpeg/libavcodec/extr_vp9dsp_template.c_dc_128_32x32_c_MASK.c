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
typedef  int /*<<< orphan*/  pixel ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int BIT_DEPTH ; 
 int /*<<< orphan*/  FUNC1 (int) ; 

__attribute__((used)) static void FUNC2(uint8_t *_dst, ptrdiff_t stride,
                           const uint8_t *left, const uint8_t *top)
{
    pixel *dst = (pixel *) _dst;
    pixel4 val = FUNC1(128 << (BIT_DEPTH - 8));
    int y;

    stride /= sizeof(pixel);
    for (y = 0; y < 32; y++) {
        FUNC0(dst +  0, val);
        FUNC0(dst +  4, val);
        FUNC0(dst +  8, val);
        FUNC0(dst + 12, val);
        FUNC0(dst + 16, val);
        FUNC0(dst + 20, val);
        FUNC0(dst + 24, val);
        FUNC0(dst + 28, val);
        dst += stride;
    }
}