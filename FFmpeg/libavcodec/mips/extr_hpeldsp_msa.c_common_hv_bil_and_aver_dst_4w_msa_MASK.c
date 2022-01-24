#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_20__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  v8u16 ;
typedef  int /*<<< orphan*/  v4i32 ;
typedef  scalar_t__ v16u8 ;
struct TYPE_20__ {int /*<<< orphan*/  member_0; } ;
typedef  TYPE_1__ v16i8 ;
typedef  int uint8_t ;
typedef  int /*<<< orphan*/  uint32_t ;
typedef  int int32_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,scalar_t__,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__,TYPE_1__,TYPE_1__,TYPE_1__,TYPE_1__,TYPE_1__,scalar_t__,scalar_t__,scalar_t__) ; 
 TYPE_1__ FUNC4 (int const*) ; 
 int /*<<< orphan*/  FUNC5 (int const*,int,TYPE_1__,TYPE_1__) ; 
 int /*<<< orphan*/  FUNC6 (int*,int,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__,TYPE_1__,TYPE_1__,TYPE_1__,TYPE_1__,TYPE_1__,int,TYPE_1__,TYPE_1__,TYPE_1__) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC12(const uint8_t *src,
                                              int32_t src_stride,
                                              uint8_t *dst, int32_t dst_stride,
                                              uint8_t height)
{
    uint8_t loop_cnt;
    uint32_t out0, out1;
    v16i8 src0, src1, src2, src0_sld1, src1_sld1, src2_sld1;
    v16u8 src0_r, src1_r, src2_r;
    v8u16 add0, add1, add2, sum0, sum1;
    v16u8 dst0, dst1, res0, res1;
    v16i8 zeros = { 0 };

    src0 = FUNC4(src);
    src += src_stride;

    for (loop_cnt = (height >> 1); loop_cnt--;) {
        FUNC5(src, src_stride, src1, src2);
        src += (2 * src_stride);

        FUNC6(dst, dst_stride, dst0, dst1);
        FUNC8(zeros, src0, zeros, src1, zeros, src2, 1, src0_sld1,
                   src1_sld1, src2_sld1);
        FUNC3(src0_sld1, src0, src1_sld1, src1, src2_sld1, src2, src0_r,
                   src1_r, src2_r);
        FUNC2(src0_r, src1_r, src2_r, add0, add1, add2);
        FUNC0(add0, add1, add1, add2, sum0, sum1);
        FUNC9(sum0, sum1, 2);
        FUNC7(sum0, sum0, sum1, sum1, res0, res1);
        FUNC1(dst0, res0, dst1, res1, res0, res1);

        out0 = FUNC11((v4i32) res0, 0);
        out1 = FUNC11((v4i32) res1, 0);
        FUNC10(out0, dst);
        dst += dst_stride;
        FUNC10(out1, dst);
        dst += dst_stride;

        src0 = src2;
    }
}