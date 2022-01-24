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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(uint8_t *_dst, ptrdiff_t stride,
                         const uint8_t *left, const uint8_t *_top)
{
    pixel *dst = (pixel *) _dst;
    const pixel *top = (const pixel *) _top;
    pixel4 p4a = FUNC0(top +  0);
    pixel4 p4b = FUNC0(top +  4);
    pixel4 p4c = FUNC0(top +  8);
    pixel4 p4d = FUNC0(top + 12);
    pixel4 p4e = FUNC0(top + 16);
    pixel4 p4f = FUNC0(top + 20);
    pixel4 p4g = FUNC0(top + 24);
    pixel4 p4h = FUNC0(top + 28);
    int y;

    stride /= sizeof(pixel);
    for (y = 0; y < 32; y++) {
        FUNC1(dst +  0, p4a);
        FUNC1(dst +  4, p4b);
        FUNC1(dst +  8, p4c);
        FUNC1(dst + 12, p4d);
        FUNC1(dst + 16, p4e);
        FUNC1(dst + 20, p4f);
        FUNC1(dst + 24, p4g);
        FUNC1(dst + 28, p4h);
        dst += stride;
    }
}