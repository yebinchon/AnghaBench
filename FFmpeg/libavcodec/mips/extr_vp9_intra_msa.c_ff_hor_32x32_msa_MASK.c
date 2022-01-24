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
typedef  scalar_t__ v16u8 ;
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int uint32_t ;
typedef  int /*<<< orphan*/  ptrdiff_t ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,scalar_t__,int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC2 (int) ; 

void FUNC3(uint8_t *dst, ptrdiff_t dst_stride, const uint8_t *src,
                      const uint8_t *top)
{
    uint32_t row, inp;
    v16u8 src0, src1, src2, src3;

    src += 28;
    for (row = 8; row--;) {
        inp = FUNC0(src);
        src -= 4;

        src0 = (v16u8) FUNC2(inp >> 24);
        src1 = (v16u8) FUNC2(inp >> 16);
        src2 = (v16u8) FUNC2(inp >> 8);
        src3 = (v16u8) FUNC2(inp);

        FUNC1(src0, src0, dst, 16);
        dst += dst_stride;
        FUNC1(src1, src1, dst, 16);
        dst += dst_stride;
        FUNC1(src2, src2, dst, 16);
        dst += dst_stride;
        FUNC1(src3, src3, dst, 16);
        dst += dst_stride;
    }
}