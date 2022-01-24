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
typedef  int /*<<< orphan*/  v2i64 ;
typedef  scalar_t__ v16u8 ;
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int /*<<< orphan*/  uint64_t ;
typedef  int ptrdiff_t ;
typedef  int int32_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int,scalar_t__,scalar_t__,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void FUNC4(uint8_t *dst, ptrdiff_t dst_stride,
                            uint8_t *src, ptrdiff_t src_stride,
                            int height, int mx, int my)
{
    int32_t cnt;
    uint64_t out0, out1, out2, out3, out4, out5, out6, out7;
    v16u8 src0, src1, src2, src3, src4, src5, src6, src7;

    if (0 == height % 8) {
        for (cnt = height >> 3; cnt--;) {
            FUNC1(src, src_stride,
                   src0, src1, src2, src3, src4, src5, src6, src7);
            src += (8 * src_stride);

            out0 = FUNC3((v2i64) src0, 0);
            out1 = FUNC3((v2i64) src1, 0);
            out2 = FUNC3((v2i64) src2, 0);
            out3 = FUNC3((v2i64) src3, 0);
            out4 = FUNC3((v2i64) src4, 0);
            out5 = FUNC3((v2i64) src5, 0);
            out6 = FUNC3((v2i64) src6, 0);
            out7 = FUNC3((v2i64) src7, 0);

            FUNC2(out0, out1, out2, out3, dst, dst_stride);
            dst += (4 * dst_stride);
            FUNC2(out4, out5, out6, out7, dst, dst_stride);
            dst += (4 * dst_stride);
        }
    } else if (0 == height % 4) {
        for (cnt = (height / 4); cnt--;) {
            FUNC0(src, src_stride, src0, src1, src2, src3);
            src += (4 * src_stride);
            out0 = FUNC3((v2i64) src0, 0);
            out1 = FUNC3((v2i64) src1, 0);
            out2 = FUNC3((v2i64) src2, 0);
            out3 = FUNC3((v2i64) src3, 0);

            FUNC2(out0, out1, out2, out3, dst, dst_stride);
            dst += (4 * dst_stride);
        }
    }
}