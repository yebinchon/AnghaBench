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
typedef  scalar_t__ v16u8 ;
typedef  int /*<<< orphan*/  v16i8 ;
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int /*<<< orphan*/  int8_t ;
typedef  int int32_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,scalar_t__,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__,int /*<<< orphan*/ ,int,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC9 (int) ; 
 int /*<<< orphan*/  FUNC10 (int) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC12 (scalar_t__,scalar_t__) ; 

__attribute__((used)) static void FUNC13(uint8_t *src,
                                      int32_t src_stride,
                                      uint8_t *dst,
                                      int32_t dst_stride,
                                      const int8_t *filter,
                                      int32_t weight,
                                      int32_t offset,
                                      int32_t rnd_val)
{
    v16u8 out;
    v16i8 src0, src1, src2, src3, src4;
    v16i8 src10_r, src32_r, src21_r, src43_r;
    v8i16 dst0, dst1;
    v8i16 filt0, filt1;
    v8i16 filter_vec, weight_vec_h, offset_vec, denom_vec;
    v4i32 weight_vec, rnd_vec;

    src -= src_stride;

    weight = weight & 0x0000FFFF;

    weight_vec = FUNC10(weight);
    rnd_vec = FUNC10(rnd_val);

    weight *= 128;
    rnd_val -= 6;

    weight_vec_h = FUNC9(weight);
    offset_vec = FUNC9(offset);
    denom_vec = FUNC9(rnd_val);

    weight_vec_h = FUNC12(weight_vec_h, denom_vec);
    offset_vec = FUNC8(offset_vec, weight_vec_h);

    filter_vec = FUNC4(filter);
    FUNC5(filter_vec, 0, 1, filt0, filt1);

    FUNC3(src, src_stride, src0, src1, src2, src3, src4);
    FUNC7(src0, src1, src2, src3, src4);
    FUNC2(src1, src0, src2, src1, src10_r, src21_r);
    FUNC2(src3, src2, src4, src3, src32_r, src43_r);
    dst0 = FUNC0(src10_r, src32_r, filt0, filt1);
    dst1 = FUNC0(src21_r, src43_r, filt0, filt1);

    FUNC1(dst0, dst1, weight_vec, offset_vec, rnd_vec,
                                   dst0, dst1);

    out = (v16u8) FUNC11((v16i8) dst1, (v16i8) dst0);
    FUNC6(out, 0, 1, dst, dst_stride);
}