#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  v8i16 ;
struct TYPE_8__ {int /*<<< orphan*/  member_0; } ;
typedef  TYPE_1__ v16u8 ;
typedef  int /*<<< orphan*/  v16i8 ;
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int /*<<< orphan*/  uint32_t ;
typedef  int /*<<< orphan*/  ptrdiff_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_1__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/  const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_1__ FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_1__,int /*<<< orphan*/ ,int,int,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_1__ FUNC12 (TYPE_1__,TYPE_1__) ; 
 int /*<<< orphan*/  FUNC13 (int) ; 
 int /*<<< orphan*/ * luma_mask_arr ; 

void FUNC14(uint8_t *dst, const uint8_t *src,
                                ptrdiff_t stride)
{
    uint32_t tp0, tp1, tp2, tp3;
    v16u8 res, dst0 = { 0 };
    v16i8 src0, src1, src2, src3, vec0, vec1, vec2, vec3, vec4, vec5;
    v16i8 mask0, mask1, mask2;
    v8i16 res0, res1;
    v16i8 minus5b = FUNC13(-5);
    v16i8 plus20b = FUNC13(20);

    FUNC3(&luma_mask_arr[48], 16, mask0, mask1, mask2);
    FUNC4(src - 2, stride, src0, src1, src2, src3);
    FUNC11(src0, src1, src2, src3);
    FUNC10(src0, src1, src2, src3, mask0, mask0, vec0, vec1);
    FUNC1(vec0, vec1, res0, res1);
    FUNC10(src0, src1, src2, src3, mask1, mask1, vec2, vec3);
    FUNC0(vec2, vec3, minus5b, minus5b, res0, res1);
    FUNC10(src0, src1, src2, src3, mask2, mask2, vec4, vec5);
    FUNC0(vec4, vec5, plus20b, plus20b, res0, res1);
    FUNC8(res0, res1, 5);
    FUNC7(res0, res1, 7);
    res = FUNC6(res0, res1);
    FUNC5(dst, stride, tp0, tp1, tp2, tp3);
    FUNC2(tp0, tp1, tp2, tp3, dst0);
    res = FUNC12(res, dst0);
    FUNC9(res, 0, 1, 2, 3, dst, stride);
}