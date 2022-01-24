#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  v8i16 ;
struct TYPE_12__ {int /*<<< orphan*/  member_0; } ;
typedef  TYPE_1__ v16u8 ;
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int /*<<< orphan*/  uint64_t ;
typedef  unsigned int uint32_t ;
typedef  unsigned int int32_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_1__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_1__,TYPE_1__,TYPE_1__,TYPE_1__) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__,TYPE_1__,TYPE_1__,TYPE_1__,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *,unsigned int) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_1__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (unsigned int) ; 

__attribute__((used)) static void FUNC11(uint8_t *data, int32_t stride, int32_t log2_denom,
                            int32_t src_weight, int32_t offset_in)
{
    uint32_t offset_val;
    uint64_t tp0, tp1, tp2, tp3;
    v16u8 src0 = { 0 }, src1 = { 0 }, src2 = { 0 }, src3 = { 0 };
    v8i16 src0_r, src1_r, src2_r, src3_r, src4_r, src5_r, src6_r, src7_r;
    v8i16 tmp0, tmp1, tmp2, tmp3, tmp4, tmp5, tmp6, tmp7;
    v8i16 wgt, denom, offset;

    offset_val = (unsigned) offset_in << log2_denom;

    wgt = FUNC10(src_weight);
    offset = FUNC10(offset_val);
    denom = FUNC10(log2_denom);

    FUNC2(data, stride, tp0, tp1, tp2, tp3);
    FUNC1(tp0, tp1, src0);
    FUNC1(tp2, tp3, src1);
    FUNC2(data + 4 * stride, stride, tp0, tp1, tp2, tp3);
    FUNC1(tp0, tp1, src2);
    FUNC1(tp2, tp3, src3);
    FUNC9(src0, src0_r, src1_r);
    FUNC9(src1, src2_r, src3_r);
    FUNC9(src2, src4_r, src5_r);
    FUNC9(src3, src6_r, src7_r);
    FUNC4(wgt, src0_r, wgt, src1_r, wgt, src2_r, wgt, src3_r, tmp0, tmp1, tmp2,
         tmp3);
    FUNC4(wgt, src4_r, wgt, src5_r, wgt, src6_r, wgt, src7_r, tmp4, tmp5, tmp6,
         tmp7);
    FUNC0(tmp0, offset, tmp1, offset, tmp2, offset, tmp3, offset, tmp0,
                tmp1, tmp2, tmp3);
    FUNC0(tmp4, offset, tmp5, offset, tmp6, offset, tmp7, offset, tmp4,
                tmp5, tmp6, tmp7);
    FUNC3(tmp0, tmp1, tmp2, tmp3, tmp4, tmp5, tmp6, tmp7, 0);
    FUNC7(tmp0, tmp1, tmp2, tmp3, tmp4, tmp5, tmp6, tmp7, denom);
    FUNC6(tmp0, tmp1, tmp2, tmp3, tmp4, tmp5, tmp6, tmp7, 7);
    FUNC5(tmp1, tmp0, tmp3, tmp2, tmp5, tmp4, tmp7, tmp6, src0, src1,
                src2, src3);
    FUNC8(src0, src1, src2, src3, 0, 1, 0, 1, 0, 1, 0, 1, data, stride);
}