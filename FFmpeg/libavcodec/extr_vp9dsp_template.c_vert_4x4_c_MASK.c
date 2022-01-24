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
    pixel4 p4 = FUNC0(top);

    stride /= sizeof(pixel);
    FUNC1(dst + stride * 0, p4);
    FUNC1(dst + stride * 1, p4);
    FUNC1(dst + stride * 2, p4);
    FUNC1(dst + stride * 3, p4);
}