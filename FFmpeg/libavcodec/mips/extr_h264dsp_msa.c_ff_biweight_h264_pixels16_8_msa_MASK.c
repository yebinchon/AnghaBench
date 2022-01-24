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
typedef  int ptrdiff_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int) ; 
 int /*<<< orphan*/  FUNC10 (int) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void FUNC12(uint8_t *dst, uint8_t *src,
                                     ptrdiff_t stride, int height,
                                     int log2_denom, int weight_dst,
                                     int weight_src, int offset_in)
{
    v16i8 src_wgt, dst_wgt, wgt;
    v16u8 src0, src1, src2, src3, src4, src5, src6, src7;
    v16u8 dst0, dst1, dst2, dst3, dst4, dst5, dst6, dst7;
    v16i8 vec0, vec1, vec2, vec3, vec4, vec5, vec6, vec7;
    v16i8 vec8, vec9, vec10, vec11, vec12, vec13, vec14, vec15;
    v8i16 tmp0, tmp1, tmp2, tmp3, tmp4, tmp5, tmp6, tmp7;
    v8i16 tmp8, tmp9, tmp10, tmp11, tmp12, tmp13, tmp14, tmp15;
    v8i16 denom, offset;

    offset_in = (unsigned) ((offset_in + 1) | 1) << log2_denom;
    offset_in += (128 * (weight_src + weight_dst));

    src_wgt = FUNC9(weight_src);
    dst_wgt = FUNC9(weight_dst);
    offset = FUNC10(offset_in);
    denom = FUNC10(log2_denom + 1);

    wgt = FUNC11(dst_wgt, src_wgt);

    FUNC3(src, stride, src0, src1, src2, src3, src4, src5, src6, src7);
    src += 8 * stride;
    FUNC3(dst, stride, dst0, dst1, dst2, dst3, dst4, dst5, dst6, dst7);
    FUNC7(src0, src1, src2, src3, src4, src5, src6, src7);
    FUNC7(dst0, dst1, dst2, dst3, dst4, dst5, dst6, dst7);
    FUNC2(dst0, src0, dst1, src1, dst2, src2, dst3, src3, vec0, vec2, vec4,
               vec6);
    FUNC1(dst0, src0, dst1, src1, dst2, src2, dst3, src3, vec1, vec3, vec5,
               vec7);
    FUNC2(dst4, src4, dst5, src5, dst6, src6, dst7, src7, vec8, vec10,
               vec12, vec14);
    FUNC1(dst4, src4, dst5, src5, dst6, src6, dst7, src7, vec9, vec11,
               vec13, vec15);
    tmp0 = FUNC8(offset, wgt, vec0);
    tmp1 = FUNC8(offset, wgt, vec1);
    tmp2 = FUNC8(offset, wgt, vec2);
    tmp3 = FUNC8(offset, wgt, vec3);
    tmp4 = FUNC8(offset, wgt, vec4);
    tmp5 = FUNC8(offset, wgt, vec5);
    tmp6 = FUNC8(offset, wgt, vec6);
    tmp7 = FUNC8(offset, wgt, vec7);
    tmp8 = FUNC8(offset, wgt, vec8);
    tmp9 = FUNC8(offset, wgt, vec9);
    tmp10 = FUNC8(offset, wgt, vec10);
    tmp11 = FUNC8(offset, wgt, vec11);
    tmp12 = FUNC8(offset, wgt, vec12);
    tmp13 = FUNC8(offset, wgt, vec13);
    tmp14 = FUNC8(offset, wgt, vec14);
    tmp15 = FUNC8(offset, wgt, vec15);
    FUNC5(tmp0, tmp1, tmp2, tmp3, denom);
    FUNC5(tmp4, tmp5, tmp6, tmp7, denom);
    FUNC5(tmp8, tmp9, tmp10, tmp11, denom);
    FUNC5(tmp12, tmp13, tmp14, tmp15, denom);
    FUNC0(tmp0, tmp1, tmp2, tmp3, tmp4, tmp5, tmp6, tmp7);
    FUNC0(tmp8, tmp9, tmp10, tmp11, tmp12, tmp13, tmp14, tmp15);
    FUNC4(tmp1, tmp0, tmp3, tmp2, tmp5, tmp4, tmp7, tmp6, dst0, dst1,
                dst2, dst3);
    FUNC4(tmp9, tmp8, tmp11, tmp10, tmp13, tmp12, tmp15, tmp14, dst4,
                dst5, dst6, dst7);
    FUNC6(dst0, dst1, dst2, dst3, dst4, dst5, dst6, dst7, dst, stride);
    dst += 8 * stride;

    if (16 == height) {
        FUNC3(src, stride, src0, src1, src2, src3, src4, src5, src6, src7);
        FUNC3(dst, stride, dst0, dst1, dst2, dst3, dst4, dst5, dst6, dst7);
        FUNC7(src0, src1, src2, src3, src4, src5, src6, src7);
        FUNC7(dst0, dst1, dst2, dst3, dst4, dst5, dst6, dst7);
        FUNC2(dst0, src0, dst1, src1, dst2, src2, dst3, src3, vec0, vec2,
                   vec4, vec6);
        FUNC1(dst0, src0, dst1, src1, dst2, src2, dst3, src3, vec1, vec3,
                   vec5, vec7);
        FUNC2(dst4, src4, dst5, src5, dst6, src6, dst7, src7, vec8, vec10,
                   vec12, vec14);
        FUNC1(dst4, src4, dst5, src5, dst6, src6, dst7, src7, vec9, vec11,
                   vec13, vec15);
        tmp0 = FUNC8(offset, wgt, vec0);
        tmp1 = FUNC8(offset, wgt, vec1);
        tmp2 = FUNC8(offset, wgt, vec2);
        tmp3 = FUNC8(offset, wgt, vec3);
        tmp4 = FUNC8(offset, wgt, vec4);
        tmp5 = FUNC8(offset, wgt, vec5);
        tmp6 = FUNC8(offset, wgt, vec6);
        tmp7 = FUNC8(offset, wgt, vec7);
        tmp8 = FUNC8(offset, wgt, vec8);
        tmp9 = FUNC8(offset, wgt, vec9);
        tmp10 = FUNC8(offset, wgt, vec10);
        tmp11 = FUNC8(offset, wgt, vec11);
        tmp12 = FUNC8(offset, wgt, vec12);
        tmp13 = FUNC8(offset, wgt, vec13);
        tmp14 = FUNC8(offset, wgt, vec14);
        tmp15 = FUNC8(offset, wgt, vec15);
        FUNC5(tmp0, tmp1, tmp2, tmp3, denom);
        FUNC5(tmp4, tmp5, tmp6, tmp7, denom);
        FUNC5(tmp8, tmp9, tmp10, tmp11, denom);
        FUNC5(tmp12, tmp13, tmp14, tmp15, denom);
        FUNC0(tmp0, tmp1, tmp2, tmp3, tmp4, tmp5, tmp6, tmp7);
        FUNC0(tmp8, tmp9, tmp10, tmp11, tmp12, tmp13, tmp14, tmp15);
        FUNC4(tmp1, tmp0, tmp3, tmp2, tmp5, tmp4, tmp7, tmp6, dst0, dst1,
                    dst2, dst3);
        FUNC4(tmp9, tmp8, tmp11, tmp10, tmp13, tmp12, tmp15, tmp14, dst4,
                    dst5, dst6, dst7);
        FUNC6(dst0, dst1, dst2, dst3, dst4, dst5, dst6, dst7, dst, stride);
    }
}