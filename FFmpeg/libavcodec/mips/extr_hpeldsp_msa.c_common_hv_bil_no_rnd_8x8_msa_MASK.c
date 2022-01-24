#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_15__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ v8u16 ;
typedef  int /*<<< orphan*/  v16u8 ;
struct TYPE_15__ {int /*<<< orphan*/  member_0; } ;
typedef  TYPE_1__ v16i8 ;
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int int32_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,scalar_t__,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/  const*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__,scalar_t__,scalar_t__,scalar_t__,TYPE_1__,TYPE_1__) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__,int /*<<< orphan*/ ,TYPE_1__,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__,int /*<<< orphan*/ ,TYPE_1__,int /*<<< orphan*/ ,TYPE_1__,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_1__,int /*<<< orphan*/ ,TYPE_1__,int /*<<< orphan*/ ,TYPE_1__,int /*<<< orphan*/ ,TYPE_1__,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (scalar_t__,scalar_t__,scalar_t__,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_1__,TYPE_1__,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static void FUNC12(const uint8_t *src, int32_t src_stride,
                                         uint8_t *dst, int32_t dst_stride)
{
    v16u8 src0, src1, src2, src3, src4, src5, src6, src7, src8;
    v16u8 src0_sld1, src1_sld1, src2_sld1, src3_sld1;
    v16u8 src4_sld1, src5_sld1, src6_sld1, src7_sld1, src8_sld1;
    v8u16 src0_r, src1_r, src2_r, src3_r;
    v8u16 src4_r, src5_r, src6_r, src7_r, src8_r;
    v8u16 add0, add1, add2, add3, add4, add5, add6, add7, add8;
    v8u16 sum0, sum1, sum2, sum3, sum4, sum5, sum6, sum7;
    v16i8 out0, out1;
    v16i8 zeros = { 0 };

    FUNC5(src, src_stride, src0, src1, src2, src3, src4, src5, src6, src7);
    src += (8 * src_stride);
    src8 = FUNC4(src);

    FUNC9(zeros, src0, zeros, src1, zeros, src2, zeros, src3, 1,
               src0_sld1, src1_sld1, src2_sld1, src3_sld1);
    FUNC8(zeros, src4, zeros, src5, zeros, src6, 1, src4_sld1,
               src5_sld1, src6_sld1);
    FUNC7(zeros, src7, zeros, src8, 1, src7_sld1, src8_sld1);
    FUNC3(src0_sld1, src0, src1_sld1, src1, src2_sld1, src2, src3_sld1,
               src3, src0_r, src1_r, src2_r, src3_r);
    FUNC2(src4_sld1, src4, src5_sld1, src5, src6_sld1, src6, src4_r,
               src5_r, src6_r);
    FUNC1(src7_sld1, src7, src8_sld1, src8, src7_r, src8_r);
    FUNC0(src0_r, src1_r, src2_r, add0, add1, add2);
    FUNC0(src3_r, src4_r, src5_r, add3, add4, add5);
    FUNC0(src6_r, src7_r, src8_r, add6, add7, add8);

    sum0 = add0 + add1 + 1;
    sum1 = add1 + add2 + 1;
    sum2 = add2 + add3 + 1;
    sum3 = add3 + add4 + 1;
    sum4 = add4 + add5 + 1;
    sum5 = add5 + add6 + 1;
    sum6 = add6 + add7 + 1;
    sum7 = add7 + add8 + 1;

    FUNC10(sum0, sum1, sum2, sum3, 2);
    FUNC10(sum4, sum5, sum6, sum7, 2);
    FUNC6(sum1, sum0, sum3, sum2, out0, out1);
    FUNC11(out0, out1, 0, 1, 0, 1, dst, dst_stride);
    FUNC6(sum5, sum4, sum7, sum6, out0, out1);
    FUNC11(out0, out1, 0, 1, 0, 1, dst + 4 * dst_stride, dst_stride);
}