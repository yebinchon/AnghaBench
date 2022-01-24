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
typedef  int uint8_t ;
typedef  int int32_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*,int) ; 
 int /*<<< orphan*/  FUNC1 (int const*) ; 
 int /*<<< orphan*/  FUNC2 (int const*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(const uint8_t *src, int32_t src_stride,
                                  uint8_t *dst, int32_t dst_stride,
                                  uint8_t height)
{
    uint8_t loop_cnt;
    v16u8 src0, src1, src2, src3, src4, src5, src6, src7, src8;

    src0 = FUNC1(src);
    src += src_stride;

    for (loop_cnt = (height >> 3); loop_cnt--;) {
        FUNC2(src, src_stride, src1, src2, src3, src4, src5, src6, src7, src8);
        src += (8 * src_stride);

        FUNC0(src0, src1, src1, src2, src2, src3, src3, src4,
                       dst, dst_stride);
        dst += (4 * dst_stride);
        FUNC0(src4, src5, src5, src6, src6, src7, src7, src8,
                       dst, dst_stride);
        dst += (4 * dst_stride);

        src0 = src8;
    }
}