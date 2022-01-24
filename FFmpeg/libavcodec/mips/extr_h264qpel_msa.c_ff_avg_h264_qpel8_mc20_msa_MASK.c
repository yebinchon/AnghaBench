#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  v8i16 ;
struct TYPE_14__ {int /*<<< orphan*/  member_0; } ;
typedef  TYPE_1__ v16u8 ;
typedef  int /*<<< orphan*/  v16i8 ;
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int /*<<< orphan*/  uint64_t ;
typedef  int ptrdiff_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__,TYPE_1__,TYPE_1__,TYPE_1__,TYPE_1__,TYPE_1__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_1__) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/  const*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_1__ FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_1__,TYPE_1__,TYPE_1__,TYPE_1__,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int) ; 
 int /*<<< orphan*/ * luma_mask_arr ; 

void FUNC14(uint8_t *dst, const uint8_t *src,
                                ptrdiff_t stride)
{
    uint64_t tp0, tp1, tp2, tp3;
    v16u8 out0, out1, out2 = { 0 }, out3 = { 0 };
    v16u8 out4, out5, out6 = { 0 }, out7 = { 0 };
    v16i8 src0, src1, src2, src3, src4, src5, src6, src7, mask0, mask1, mask2;
    v16i8 vec0, vec1, vec2, vec3, vec4, vec5, vec6, vec7, vec8, vec9, vec10;
    v16i8 vec11;
    v8i16 res0, res1, res2, res3, res4, res5, res6, res7;
    v16i8 minus5b = FUNC13(-5);
    v16i8 plus20b = FUNC13(20);

    FUNC5(&luma_mask_arr[0], 16, mask0, mask1, mask2);

    FUNC6(src - 2, stride, src0, src1, src2, src3, src4, src5, src6, src7);
    FUNC12(src0, src1, src2, src3, src4, src5, src6, src7);
    FUNC11(src0, src0, src1, src1, mask0, mask0, vec0, vec1);
    FUNC11(src2, src2, src3, src3, mask0, mask0, vec2, vec3);
    FUNC2(vec0, vec1, vec2, vec3, res0, res1, res2, res3);
    FUNC11(src0, src0, src1, src1, mask1, mask1, vec4, vec5);
    FUNC11(src2, src2, src3, src3, mask1, mask1, vec6, vec7);
    FUNC1(vec4, vec5, vec6, vec7, minus5b, minus5b, minus5b, minus5b,
                 res0, res1, res2, res3);
    FUNC11(src0, src0, src1, src1, mask2, mask2, vec8, vec9);
    FUNC11(src2, src2, src3, src3, mask2, mask2, vec10, vec11);
    FUNC1(vec8, vec9, vec10, vec11, plus20b, plus20b, plus20b, plus20b,
                 res0, res1, res2, res3);
    FUNC11(src4, src4, src5, src5, mask0, mask0, vec0, vec1);
    FUNC11(src6, src6, src7, src7, mask0, mask0, vec2, vec3);
    FUNC2(vec0, vec1, vec2, vec3, res4, res5, res6, res7);
    FUNC11(src4, src4, src5, src5, mask1, mask1, vec4, vec5);
    FUNC11(src6, src6, src7, src7, mask1, mask1, vec6, vec7);
    FUNC1(vec4, vec5, vec6, vec7, minus5b, minus5b, minus5b, minus5b,
                 res4, res5, res6, res7);
    FUNC11(src4, src4, src5, src5, mask2, mask2, vec8, vec9);
    FUNC11(src6, src6, src7, src7, mask2, mask2, vec10, vec11);
    FUNC1(vec8, vec9, vec10, vec11, plus20b, plus20b, plus20b, plus20b,
                 res4, res5, res6, res7);
    FUNC9(res0, res1, res2, res3, 5);
    FUNC9(res4, res5, res6, res7, 5);
    FUNC8(res0, res1, res2, res3, 7);
    FUNC8(res4, res5, res6, res7, 7);
    out0 = FUNC7(res0, res1);
    out1 = FUNC7(res2, res3);
    out4 = FUNC7(res4, res5);
    out5 = FUNC7(res6, res7);
    FUNC4(dst, stride, tp0, tp1, tp2, tp3);
    FUNC3(tp0, tp1, out2);
    FUNC3(tp2, tp3, out3);
    FUNC4(dst + 4 * stride, stride, tp0, tp1, tp2, tp3);
    FUNC3(tp0, tp1, out6);
    FUNC3(tp2, tp3, out7);
    FUNC0(out0, out2, out1, out3, out0, out1);
    FUNC0(out4, out6, out5, out7, out4, out5);
    FUNC10(out0, out1, out4, out5, 0, 1, 0, 1, 0, 1, 0, 1, dst, stride);
}