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
typedef  int /*<<< orphan*/  v16u8 ;
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int uint32_t ;
typedef  int /*<<< orphan*/  ptrdiff_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 

void FUNC2(uint8_t *dst, ptrdiff_t dst_stride, const uint8_t *left,
                       const uint8_t *src)
{
    uint32_t row;
    v16u8 src1, src2;

    src1 = FUNC0(src);
    src2 = FUNC0(src + 16);

    for (row = 32; row--;) {
        FUNC1(src1, src2, dst, 16);
        dst += dst_stride;
    }
}