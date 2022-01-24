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
typedef  int /*<<< orphan*/  ptrdiff_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/  const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int) ; 
 int /*<<< orphan*/ * luma_mask_arr ; 

void FUNC11(uint8_t *dst, const uint8_t *src,
                                ptrdiff_t stride)
{
    v16u8 out0, out1, out2, out3;
    v16i8 src0, src1, src2, src3, src4, src5, src6, src7, mask0, mask1, mask2;
    v16i8 vec0, vec1, vec2, vec3, vec4, vec5, vec6, vec7, vec8, vec9, vec10;
    v16i8 vec11;
    v8i16 res0, res1, res2, res3, res4, res5, res6, res7;
    v16i8 minus5b = FUNC10(-5);
    v16i8 plus20b = FUNC10(20);

    FUNC2(&luma_mask_arr[0], 16, mask0, mask1, mask2);
    FUNC3(src - 2, stride, src0, src1, src2, src3, src4, src5, src6, src7);
    FUNC9(src0, src1, src2, src3, src4, src5, src6, src7);
    FUNC8(src0, src0, src1, src1, mask0, mask0, vec0, vec1);
    FUNC8(src2, src2, src3, src3, mask0, mask0, vec2, vec3);
    FUNC1(vec0, vec1, vec2, vec3, res0, res1, res2, res3);
    FUNC8(src0, src0, src1, src1, mask1, mask1, vec4, vec5);
    FUNC8(src2, src2, src3, src3, mask1, mask1, vec6, vec7);
    FUNC0(vec4, vec5, vec6, vec7, minus5b, minus5b, minus5b, minus5b,
                 res0, res1, res2, res3);
    FUNC8(src0, src0, src1, src1, mask2, mask2, vec8, vec9);
    FUNC8(src2, src2, src3, src3, mask2, mask2, vec10, vec11);
    FUNC0(vec8, vec9, vec10, vec11, plus20b, plus20b, plus20b,
                 plus20b, res0, res1, res2, res3);
    FUNC8(src4, src4, src5, src5, mask0, mask0, vec0, vec1);
    FUNC8(src6, src6, src7, src7, mask0, mask0, vec2, vec3);
    FUNC1(vec0, vec1, vec2, vec3, res4, res5, res6, res7);
    FUNC8(src4, src4, src5, src5, mask1, mask1, vec4, vec5);
    FUNC8(src6, src6, src7, src7, mask1, mask1, vec6, vec7);
    FUNC0(vec4, vec5, vec6, vec7, minus5b, minus5b, minus5b, minus5b,
                 res4, res5, res6, res7);
    FUNC8(src4, src4, src5, src5, mask2, mask2, vec8, vec9);
    FUNC8(src6, src6, src7, src7, mask2, mask2, vec10, vec11);
    FUNC0(vec8, vec9, vec10, vec11, plus20b, plus20b, plus20b,
                 plus20b, res4, res5, res6, res7);
    FUNC6(res0, res1, res2, res3, 5);
    FUNC6(res4, res5, res6, res7, 5);
    FUNC5(res0, res1, res2, res3, 7);
    FUNC5(res4, res5, res6, res7, 7);
    out0 = FUNC4(res0, res1);
    out1 = FUNC4(res2, res3);
    out2 = FUNC4(res4, res5);
    out3 = FUNC4(res6, res7);
    FUNC7(out0, out1, out2, out3, 0, 1, 0, 1, 0, 1, 0, 1, dst, stride);
}