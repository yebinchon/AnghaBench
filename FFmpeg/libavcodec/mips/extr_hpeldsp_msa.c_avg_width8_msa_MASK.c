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
typedef  int /*<<< orphan*/  const uint8_t ;
typedef  int /*<<< orphan*/  uint64_t ;
typedef  int int32_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/  const*,int,scalar_t__,scalar_t__,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/  const*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(const uint8_t *src, int32_t src_stride,
                           uint8_t *dst, int32_t dst_stride,
                           int32_t height)
{
    int32_t cnt;
    uint64_t out0, out1, out2, out3;
    v16u8 src0, src1, src2, src3;
    v16u8 dst0, dst1, dst2, dst3;

    for (cnt = (height / 4); cnt--;) {
        FUNC1(src, src_stride, src0, src1, src2, src3);
        src += (4 * src_stride);
        FUNC1(dst, dst_stride, dst0, dst1, dst2, dst3);

        FUNC0(src0, dst0, src1, dst1, src2, dst2, src3, dst3,
                    dst0, dst1, dst2, dst3);

        out0 = FUNC3((v2i64) dst0, 0);
        out1 = FUNC3((v2i64) dst1, 0);
        out2 = FUNC3((v2i64) dst2, 0);
        out3 = FUNC3((v2i64) dst3, 0);
        FUNC2(out0, out1, out2, out3, dst, dst_stride);
        dst += (4 * dst_stride);
    }
}