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
typedef  int v8i16 ;
typedef  int v4i32 ;
typedef  scalar_t__ v16u8 ;
typedef  scalar_t__ v16i8 ;
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int /*<<< orphan*/  uint64_t ;
typedef  int /*<<< orphan*/  int8_t ;
typedef  int int32_t ;
typedef  int /*<<< orphan*/  int16_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (int,int,int,int) ; 
 int FUNC2 (scalar_t__,scalar_t__,int,int) ; 
 int /*<<< orphan*/  FUNC3 (int,int,int,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__) ; 
 int FUNC8 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC9 (int,int /*<<< orphan*/ ,int,int,int) ; 
 int /*<<< orphan*/  FUNC10 (int,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC11 (int,int,int) ; 
 int /*<<< orphan*/  FUNC12 (scalar_t__,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC13 (int,int) ; 
 int /*<<< orphan*/  FUNC14 (scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC15 (scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__) ; 
 int FUNC16 (int,int,int) ; 
 int FUNC17 (int) ; 
 scalar_t__ FUNC18 (scalar_t__,scalar_t__) ; 
 int FUNC19 (int,int) ; 
 scalar_t__ ff_hevc_mask_arr ; 

__attribute__((used)) static void FUNC20(uint8_t *src0_ptr,
                                     int32_t src_stride,
                                     int16_t *src1_ptr,
                                     int32_t src2_stride,
                                     uint8_t *dst,
                                     int32_t dst_stride,
                                     const int8_t *filter_x,
                                     const int8_t *filter_y,
                                     int32_t weight0,
                                     int32_t weight1,
                                     int32_t offset0,
                                     int32_t offset1,
                                     int32_t rnd_val)
{
    uint64_t tp0, tp1;
    int32_t offset, weight;
    v8i16 in0 = { 0 };
    v16u8 out;
    v16i8 src0, src1, src2, src3, src4;
    v8i16 filt0, filt1;
    v8i16 filt_h0, filt_h1;
    v16i8 mask0 = FUNC6(ff_hevc_mask_arr + 16);
    v16i8 mask1;
    v8i16 filter_vec, tmp, weight_vec;
    v16i8 vec0, vec1, vec2, vec3, vec4, vec5;
    v8i16 dst20, dst31, dst42, dst10, dst32, dst21, dst43, tmp0, tmp1;
    v4i32 dst0, dst1, offset_vec, rnd_vec, const_vec;

    src0_ptr -= (src_stride + 1);

    filter_vec = FUNC8(filter_x);
    FUNC9(filter_vec, 0, 1, filt0, filt1);

    filter_vec = FUNC8(filter_y);
    FUNC13(filter_vec, filter_vec);

    FUNC10(filter_vec, 0, filt_h0, filt_h1);

    mask1 = mask0 + 2;

    offset = (offset0 + offset1) << rnd_val;
    weight0 = weight0 & 0x0000FFFF;
    weight = weight0 | (weight1 << 16);

    const_vec = FUNC17((128 * weight1));
    const_vec <<= 6;
    offset_vec = FUNC17(offset);
    weight_vec = (v8i16) FUNC17(weight);
    rnd_vec = FUNC17(rnd_val + 1);
    offset_vec += const_vec;

    FUNC7(src0_ptr, src_stride, src0, src1, src2, src3, src4);
    FUNC15(src0, src1, src2, src3, src4);

    FUNC14(src0, src2, src0, src2, mask0, mask1, vec0, vec1);
    FUNC14(src1, src3, src1, src3, mask0, mask1, vec2, vec3);
    FUNC14(src2, src4, src2, src4, mask0, mask1, vec4, vec5);

    dst20 = FUNC2(vec0, vec1, filt0, filt1);
    dst31 = FUNC2(vec2, vec3, filt0, filt1);
    dst42 = FUNC2(vec4, vec5, filt0, filt1);

    FUNC3(dst31, dst20, dst10, dst32);
    FUNC3(dst42, dst31, dst21, dst43);

    dst0 = FUNC1(dst10, dst32, filt_h0, filt_h1);
    dst1 = FUNC1(dst21, dst43, filt_h0, filt_h1);
    dst0 >>= 6;
    dst1 >>= 6;
    dst0 = (v4i32) FUNC19((v8i16) dst1, (v8i16) dst0);

    FUNC5(src1_ptr, src2_stride, tp0, tp1);
    FUNC4(tp0, tp1, in0);

    FUNC3(dst0, in0, tmp0, tmp1);
    dst0 = FUNC16(offset_vec, tmp0, weight_vec);
    dst1 = FUNC16(offset_vec, tmp1, weight_vec);
    FUNC11(dst0, dst1, rnd_vec);
    tmp = FUNC19((v8i16) dst1, (v8i16) dst0);
    FUNC0(tmp);
    out = (v16u8) FUNC18((v16i8) tmp, (v16i8) tmp);
    FUNC12(out, 0, 1, dst, dst_stride);
}