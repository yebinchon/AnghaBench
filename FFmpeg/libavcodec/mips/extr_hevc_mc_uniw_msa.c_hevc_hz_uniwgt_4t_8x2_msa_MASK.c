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
typedef  scalar_t__ v16i8 ;
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int /*<<< orphan*/  int8_t ;
typedef  int int32_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (scalar_t__,scalar_t__,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,scalar_t__,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ,scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int,scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__,int /*<<< orphan*/ ,int,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC7 (scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC8 (scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC9 (scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC10 (int) ; 
 int /*<<< orphan*/  FUNC11 (int) ; 
 scalar_t__ FUNC12 (scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC13 (scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  ff_hevc_mask_arr ; 

__attribute__((used)) static void FUNC14(uint8_t *src,
                                      int32_t src_stride,
                                      uint8_t *dst,
                                      int32_t dst_stride,
                                      const int8_t *filter,
                                      int32_t weight,
                                      int32_t offset,
                                      int32_t rnd_val)
{
    v16u8 out;
    v8i16 filt0, filt1, dst0, dst1;
    v16i8 src0, src1;
    v16i8 mask0 = FUNC2(ff_hevc_mask_arr);
    v16i8 mask1;
    v16i8 vec0, vec1, vec2, vec3;
    v8i16 filter_vec, weight_vec_h, offset_vec, denom_vec;
    v4i32 weight_vec, rnd_vec;

    src -= 1;

    filter_vec = FUNC4(filter);
    FUNC5(filter_vec, 0, 1, filt0, filt1);

    weight = weight & 0x0000FFFF;

    weight_vec = FUNC11(weight);
    rnd_vec = FUNC11(rnd_val);

    weight *= 128;
    rnd_val -= 6;

    weight_vec_h = FUNC10(weight);
    offset_vec = FUNC10(offset);
    denom_vec = FUNC10(rnd_val);

    weight_vec_h = FUNC13(weight_vec_h, denom_vec);
    offset_vec = FUNC9(offset_vec, weight_vec_h);

    mask1 = mask0 + 2;

    FUNC3(src, src_stride, src0, src1);
    FUNC8(src0, src1);

    FUNC7(src0, src0, src0, src0, mask0, mask1, vec0, vec1);
    FUNC7(src1, src1, src1, src1, mask0, mask1, vec2, vec3);
    dst0 = FUNC0(vec0, vec1, filt0, filt1);
    dst1 = FUNC0(vec2, vec3, filt0, filt1);

    FUNC1(dst0, dst1, weight_vec, offset_vec, rnd_vec,
                                   dst0, dst1);

    out = (v16u8) FUNC12((v16i8) dst1, (v16i8) dst0);
    FUNC6(out, 0, 1, dst, dst_stride);
}