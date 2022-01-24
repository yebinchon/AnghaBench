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
typedef  int uint8_t ;
typedef  int /*<<< orphan*/  uint64_t ;
typedef  int int32_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int,int*,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int) ; 
 int /*<<< orphan*/  FUNC11 (int) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC13(uint8_t *src, uint8_t *dst, int32_t stride,
                               int32_t log2_denom, int32_t src_weight,
                               int32_t dst_weight, int32_t offset_in)
{
    uint8_t cnt;
    uint64_t tp0, tp1, tp2, tp3;
    v16i8 src_wgt, dst_wgt, wgt;
    v16u8 src0, src1, src2, src3;
    v16u8 dst0, dst1, dst2, dst3;
    v16i8 vec0, vec1, vec2, vec3, vec4, vec5, vec6, vec7;
    v8i16 temp0, temp1, temp2, temp3, temp4, temp5, temp6, temp7;
    v8i16 denom, offset;

    offset_in = (unsigned) ((offset_in + 1) | 1) << log2_denom;
    offset_in += (128 * (src_weight + dst_weight));

    src_wgt = FUNC10(src_weight);
    dst_wgt = FUNC10(dst_weight);
    offset = FUNC11(offset_in);
    denom = FUNC11(log2_denom + 1);
    wgt = FUNC12(dst_wgt, src_wgt);

    for (cnt = 2; cnt--;) {
        FUNC4(src, stride, tp0, tp1, tp2, tp3);
        src += 4 * stride;
        FUNC3(tp0, tp1, src0);
        FUNC3(tp2, tp3, src1);
        FUNC4(src, stride, tp0, tp1, tp2, tp3);
        src += 4 * stride;
        FUNC3(tp0, tp1, src2);
        FUNC3(tp2, tp3, src3);
        FUNC4(dst, stride, tp0, tp1, tp2, tp3);
        FUNC3(tp0, tp1, dst0);
        FUNC3(tp2, tp3, dst1);
        FUNC4(dst + 4 * stride, stride, tp0, tp1, tp2, tp3);
        FUNC3(tp0, tp1, dst2);
        FUNC3(tp2, tp3, dst3);
        FUNC8(src0, src1, src2, src3);
        FUNC8(dst0, dst1, dst2, dst3);
        FUNC2(dst0, src0, dst1, src1, dst2, src2, dst3, src3,
                   vec0, vec2, vec4, vec6);
        FUNC1(dst0, src0, dst1, src1, dst2, src2, dst3, src3,
                   vec1, vec3, vec5, vec7);

        temp0 = FUNC9(offset, wgt, vec0);
        temp1 = FUNC9(offset, wgt, vec1);
        temp2 = FUNC9(offset, wgt, vec2);
        temp3 = FUNC9(offset, wgt, vec3);
        temp4 = FUNC9(offset, wgt, vec4);
        temp5 = FUNC9(offset, wgt, vec5);
        temp6 = FUNC9(offset, wgt, vec6);
        temp7 = FUNC9(offset, wgt, vec7);

        FUNC6(temp0, temp1, temp2, temp3, denom);
        FUNC6(temp4, temp5, temp6, temp7, denom);
        FUNC0(temp0, temp1, temp2, temp3, temp4, temp5, temp6, temp7);
        FUNC5(temp1, temp0, temp3, temp2, temp5, temp4, temp7, temp6,
                    dst0, dst1, dst2, dst3);
        FUNC7(dst0, dst1, dst2, dst3, 0, 1, 0, 1, 0, 1, 0, 1, dst, stride);
        dst += 8 * stride;
    }
}