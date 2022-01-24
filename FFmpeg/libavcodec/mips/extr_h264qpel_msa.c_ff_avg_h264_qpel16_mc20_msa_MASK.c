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
typedef  int uint32_t ;
typedef  int ptrdiff_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/  const*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int) ; 
 int /*<<< orphan*/ * luma_mask_arr ; 

void FUNC14(uint8_t *dst, const uint8_t *src,
                                 ptrdiff_t stride)
{
    uint32_t loop_cnt;
    v16u8 dst0, dst1, dst2, dst3;
    v16i8 src0, src1, src2, src3, src4, src5, src6, src7, mask0, mask1, mask2;
    v16i8 vec0, vec1, vec2, vec3, vec4, vec5, vec6, vec7, vec8, vec9, vec10;
    v16i8 vec11;
    v8i16 res0, res1, res2, res3, res4, res5, res6, res7;
    v16i8 minus5b = FUNC13(-5);
    v16i8 plus20b = FUNC13(20);

    FUNC4(&luma_mask_arr[0], 16, mask0, mask1, mask2);
    src -= 2;

    for (loop_cnt = 4; loop_cnt--;) {
        FUNC3(src, 8, src0, src1);
        src += stride;
        FUNC3(src, 8, src2, src3);
        src += stride;
        FUNC3(src, 8, src4, src5);
        src += stride;
        FUNC3(src, 8, src6, src7);
        src += stride;

        FUNC5(dst, stride, dst0, dst1, dst2, dst3);
        FUNC12(src0, src1, src2, src3, src4, src5, src6, src7);
        FUNC10(src0, src0, src1, src1, mask0, mask0, vec0, vec3);
        FUNC10(src2, src2, src3, src3, mask0, mask0, vec6, vec9);
        FUNC10(src0, src0, src1, src1, mask1, mask1, vec1, vec4);
        FUNC10(src2, src2, src3, src3, mask1, mask1, vec7, vec10);
        FUNC10(src0, src0, src1, src1, mask2, mask2, vec2, vec5);
        FUNC10(src2, src2, src3, src3, mask2, mask2, vec8, vec11);
        FUNC2(vec0, vec3, vec6, vec9, res0, res1, res2, res3);
        FUNC1(vec1, vec4, vec7, vec10, minus5b, minus5b, minus5b,
                     minus5b, res0, res1, res2, res3);
        FUNC1(vec2, vec5, vec8, vec11, plus20b, plus20b, plus20b,
                     plus20b, res0, res1, res2, res3);
        FUNC10(src4, src4, src5, src5, mask0, mask0, vec0, vec3);
        FUNC10(src6, src6, src7, src7, mask0, mask0, vec6, vec9);
        FUNC10(src4, src4, src5, src5, mask1, mask1, vec1, vec4);
        FUNC10(src6, src6, src7, src7, mask1, mask1, vec7, vec10);
        FUNC10(src4, src4, src5, src5, mask2, mask2, vec2, vec5);
        FUNC10(src6, src6, src7, src7, mask2, mask2, vec8, vec11);
        FUNC2(vec0, vec3, vec6, vec9, res4, res5, res6, res7);
        FUNC1(vec1, vec4, vec7, vec10, minus5b, minus5b, minus5b,
                     minus5b, res4, res5, res6, res7);
        FUNC1(vec2, vec5, vec8, vec11, plus20b, plus20b, plus20b,
                     plus20b, res4, res5, res6, res7);
        FUNC8(res0, res1, res2, res3, 5);
        FUNC8(res4, res5, res6, res7, 5);
        FUNC7(res0, res1, res2, res3, 7);
        FUNC7(res4, res5, res6, res7, 7);
        FUNC6(res1, res0, res3, res2, res5, res4, res7, res6, vec0, vec1,
                    vec2, vec3);
        FUNC11(vec0, vec1, vec2, vec3);
        FUNC0(vec0, dst0, vec1, dst1, dst0, dst1);
        FUNC0(vec2, dst2, vec3, dst3, dst2, dst3);
        FUNC9(dst0, dst1, dst2, dst3, dst, stride);
        dst += (4 * stride);
    }
}