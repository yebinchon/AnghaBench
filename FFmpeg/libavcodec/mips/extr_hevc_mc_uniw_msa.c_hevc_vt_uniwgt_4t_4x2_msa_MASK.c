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
typedef  scalar_t__ v4i32 ;
typedef  scalar_t__ v16u8 ;
typedef  int /*<<< orphan*/  v16i8 ;
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int /*<<< orphan*/  int8_t ;
typedef  int int32_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__,scalar_t__,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC8 (scalar_t__,int /*<<< orphan*/ ,int,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC9 (scalar_t__,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC10 (scalar_t__,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC12 (scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC13 (int) ; 
 scalar_t__ FUNC14 (int) ; 
 scalar_t__ FUNC15 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC16 (scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC17 (scalar_t__,scalar_t__) ; 

__attribute__((used)) static void FUNC18(uint8_t *src,
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
    v16i8 src2110, src4332;
    v8i16 dst0;
    v4i32 dst0_r, dst0_l;
    v8i16 filt0, filt1;
    v8i16 filter_vec, weight_vec_h, offset_vec, denom_vec;
    v4i32 weight_vec, rnd_vec;

    src -= src_stride;

    weight = weight & 0x0000FFFF;

    weight_vec = FUNC14(weight);
    rnd_vec = FUNC14(rnd_val);

    weight *= 128;
    rnd_val -= 6;

    weight_vec_h = FUNC13(weight);
    offset_vec = FUNC13(offset);
    denom_vec = FUNC13(rnd_val);

    weight_vec_h = FUNC17(weight_vec_h, denom_vec);
    offset_vec = FUNC12(offset_vec, weight_vec_h);

    filter_vec = FUNC7(filter);
    FUNC8(filter_vec, 0, 1, filt0, filt1);

    FUNC6(src, src_stride, src0, src1, src2, src3, src4);
    FUNC4(src1, src0, src2, src1, src10_r, src21_r);
    FUNC4(src3, src2, src4, src3, src32_r, src43_r);
    FUNC5(src21_r, src10_r, src43_r, src32_r, src2110, src4332);
    FUNC11(src2110, src4332);
    dst0 = FUNC2(src2110, src4332, filt0, filt1);
    FUNC3(dst0, dst0, dst0_r, dst0_l);
    FUNC1(dst0_r, dst0_l, weight_vec, weight_vec, dst0_r, dst0_l);
    FUNC9(dst0_r, dst0_l, rnd_vec);
    dst0 = FUNC16((v8i16) dst0_l, (v8i16) dst0_r);
    dst0 = FUNC12(dst0, offset_vec);
    FUNC0(dst0);
    out = (v16u8) FUNC15((v16i8) dst0, (v16i8) dst0);
    FUNC10(out, 0, 1, dst, dst_stride);
}