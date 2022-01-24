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
typedef  scalar_t__ v16i8 ;
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int uint32_t ;
typedef  int ptrdiff_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,scalar_t__,scalar_t__,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/  const*,int,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int,scalar_t__,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,int,scalar_t__,scalar_t__,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC8 (scalar_t__,scalar_t__,scalar_t__,scalar_t__,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC9 (scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC10 (scalar_t__,scalar_t__,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC11 (scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC12 (scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC13 (int) ; 
 int /*<<< orphan*/ * luma_mask_arr ; 

void FUNC14(uint8_t *dst, const uint8_t *src,
                                 ptrdiff_t stride)
{
    uint32_t loop_cnt;
    v16i8 dst0, dst1, dst2, dst3, src0, src1, src2, src3, src4, src5, src6;
    v16i8 mask0, mask1, mask2, mask3, mask4, mask5, src7, vec11;
    v16i8 vec0, vec1, vec2, vec3, vec4, vec5, vec6, vec7, vec8, vec9, vec10;
    v8i16 res0, res1, res2, res3, res4, res5, res6, res7;
    v16i8 minus5b = FUNC13(-5);
    v16i8 plus20b = FUNC13(20);

    FUNC3(&luma_mask_arr[0], 16, mask0, mask1, mask2);
    mask3 = mask0 + 8;
    mask4 = mask1 + 8;
    mask5 = mask2 + 8;
    src -= 2;

    for (loop_cnt = 4; loop_cnt--;) {
        FUNC2(src, 16, src0, src1);
        src += stride;
        FUNC2(src, 16, src2, src3);
        src += stride;
        FUNC2(src, 16, src4, src5);
        src += stride;
        FUNC2(src, 16, src6, src7);
        src += stride;

        FUNC11(src0, src1, src2, src3, src4, src5, src6, src7);
        FUNC9(src0, src0, src0, src1, mask0, mask3, vec0, vec3);
        FUNC9(src2, src2, src2, src3, mask0, mask3, vec6, vec9);
        FUNC9(src0, src0, src0, src1, mask1, mask4, vec1, vec4);
        FUNC9(src2, src2, src2, src3, mask1, mask4, vec7, vec10);
        FUNC9(src0, src0, src0, src1, mask2, mask5, vec2, vec5);
        FUNC9(src2, src2, src2, src3, mask2, mask5, vec8, vec11);
        FUNC1(vec0, vec3, vec6, vec9, res0, res1, res2, res3);
        FUNC0(vec1, vec4, vec7, vec10, minus5b, minus5b, minus5b,
                     minus5b, res0, res1, res2, res3);
        FUNC0(vec2, vec5, vec8, vec11, plus20b, plus20b, plus20b,
                     plus20b, res0, res1, res2, res3);
        FUNC9(src4, src4, src4, src5, mask0, mask3, vec0, vec3);
        FUNC9(src6, src6, src6, src7, mask0, mask3, vec6, vec9);
        FUNC9(src4, src4, src4, src5, mask1, mask4, vec1, vec4);
        FUNC9(src6, src6, src6, src7, mask1, mask4, vec7, vec10);
        FUNC9(src4, src4, src4, src5, mask2, mask5, vec2, vec5);
        FUNC9(src6, src6, src6, src7, mask2, mask5, vec8, vec11);
        FUNC1(vec0, vec3, vec6, vec9, res4, res5, res6, res7);
        FUNC0(vec1, vec4, vec7, vec10, minus5b, minus5b, minus5b,
                     minus5b, res4, res5, res6, res7);
        FUNC0(vec2, vec5, vec8, vec11, plus20b, plus20b, plus20b,
                     plus20b, res4, res5, res6, res7);
        FUNC6(src1, src0, src3, src2, src5, src4, src7, src6, 2,
                   src0, src2, src4, src6);
        FUNC7(res0, res1, res2, res3, 5);
        FUNC7(res4, res5, res6, res7, 5);
        FUNC5(res0, res1, res2, res3, 7);
        FUNC5(res4, res5, res6, res7, 7);
        FUNC4(res1, res0, res3, res2, dst0, dst1);
        FUNC4(res5, res4, res7, res6, dst2, dst3);
        dst0 = FUNC12(dst0, src0);
        dst1 = FUNC12(dst1, src2);
        dst2 = FUNC12(dst2, src4);
        dst3 = FUNC12(dst3, src6);
        FUNC10(dst0, dst1, dst2, dst3);
        FUNC8(dst0, dst1, dst2, dst3, dst, stride);
        dst += (4 * stride);
    }
}