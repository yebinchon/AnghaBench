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
typedef  scalar_t__ v8u16 ;
typedef  int /*<<< orphan*/  v16u8 ;
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int int32_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/  const*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__,scalar_t__,scalar_t__,scalar_t__,int) ; 

__attribute__((used)) static void FUNC6(const uint8_t *src,
                                          int32_t src_stride,
                                          uint8_t *dst, int32_t dst_stride)
{
    v16u8 src0, src1, src2, src3, src4, src5, src6, src7, src8, src9;
    v16u8 src10, src11, src12, src13, src14, src15, src16, src17;
    v8u16 src0_r, src1_r, src2_r, src3_r, src4_r, src5_r, src6_r, src7_r;
    v8u16 src8_r, src0_l, src1_l, src2_l, src3_l, src4_l, src5_l, src6_l;
    v8u16 src7_l, src8_l;
    v8u16 sum0_r, sum1_r, sum2_r, sum3_r, sum4_r, sum5_r, sum6_r, sum7_r;
    v8u16 sum0_l, sum1_l, sum2_l, sum3_l, sum4_l, sum5_l, sum6_l, sum7_l;

    FUNC3(src, src_stride, src0, src1, src2, src3, src4, src5, src6, src7);
    FUNC3((src + 1), src_stride,
           src9, src10, src11, src12, src13, src14, src15, src16);
    src += (8 * src_stride);
    src8 = FUNC2(src);
    src17 = FUNC2(src + 1);

    FUNC1(src9, src0, src0_r, src0_l);
    FUNC1(src10, src1, src1_r, src1_l);
    FUNC1(src11, src2, src2_r, src2_l);
    FUNC1(src12, src3, src3_r, src3_l);
    FUNC1(src13, src4, src4_r, src4_l);
    FUNC1(src14, src5, src5_r, src5_l);
    FUNC1(src15, src6, src6_r, src6_l);
    FUNC1(src16, src7, src7_r, src7_l);
    FUNC1(src17, src8, src8_r, src8_l);

    FUNC0(src0_r, src1_r, src2_r, src0_r, src1_r, src2_r);
    FUNC0(src3_r, src4_r, src5_r, src3_r, src4_r, src5_r);
    FUNC0(src6_r, src7_r, src8_r, src6_r, src7_r, src8_r);
    FUNC0(src0_l, src1_l, src2_l, src0_l, src1_l, src2_l);
    FUNC0(src3_l, src4_l, src5_l, src3_l, src4_l, src5_l);
    FUNC0(src6_l, src7_l, src8_l, src6_l, src7_l, src8_l);

    sum0_r = src0_r + src1_r + 1;
    sum1_r = src1_r + src2_r + 1;
    sum2_r = src2_r + src3_r + 1;
    sum3_r = src3_r + src4_r + 1;
    sum4_r = src4_r + src5_r + 1;
    sum5_r = src5_r + src6_r + 1;
    sum6_r = src6_r + src7_r + 1;
    sum7_r = src7_r + src8_r + 1;
    sum0_l = src0_l + src1_l + 1;
    sum1_l = src1_l + src2_l + 1;
    sum2_l = src2_l + src3_l + 1;
    sum3_l = src3_l + src4_l + 1;
    sum4_l = src4_l + src5_l + 1;
    sum5_l = src5_l + src6_l + 1;
    sum6_l = src6_l + src7_l + 1;
    sum7_l = src7_l + src8_l + 1;

    FUNC5(sum0_r, sum1_r, sum2_r, sum3_r, 2);
    FUNC5(sum4_r, sum5_r, sum6_r, sum7_r, 2);
    FUNC5(sum0_l, sum1_l, sum2_l, sum3_l, 2);
    FUNC5(sum4_l, sum5_l, sum6_l, sum7_l, 2);
    FUNC4(sum0_l, sum0_r, sum1_l, sum1_r,
                 sum2_l, sum2_r, sum3_l, sum3_r, dst, dst_stride);
    dst += (4 * dst_stride);
    FUNC4(sum4_l, sum4_r, sum5_l, sum5_r,
                 sum6_l, sum6_r, sum7_l, sum7_r, dst, dst_stride);
}