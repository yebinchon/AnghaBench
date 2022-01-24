#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_32__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  v8u16 ;
typedef  int /*<<< orphan*/  v16u8 ;
struct TYPE_32__ {int /*<<< orphan*/  member_0; } ;
typedef  TYPE_1__ v16i8 ;
typedef  int uint8_t ;
typedef  int int32_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__,TYPE_1__,TYPE_1__,TYPE_1__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__,TYPE_1__,TYPE_1__,TYPE_1__,TYPE_1__,TYPE_1__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_1__ FUNC5 (int const*) ; 
 int /*<<< orphan*/  FUNC6 (int const*,int,TYPE_1__,TYPE_1__,TYPE_1__,TYPE_1__) ; 
 int /*<<< orphan*/  FUNC7 (int*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*,int) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_1__,TYPE_1__,TYPE_1__,TYPE_1__,int,TYPE_1__,TYPE_1__) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_1__,TYPE_1__,TYPE_1__,TYPE_1__,TYPE_1__,TYPE_1__,int,TYPE_1__,TYPE_1__,TYPE_1__) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC12(const uint8_t *src,
                                              int32_t src_stride,
                                              uint8_t *dst, int32_t dst_stride,
                                              uint8_t height)
{
    uint8_t loop_cnt;
    v16i8 src0, src1, src2, src3, src4;
    v16i8 src0_sld1, src1_sld1, src2_sld1, src3_sld1, src4_sld1;
    v16u8 dst0, dst1, dst2, dst3;
    v16u8 src0_r, src1_r, src2_r, src3_r, src4_r;
    v8u16 add0, add1, add2, add3, add4;
    v8u16 sum0, sum1, sum2, sum3;
    v16i8 zeros = { 0 };

    src0 = FUNC5(src);
    src += src_stride;

    for (loop_cnt = (height >> 2); loop_cnt--;) {
        FUNC6(src, src_stride, src1, src2, src3, src4);
        src += (4 * src_stride);

        FUNC7(dst, dst_stride, dst0, dst1, dst2, dst3);
        FUNC10(zeros, src0, zeros, src1, zeros, src2, 1, src0_sld1,
                   src1_sld1, src2_sld1);
        FUNC9(zeros, src3, zeros, src4, 1, src3_sld1, src4_sld1);
        FUNC4(src0_sld1, src0, src1_sld1, src1, src2_sld1, src2, src0_r,
                   src1_r, src2_r);
        FUNC3(src3_sld1, src3, src4_sld1, src4, src3_r, src4_r);
        FUNC2(src0_r, src1_r, src2_r, add0, add1, add2);
        FUNC1(src3_r, src4_r, add3, add4);
        FUNC0(add0, add1, add1, add2, add2, add3, add3, add4,
             sum0, sum1, sum2, sum3);
        FUNC11(sum0, sum1, sum2, sum3, 2);
        FUNC8(sum0, dst0, sum1, dst1,
                           sum2, dst2, sum3, dst3, dst, dst_stride);
        dst += (4 * dst_stride);
        src0 = src4;
    }
}