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
typedef  int /*<<< orphan*/  uint64_t ;
typedef  int int32_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static void FUNC4(uint8_t *src, int32_t src_stride,
                            uint8_t *dst, int32_t dst_stride,
                            int32_t height)
{
    int32_t cnt;
    uint64_t out0, out1, out2, out3, out4, out5, out6, out7;

    if (2 == height) {
        FUNC0(src, src_stride, out0, out1);
        FUNC2(out0, dst);
        dst += dst_stride;
        FUNC2(out1, dst);
    } else if (6 == height) {
        FUNC1(src, src_stride, out0, out1, out2, out3);
        src += (4 * src_stride);
        FUNC3(out0, out1, out2, out3, dst, dst_stride);
        dst += (4 * dst_stride);
        FUNC0(src, src_stride, out0, out1);
        FUNC2(out0, dst);
        dst += dst_stride;
        FUNC2(out1, dst);
    } else if (0 == (height % 8)) {
        for (cnt = (height >> 3); cnt--;) {
            FUNC1(src, src_stride, out0, out1, out2, out3);
            src += (4 * src_stride);
            FUNC1(src, src_stride, out4, out5, out6, out7);
            src += (4 * src_stride);
            FUNC3(out0, out1, out2, out3, dst, dst_stride);
            dst += (4 * dst_stride);
            FUNC3(out4, out5, out6, out7, dst, dst_stride);
            dst += (4 * dst_stride);
        }
    } else if (0 == (height % 4)) {
        for (cnt = (height >> 2); cnt--;) {
            FUNC1(src, src_stride, out0, out1, out2, out3);
            src += (4 * src_stride);
            FUNC3(out0, out1, out2, out3, dst, dst_stride);
            dst += (4 * dst_stride);
        }
    }
}