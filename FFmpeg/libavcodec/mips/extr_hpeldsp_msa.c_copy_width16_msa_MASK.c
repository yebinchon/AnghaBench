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
typedef  int int32_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/  const*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/  const*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/  const*,int,int /*<<< orphan*/ *,int,int,int) ; 

__attribute__((used)) static void FUNC5(const uint8_t *src, int32_t src_stride,
                             uint8_t *dst, int32_t dst_stride,
                             int32_t height)
{
    int32_t cnt;
    v16u8 src0, src1, src2, src3, src4, src5, src6, src7;

    if (0 == height % 12) {
        for (cnt = (height / 12); cnt--;) {
            FUNC1(src, src_stride,
                   src0, src1, src2, src3, src4, src5, src6, src7);
            src += (8 * src_stride);
            FUNC3(src0, src1, src2, src3, src4, src5, src6, src7,
                   dst, dst_stride);
            dst += (8 * dst_stride);

            FUNC0(src, src_stride, src0, src1, src2, src3);
            src += (4 * src_stride);
            FUNC2(src0, src1, src2, src3, dst, dst_stride);
            dst += (4 * dst_stride);
        }
    } else if (0 == height % 8) {
        FUNC4(src, src_stride, dst, dst_stride, height, 16);
    } else if (0 == height % 4) {
        for (cnt = (height >> 2); cnt--;) {
            FUNC0(src, src_stride, src0, src1, src2, src3);
            src += (4 * src_stride);

            FUNC2(src0, src1, src2, src3, dst, dst_stride);
            dst += (4 * dst_stride);
        }
    }
}