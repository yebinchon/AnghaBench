#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  v8i16 ;
typedef  int /*<<< orphan*/  v16u8 ;
struct TYPE_10__ {int /*<<< orphan*/  member_0; } ;
typedef  TYPE_1__ v16i8 ;
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int uint32_t ;
typedef  int ptrdiff_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__,int /*<<< orphan*/ ,TYPE_1__,int /*<<< orphan*/ ,TYPE_1__,int /*<<< orphan*/ ,TYPE_1__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__,int /*<<< orphan*/ ,TYPE_1__,int /*<<< orphan*/ ,TYPE_1__,int /*<<< orphan*/ ,TYPE_1__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC10 (int) ; 

void FUNC11(uint8_t *src, ptrdiff_t stride,
                                   int height, int log2_denom,
                                   int weight_src, int offset_in)
{
    uint32_t offset_val;
    v16i8 zero = { 0 };
    v16u8 src0, src1, src2, src3, src4, src5, src6, src7;
    v16u8 dst0, dst1, dst2, dst3, dst4, dst5, dst6, dst7;
    v8i16 src0_l, src1_l, src2_l, src3_l, src0_r, src1_r, src2_r, src3_r;
    v8i16 src4_l, src5_l, src6_l, src7_l, src4_r, src5_r, src6_r, src7_r;
    v8i16 tmp0, tmp1, tmp2, tmp3, tmp4, tmp5, tmp6, tmp7;
    v8i16 tmp8, tmp9, tmp10, tmp11, tmp12, tmp13, tmp14, tmp15;
    v8i16 wgt, denom, offset;

    offset_val = (unsigned) offset_in << log2_denom;

    wgt = FUNC10(weight_src);
    offset = FUNC10(offset_val);
    denom = FUNC10(log2_denom);

    FUNC3(src, stride, src0, src1, src2, src3, src4, src5, src6, src7);
    FUNC2(zero, src0, zero, src1, zero, src2, zero, src3, src0_r, src1_r,
               src2_r, src3_r);
    FUNC1(zero, src0, zero, src1, zero, src2, zero, src3, src0_l, src1_l,
               src2_l, src3_l);
    FUNC2(zero, src4, zero, src5, zero, src6, zero, src7, src4_r, src5_r,
               src6_r, src7_r);
    FUNC1(zero, src4, zero, src5, zero, src6, zero, src7, src4_l, src5_l,
               src6_l, src7_l);
    FUNC5(wgt, src0_r, wgt, src0_l, wgt, src1_r, wgt, src1_l, tmp0, tmp1, tmp2,
         tmp3);
    FUNC5(wgt, src2_r, wgt, src2_l, wgt, src3_r, wgt, src3_l, tmp4, tmp5, tmp6,
         tmp7);
    FUNC5(wgt, src4_r, wgt, src4_l, wgt, src5_r, wgt, src5_l, tmp8, tmp9, tmp10,
         tmp11);
    FUNC5(wgt, src6_r, wgt, src6_l, wgt, src7_r, wgt, src7_l, tmp12, tmp13,
         tmp14, tmp15);
    FUNC0(tmp0, offset, tmp1, offset, tmp2, offset, tmp3, offset, tmp0,
                tmp1, tmp2, tmp3);
    FUNC0(tmp4, offset, tmp5, offset, tmp6, offset, tmp7, offset, tmp4,
                tmp5, tmp6, tmp7);
    FUNC0(tmp8, offset, tmp9, offset, tmp10, offset, tmp11, offset, tmp8,
                tmp9, tmp10, tmp11);
    FUNC0(tmp12, offset, tmp13, offset, tmp14, offset, tmp15, offset,
                tmp12, tmp13, tmp14, tmp15);
    FUNC4(tmp0, tmp1, tmp2, tmp3, tmp4, tmp5, tmp6, tmp7, 0);
    FUNC4(tmp8, tmp9, tmp10, tmp11, tmp12, tmp13, tmp14, tmp15, 0);
    FUNC8(tmp0, tmp1, tmp2, tmp3, tmp4, tmp5, tmp6, tmp7, denom);
    FUNC8(tmp8, tmp9, tmp10, tmp11, tmp12, tmp13, tmp14, tmp15, denom);
    FUNC7(tmp0, tmp1, tmp2, tmp3, tmp4, tmp5, tmp6, tmp7, 7);
    FUNC7(tmp8, tmp9, tmp10, tmp11, tmp12, tmp13, tmp14, tmp15, 7);
    FUNC6(tmp1, tmp0, tmp3, tmp2, tmp5, tmp4, tmp7, tmp6, dst0, dst1,
                dst2, dst3);
    FUNC6(tmp9, tmp8, tmp11, tmp10, tmp13, tmp12, tmp15, tmp14, dst4,
                dst5, dst6, dst7);
    FUNC9(dst0, dst1, dst2, dst3, dst4, dst5, dst6, dst7, src, stride);
    src += 8 * stride;

    if (16 == height) {
        FUNC3(src, stride, src0, src1, src2, src3, src4, src5, src6, src7);
        FUNC2(zero, src0, zero, src1, zero, src2, zero, src3, src0_r,
                   src1_r, src2_r, src3_r);
        FUNC1(zero, src0, zero, src1, zero, src2, zero, src3, src0_l,
                   src1_l, src2_l, src3_l);
        FUNC2(zero, src4, zero, src5, zero, src6, zero, src7, src4_r,
                   src5_r, src6_r, src7_r);
        FUNC1(zero, src4, zero, src5, zero, src6, zero, src7, src4_l,
                   src5_l, src6_l, src7_l);
        FUNC5(wgt, src0_r, wgt, src0_l, wgt, src1_r, wgt, src1_l, tmp0, tmp1,
             tmp2, tmp3);
        FUNC5(wgt, src2_r, wgt, src2_l, wgt, src3_r, wgt, src3_l, tmp4, tmp5,
             tmp6, tmp7);
        FUNC5(wgt, src4_r, wgt, src4_l, wgt, src5_r, wgt, src5_l, tmp8, tmp9,
             tmp10, tmp11);
        FUNC5(wgt, src6_r, wgt, src6_l, wgt, src7_r, wgt, src7_l, tmp12, tmp13,
             tmp14, tmp15);
        FUNC0(tmp0, offset, tmp1, offset, tmp2, offset, tmp3, offset,
                    tmp0, tmp1, tmp2, tmp3);
        FUNC0(tmp4, offset, tmp5, offset, tmp6, offset, tmp7, offset,
                    tmp4, tmp5, tmp6, tmp7);
        FUNC0(tmp8, offset, tmp9, offset, tmp10, offset, tmp11, offset,
                    tmp8, tmp9, tmp10, tmp11);
        FUNC0(tmp12, offset, tmp13, offset, tmp14, offset, tmp15, offset,
                    tmp12, tmp13, tmp14, tmp15);
        FUNC4(tmp0, tmp1, tmp2, tmp3, tmp4, tmp5, tmp6, tmp7, 0);
        FUNC4(tmp8, tmp9, tmp10, tmp11, tmp12, tmp13, tmp14, tmp15, 0);
        FUNC8(tmp0, tmp1, tmp2, tmp3, tmp4, tmp5, tmp6, tmp7, denom);
        FUNC8(tmp8, tmp9, tmp10, tmp11, tmp12, tmp13, tmp14, tmp15, denom);
        FUNC7(tmp0, tmp1, tmp2, tmp3, tmp4, tmp5, tmp6, tmp7, 7);
        FUNC7(tmp8, tmp9, tmp10, tmp11, tmp12, tmp13, tmp14, tmp15, 7);
        FUNC6(tmp1, tmp0, tmp3, tmp2, tmp5, tmp4, tmp7, tmp6, dst0, dst1,
                    dst2, dst3);
        FUNC6(tmp9, tmp8, tmp11, tmp10, tmp13, tmp12, tmp15, tmp14, dst4,
                    dst5, dst6, dst7);
        FUNC9(dst0, dst1, dst2, dst3, dst4, dst5, dst6, dst7, src, stride);
    }
}