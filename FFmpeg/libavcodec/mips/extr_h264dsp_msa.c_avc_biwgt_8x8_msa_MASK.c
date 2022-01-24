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
typedef  int /*<<< orphan*/  v8i16 ;
typedef  int /*<<< orphan*/  v16u8 ;
typedef  int /*<<< orphan*/  v16i8 ;
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int /*<<< orphan*/  uint64_t ;
typedef  int int32_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int) ; 
 int /*<<< orphan*/  FUNC10 (int) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC12(uint8_t *src, uint8_t *dst, int32_t stride,
                              int32_t log2_denom, int32_t src_weight,
                              int32_t dst_weight, int32_t offset_in)
{
    uint64_t tp0, tp1, tp2, tp3;
    v16i8 src_wgt, dst_wgt, wgt, vec0, vec1, vec2, vec3, vec4, vec5, vec6, vec7;
    v16u8 src0, src1, src2, src3, dst0, dst1, dst2, dst3;
    v8i16 tmp0, tmp1, tmp2, tmp3, tmp4, tmp5, tmp6, tmp7, denom, offset;

    offset_in = (unsigned) ((offset_in + 1) | 1) << log2_denom;
    offset_in += (128 * (src_weight + dst_weight));

    src_wgt = FUNC9(src_weight);
    dst_wgt = FUNC9(dst_weight);
    offset = FUNC10(offset_in);
    denom = FUNC10(log2_denom + 1);
    wgt = FUNC11(dst_wgt, src_wgt);

    FUNC3(src, stride, tp0, tp1, tp2, tp3);
    FUNC2(tp0, tp1, src0);
    FUNC2(tp2, tp3, src1);
    FUNC3(src + 4 * stride, stride, tp0, tp1, tp2, tp3);
    FUNC2(tp0, tp1, src2);
    FUNC2(tp2, tp3, src3);
    FUNC3(dst, stride, tp0, tp1, tp2, tp3);
    FUNC2(tp0, tp1, dst0);
    FUNC2(tp2, tp3, dst1);
    FUNC3(dst + 4 * stride, stride, tp0, tp1, tp2, tp3);
    FUNC2(tp0, tp1, dst2);
    FUNC2(tp2, tp3, dst3);
    FUNC7(src0, src1, src2, src3, dst0, dst1, dst2, dst3);
    FUNC1(dst0, src0, vec0, vec1);
    FUNC1(dst1, src1, vec2, vec3);
    FUNC1(dst2, src2, vec4, vec5);
    FUNC1(dst3, src3, vec6, vec7);
    tmp0 = FUNC8(offset, wgt, vec0);
    tmp1 = FUNC8(offset, wgt, vec1);
    tmp2 = FUNC8(offset, wgt, vec2);
    tmp3 = FUNC8(offset, wgt, vec3);
    tmp4 = FUNC8(offset, wgt, vec4);
    tmp5 = FUNC8(offset, wgt, vec5);
    tmp6 = FUNC8(offset, wgt, vec6);
    tmp7 = FUNC8(offset, wgt, vec7);
    FUNC5(tmp0, tmp1, tmp2, tmp3, denom);
    FUNC5(tmp4, tmp5, tmp6, tmp7, denom);
    FUNC0(tmp0, tmp1, tmp2, tmp3, tmp4, tmp5, tmp6, tmp7);
    FUNC4(tmp1, tmp0, tmp3, tmp2, dst0, dst1);
    FUNC4(tmp5, tmp4, tmp7, tmp6, dst2, dst3);
    FUNC6(dst0, dst1, dst2, dst3, 0, 1, 0, 1, 0, 1, 0, 1, dst, stride);
}