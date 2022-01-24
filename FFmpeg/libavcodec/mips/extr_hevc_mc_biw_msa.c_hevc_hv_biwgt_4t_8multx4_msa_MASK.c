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
typedef  int /*<<< orphan*/  v16u8 ;
typedef  scalar_t__ v16i8 ;
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int uint32_t ;
typedef  int /*<<< orphan*/  int8_t ;
typedef  int int32_t ;
typedef  int /*<<< orphan*/  int16_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,int,int,int) ; 
 int FUNC1 (int,int,int,int) ; 
 int FUNC2 (scalar_t__,scalar_t__,int,int) ; 
 int /*<<< orphan*/  FUNC3 (int,int,int,int) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__) ; 
 int FUNC6 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int,int,int,int,int) ; 
 int /*<<< orphan*/  FUNC8 (int,int,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int,int,int,int,int,int,int,int,int,int,int,int) ; 
 int /*<<< orphan*/  FUNC10 (int,int,int,int,int,int,int,int,int,int,int,int) ; 
 int /*<<< orphan*/  FUNC11 (int,int /*<<< orphan*/ ,int,int,int) ; 
 int /*<<< orphan*/  FUNC12 (int,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC13 (int,int,int,int,int) ; 
 int /*<<< orphan*/  FUNC14 (int,int,int,int,int) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC16 (int,int) ; 
 int /*<<< orphan*/  FUNC17 (scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC18 (scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__) ; 
 int FUNC19 (int,int,int) ; 
 int FUNC20 (int) ; 
 int /*<<< orphan*/  ff_hevc_mask_arr ; 

__attribute__((used)) static void FUNC21(uint8_t *src0_ptr,
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
                                         int32_t rnd_val,
                                         int32_t width8mult)
{
    int32_t weight, offset;
    uint32_t cnt;
    v16u8 out0, out1;
    v16i8 src0, src1, src2, src3, src4, src5, src6, mask0, mask1;
    v16i8 vec0, vec1, vec2, vec3, vec4, vec5, vec6, vec7;
    v8i16 filt0, filt1, filt_h0, filt_h1, filter_vec, weight_vec;
    v8i16 dsth0, dsth1, dsth2, dsth3, dsth4, dsth5, dsth6;
    v8i16 tmp0, tmp1, tmp2, tmp3, tmp4, tmp5, tmp6, tmp7, in0, in1, in2, in3;
    v8i16 dst10_r, dst32_r, dst54_r, dst21_r, dst43_r, dst65_r;
    v8i16 dst10_l, dst32_l, dst54_l, dst21_l, dst43_l, dst65_l;
    v4i32 dst0_r, dst0_l, dst1_r, dst1_l, dst2_r, dst2_l, dst3_r, dst3_l;
    v4i32 dst0, dst1, dst2, dst3, dst4, dst5, dst6, dst7;
    v4i32 offset_vec, rnd_vec, const_vec;

    src0_ptr -= (src_stride + 1);

    filter_vec = FUNC6(filter_x);
    FUNC11(filter_vec, 0, 1, filt0, filt1);

    filter_vec = FUNC6(filter_y);
    FUNC16(filter_vec, filter_vec);

    FUNC12(filter_vec, 0, filt_h0, filt_h1);

    mask0 = FUNC4(ff_hevc_mask_arr);
    mask1 = mask0 + 2;

    offset = (offset0 + offset1) << rnd_val;
    weight0 = weight0 & 0x0000FFFF;
    weight = weight0 | (weight1 << 16);

    const_vec = FUNC20((128 * weight1));
    const_vec <<= 6;
    offset_vec = FUNC20(offset);
    rnd_vec = FUNC20(rnd_val + 1);
    offset_vec += const_vec;
    weight_vec = (v8i16) FUNC20(weight);

    for (cnt = width8mult; cnt--;) {
        FUNC5(src0_ptr, src_stride, src0, src1, src2, src3, src4, src5, src6);
        src0_ptr += 8;
        FUNC18(src0, src1, src2, src3, src4, src5, src6);

        FUNC7(src1_ptr, src2_stride, in0, in1, in2, in3);
        src1_ptr += 8;

        FUNC17(src0, src0, src0, src0, mask0, mask1, vec0, vec1);
        FUNC17(src1, src1, src1, src1, mask0, mask1, vec2, vec3);
        FUNC17(src2, src2, src2, src2, mask0, mask1, vec4, vec5);

        dsth0 = FUNC2(vec0, vec1, filt0, filt1);
        dsth1 = FUNC2(vec2, vec3, filt0, filt1);
        dsth2 = FUNC2(vec4, vec5, filt0, filt1);

        FUNC3(dsth1, dsth0, dst10_r, dst10_l);
        FUNC3(dsth2, dsth1, dst21_r, dst21_l);

        FUNC17(src3, src3, src3, src3, mask0, mask1, vec0, vec1);
        FUNC17(src4, src4, src4, src4, mask0, mask1, vec2, vec3);
        FUNC17(src5, src5, src5, src5, mask0, mask1, vec4, vec5);
        FUNC17(src6, src6, src6, src6, mask0, mask1, vec6, vec7);

        dsth3 = FUNC2(vec0, vec1, filt0, filt1);
        dsth4 = FUNC2(vec2, vec3, filt0, filt1);
        dsth5 = FUNC2(vec4, vec5, filt0, filt1);
        dsth6 = FUNC2(vec6, vec7, filt0, filt1);

        FUNC3(dsth3, dsth2, dst32_r, dst32_l);
        FUNC3(dsth4, dsth3, dst43_r, dst43_l);
        FUNC3(dsth5, dsth4, dst54_r, dst54_l);
        FUNC3(dsth6, dsth5, dst65_r, dst65_l);

        dst0_r = FUNC1(dst10_r, dst32_r, filt_h0, filt_h1);
        dst0_l = FUNC1(dst10_l, dst32_l, filt_h0, filt_h1);
        dst1_r = FUNC1(dst21_r, dst43_r, filt_h0, filt_h1);
        dst1_l = FUNC1(dst21_l, dst43_l, filt_h0, filt_h1);
        dst2_r = FUNC1(dst32_r, dst54_r, filt_h0, filt_h1);
        dst2_l = FUNC1(dst32_l, dst54_l, filt_h0, filt_h1);
        dst3_r = FUNC1(dst43_r, dst65_r, filt_h0, filt_h1);
        dst3_l = FUNC1(dst43_l, dst65_l, filt_h0, filt_h1);

        FUNC14(dst0_r, dst0_l, dst1_r, dst1_l, 6);
        FUNC14(dst2_r, dst2_l, dst3_r, dst3_l, 6);
        FUNC10(dst0_l, dst0_r, dst1_l, dst1_r, dst2_l, dst2_r, dst3_l,
                    dst3_r, dst0, dst1, dst2, dst3);

        FUNC3(dst0, in0, tmp0, tmp1);
        FUNC3(dst1, in1, tmp2, tmp3);
        FUNC3(dst2, in2, tmp4, tmp5);
        FUNC3(dst3, in3, tmp6, tmp7);
        dst0 = FUNC19(offset_vec, tmp0, weight_vec);
        dst1 = FUNC19(offset_vec, tmp1, weight_vec);
        dst2 = FUNC19(offset_vec, tmp2, weight_vec);
        dst3 = FUNC19(offset_vec, tmp3, weight_vec);
        dst4 = FUNC19(offset_vec, tmp4, weight_vec);
        dst5 = FUNC19(offset_vec, tmp5, weight_vec);
        dst6 = FUNC19(offset_vec, tmp6, weight_vec);
        dst7 = FUNC19(offset_vec, tmp7, weight_vec);
        FUNC13(dst0, dst1, dst2, dst3, rnd_vec);
        FUNC13(dst4, dst5, dst6, dst7, rnd_vec);
        FUNC9(dst1, dst0, dst3, dst2, dst5, dst4, dst7, dst6,
                    tmp0, tmp1, tmp2, tmp3);
        FUNC0(tmp0, tmp1, tmp2, tmp3);
        FUNC8(tmp1, tmp0, tmp3, tmp2, out0, out1);
        FUNC15(out0, out1, 0, 1, 0, 1, dst, dst_stride);
        dst += 8;
    }
}