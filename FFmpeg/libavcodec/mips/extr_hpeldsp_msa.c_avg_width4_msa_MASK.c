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
typedef  int /*<<< orphan*/  v4i32 ;
typedef  scalar_t__ v16u8 ;
typedef  int /*<<< orphan*/  const uint8_t ;
typedef  int /*<<< orphan*/  uint32_t ;
typedef  int int32_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/  const*,int,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/  const*,int,scalar_t__,scalar_t__,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/  const*,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC7(const uint8_t *src, int32_t src_stride,
                           uint8_t *dst, int32_t dst_stride,
                           int32_t height)
{
    int32_t cnt;
    uint32_t out0, out1, out2, out3;
    v16u8 src0, src1, src2, src3;
    v16u8 dst0, dst1, dst2, dst3;

    if (0 == (height % 4)) {
        for (cnt = (height / 4); cnt--;) {
            FUNC3(src, src_stride, src0, src1, src2, src3);
            src += (4 * src_stride);

            FUNC3(dst, dst_stride, dst0, dst1, dst2, dst3);

            FUNC1(src0, dst0, src1, dst1, src2, dst2, src3, dst3,
                        dst0, dst1, dst2, dst3);

            out0 = FUNC6((v4i32) dst0, 0);
            out1 = FUNC6((v4i32) dst1, 0);
            out2 = FUNC6((v4i32) dst2, 0);
            out3 = FUNC6((v4i32) dst3, 0);
            FUNC5(out0, out1, out2, out3, dst, dst_stride);
            dst += (4 * dst_stride);
        }
    } else if (0 == (height % 2)) {
        for (cnt = (height / 2); cnt--;) {
            FUNC2(src, src_stride, src0, src1);
            src += (2 * src_stride);

            FUNC2(dst, dst_stride, dst0, dst1);

            FUNC0(src0, dst0, src1, dst1, dst0, dst1);

            out0 = FUNC6((v4i32) dst0, 0);
            out1 = FUNC6((v4i32) dst1, 0);
            FUNC4(out0, dst);
            dst += dst_stride;
            FUNC4(out1, dst);
            dst += dst_stride;
        }
    }
}