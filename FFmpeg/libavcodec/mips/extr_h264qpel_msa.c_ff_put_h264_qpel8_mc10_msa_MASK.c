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
typedef  int /*<<< orphan*/  v16i8 ;
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int /*<<< orphan*/  ptrdiff_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/  const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int) ; 
 int /*<<< orphan*/ * luma_mask_arr ; 

void FUNC15(uint8_t *dst, const uint8_t *src,
                                ptrdiff_t stride)
{
    v16i8 src0, src1, src2, src3, src4, src5, src6, src7, mask0, mask1, mask2;
    v16i8 tmp0, tmp1, tmp2, tmp3, vec11;
    v16i8 vec0, vec1, vec2, vec3, vec4, vec5, vec6, vec7, vec8, vec9, vec10;
    v8i16 res0, res1, res2, res3, res4, res5, res6, res7;
    v16i8 minus5b = FUNC14(-5);
    v16i8 plus20b = FUNC14(20);

    FUNC2(&luma_mask_arr[0], 16, mask0, mask1, mask2);
    FUNC3(src - 2, stride, src0, src1, src2, src3, src4, src5, src6, src7);
    FUNC12(src0, src1, src2, src3, src4, src5, src6, src7);
    FUNC10(src0, src0, src1, src1, mask0, mask0, vec0, vec1);
    FUNC10(src2, src2, src3, src3, mask0, mask0, vec2, vec3);
    FUNC1(vec0, vec1, vec2, vec3, res0, res1, res2, res3);
    FUNC10(src0, src0, src1, src1, mask1, mask1, vec4, vec5);
    FUNC10(src2, src2, src3, src3, mask1, mask1, vec6, vec7);
    FUNC0(vec4, vec5, vec6, vec7, minus5b, minus5b, minus5b, minus5b,
                 res0, res1, res2, res3);
    FUNC10(src0, src0, src1, src1, mask2, mask2, vec8, vec9);
    FUNC10(src2, src2, src3, src3, mask2, mask2, vec10, vec11);
    FUNC0(vec8, vec9, vec10, vec11, plus20b, plus20b, plus20b, plus20b,
                 res0, res1, res2, res3);
    FUNC10(src4, src4, src5, src5, mask0, mask0, vec0, vec1);
    FUNC10(src6, src6, src7, src7, mask0, mask0, vec2, vec3);
    FUNC1(vec0, vec1, vec2, vec3, res4, res5, res6, res7);
    FUNC10(src4, src4, src5, src5, mask1, mask1, vec4, vec5);
    FUNC10(src6, src6, src7, src7, mask1, mask1, vec6, vec7);
    FUNC0(vec4, vec5, vec6, vec7, minus5b, minus5b, minus5b, minus5b,
                 res4, res5, res6, res7);
    FUNC10(src4, src4, src5, src5, mask2, mask2, vec8, vec9);
    FUNC10(src6, src6, src7, src7, mask2, mask2, vec10, vec11);
    FUNC0(vec8, vec9, vec10, vec11, plus20b, plus20b, plus20b, plus20b,
                 res4, res5, res6, res7);
    FUNC7(src0, src0, src1, src1, src2, src2, src3, src3, 2,
               src0, src1, src2, src3);
    FUNC7(src4, src4, src5, src5, src6, src6, src7, src7, 2,
               src4, src5, src6, src7);
    FUNC5(src1, src0, src3, src2, src0, src1);
    FUNC5(src5, src4, src7, src6, src4, src5);
    FUNC8(res0, res1, res2, res3, 5);
    FUNC8(res4, res5, res6, res7, 5);
    FUNC6(res0, res1, res2, res3, 7);
    FUNC6(res4, res5, res6, res7, 7);
    FUNC4(res1, res0, res3, res2, tmp0, tmp1);
    FUNC4(res5, res4, res7, res6, tmp2, tmp3);
    tmp0 = FUNC13(tmp0, src0);
    tmp1 = FUNC13(tmp1, src1);
    tmp2 = FUNC13(tmp2, src4);
    tmp3 = FUNC13(tmp3, src5);
    FUNC11(tmp0, tmp1, tmp2, tmp3);
    FUNC9(tmp0, tmp1, tmp2, tmp3, 0, 1, 0, 1, 0, 1, 0, 1, dst, stride);
}