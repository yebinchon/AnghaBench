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
typedef  int v4i32 ;
typedef  scalar_t__ v16u8 ;
typedef  scalar_t__ v16i8 ;
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int /*<<< orphan*/  int8_t ;
typedef  int int32_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int FUNC1 (scalar_t__,scalar_t__,scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC2 (scalar_t__,scalar_t__,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__,scalar_t__,scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC7 (int,int,int,int,int,int) ; 
 int /*<<< orphan*/  FUNC8 (scalar_t__,int /*<<< orphan*/ ,int,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC9 (scalar_t__,int /*<<< orphan*/ ,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC10 (int,int,int) ; 
 int /*<<< orphan*/  FUNC11 (scalar_t__,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC12 (scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC13 (scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC14 (scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC15 (int) ; 
 int FUNC16 (int) ; 
 scalar_t__ FUNC17 (scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC18 (scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC19 (scalar_t__,scalar_t__) ; 
 scalar_t__ ff_hevc_mask_arr ; 

__attribute__((used)) static void FUNC20(uint8_t *src,
                                      int32_t src_stride,
                                      uint8_t *dst,
                                      int32_t dst_stride,
                                      const int8_t *filter_x,
                                      const int8_t *filter_y,
                                      int32_t weight,
                                      int32_t offset,
                                      int32_t rnd_val)
{
    v16u8 out;
    v16i8 src0, src1, src2, src3, src4;
    v8i16 filt0, filt1;
    v16i8 mask0 = FUNC4(ff_hevc_mask_arr + 16);
    v16i8 mask1;
    v8i16 filt_h0, filt_h1, filter_vec, tmp;
    v16i8 vec0, vec1, vec2, vec3, vec4, vec5;
    v8i16 dst20, dst31, dst42, dst10, dst32, dst21, dst43;
    v8i16 offset_vec, const_128, denom_vec;
    v4i32 dst0, dst1, weight_vec, rnd_vec;

    src -= (src_stride + 1);

    filter_vec = FUNC6(filter_x);
    FUNC8(filter_vec, 0, 1, filt0, filt1);

    filter_vec = FUNC6(filter_y);
    FUNC12(filter_vec, filter_vec);

    FUNC9(filter_vec, 0, filt_h0, filt_h1);

    mask1 = mask0 + 2;

    weight_vec = FUNC16(weight);
    rnd_vec = FUNC16(rnd_val);

    offset_vec = FUNC15(offset);
    denom_vec = FUNC15(rnd_val - 6);
    const_128 = FUNC15((128 * weight));
    offset_vec += FUNC19(const_128, denom_vec);

    FUNC5(src, src_stride, src0, src1, src2, src3, src4);
    FUNC14(src0, src1, src2, src3, src4);
    FUNC13(src0, src2, src0, src2, mask0, mask1, vec0, vec1);
    FUNC13(src1, src3, src1, src3, mask0, mask1, vec2, vec3);
    FUNC13(src2, src4, src2, src4, mask0, mask1, vec4, vec5);
    dst20 = FUNC2(vec0, vec1, filt0, filt1);
    dst31 = FUNC2(vec2, vec3, filt0, filt1);
    dst42 = FUNC2(vec4, vec5, filt0, filt1);
    FUNC3(dst31, dst20, dst10, dst32);
    FUNC3(dst42, dst31, dst21, dst43);
    dst0 = FUNC1(dst10, dst32, filt_h0, filt_h1);
    dst1 = FUNC1(dst21, dst43, filt_h0, filt_h1);
    dst0 >>= 6;
    dst1 >>= 6;
    FUNC7(dst0, weight_vec, dst1, weight_vec, dst0, dst1);
    FUNC10(dst0, dst1, rnd_vec);
    tmp = FUNC18((v8i16) dst1, (v8i16) dst0);
    tmp += offset_vec;
    FUNC0(tmp);
    out = (v16u8) FUNC17((v16i8) tmp, (v16i8) tmp);
    FUNC11(out, 0, 1, dst, dst_stride);
}