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
typedef  scalar_t__ v8i16 ;
typedef  int /*<<< orphan*/  v4i32 ;
typedef  int /*<<< orphan*/  v2i64 ;
typedef  int /*<<< orphan*/  v16u8 ;
typedef  scalar_t__ v16i8 ;
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int /*<<< orphan*/  ptrdiff_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,scalar_t__,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int,scalar_t__,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/  const*,int /*<<< orphan*/ ,scalar_t__,scalar_t__,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,int,scalar_t__,scalar_t__,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC7 (scalar_t__,int /*<<< orphan*/ ,int,int,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC9 (scalar_t__,scalar_t__,scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC10 (scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC12 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC13 (int) ; 
 scalar_t__ FUNC14 (scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC15 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/ * luma_mask_arr ; 

void FUNC16(uint8_t *dst, const uint8_t *src,
                                ptrdiff_t stride)
{
    v16i8 src0, src1, src2, src3, res, mask0, mask1, mask2;
    v16i8 vec0, vec1, vec2, vec3, vec4, vec5;
    v8i16 res0, res1;
    v16i8 minus5b = FUNC13(-5);
    v16i8 plus20b = FUNC13(20);

    FUNC2(&luma_mask_arr[48], 16, mask0, mask1, mask2);
    FUNC3(src - 2, stride, src0, src1, src2, src3);
    FUNC9(src0, src1, src2, src3);
    FUNC8(src0, src1, src2, src3, mask0, mask0, vec0, vec1);
    FUNC1(vec0, vec1, res0, res1);
    FUNC8(src0, src1, src2, src3, mask1, mask1, vec2, vec3);
    FUNC0(vec2, vec3, minus5b, minus5b, res0, res1);
    FUNC8(src0, src1, src2, src3, mask2, mask2, vec4, vec5);
    FUNC0(vec4, vec5, plus20b, plus20b, res0, res1);
    FUNC6(res0, res1, 5);
    FUNC4(res0, res1, 7);
    res = FUNC14((v16i8) res1, (v16i8) res0);
    FUNC5(src0, src0, src1, src1, src2, src2, src3, src3, 3,
               src0, src1, src2, src3);
    src0 = (v16i8) FUNC12((v4i32) src0, 1, (v4i32) src1);
    src1 = (v16i8) FUNC12((v4i32) src2, 1, (v4i32) src3);
    src0 = (v16i8) FUNC11((v2i64) src0, 1, (v2i64) src1);
    res = FUNC10(res, src0);
    res = (v16i8) FUNC15((v16u8) res, 128);
    FUNC7(res, 0, 1, 2, 3, dst, stride);
}