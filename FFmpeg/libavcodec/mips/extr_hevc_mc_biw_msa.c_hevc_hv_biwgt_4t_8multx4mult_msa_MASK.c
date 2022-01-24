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
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int,scalar_t__,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int,scalar_t__,scalar_t__,scalar_t__,scalar_t__) ; 
 int FUNC7 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int,int,int,int,int) ; 
 int /*<<< orphan*/  FUNC9 (int,int,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int,int,int,int,int,int,int,int,int,int,int,int) ; 
 int /*<<< orphan*/  FUNC11 (int,int,int,int,int,int,int,int,int,int,int,int) ; 
 int /*<<< orphan*/  FUNC12 (int,int /*<<< orphan*/ ,int,int,int) ; 
 int /*<<< orphan*/  FUNC13 (int,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC14 (int,int,int,int,int) ; 
 int /*<<< orphan*/  FUNC15 (int,int,int,int,int) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC17 (int,int) ; 
 int /*<<< orphan*/  FUNC18 (scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC19 (scalar_t__,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC20 (scalar_t__,scalar_t__,scalar_t__,scalar_t__) ; 
 int FUNC21 (int,int,int) ; 
 int FUNC22 (int) ; 
 int /*<<< orphan*/  ff_hevc_mask_arr ; 

__attribute__((used)) static void FUNC23(uint8_t *src0_ptr,
                                             int32_t src_stride,
                                             int16_t *src1_ptr,
                                             int32_t src2_stride,
                                             uint8_t *dst,
                                             int32_t dst_stride,
                                             const int8_t *filter_x,
                                             const int8_t *filter_y,
                                             int32_t height,
                                             int32_t weight0,
                                             int32_t weight1,
                                             int32_t offset0,
                                             int32_t offset1,
                                             int32_t rnd_val,
                                             int32_t width)
{
    uint32_t loop_cnt;
    uint32_t cnt;
    int32_t offset, weight;
    uint8_t *src0_ptr_tmp;
    int16_t *src1_ptr_tmp;
    uint8_t *dst_tmp;
    v16u8 out0, out1;
    v16i8 src0, src1, src2, src3, src4, src5, src6;
    v8i16 in0, in1, in2, in3;
    v8i16 filt0, filt1;
    v8i16 filt_h0, filt_h1;
    v16i8 mask0 = FUNC4(ff_hevc_mask_arr);
    v16i8 mask1;
    v8i16 filter_vec;
    v16i8 vec0, vec1, vec2, vec3, vec4, vec5, vec6, vec7;
    v8i16 dsth0, dsth1, dsth2, dsth3, dsth4, dsth5, dsth6;
    v4i32 dst0_r, dst0_l, dst1_r, dst1_l, dst2_r, dst2_l, dst3_r, dst3_l;
    v8i16 tmp0, tmp1, tmp2, tmp3, tmp4, tmp5, tmp6, tmp7;
    v4i32 dst0, dst1, dst2, dst3, dst4, dst5, dst6, dst7;
    v8i16 dst10_r, dst32_r, dst54_r, dst21_r, dst43_r, dst65_r;
    v8i16 dst10_l, dst32_l, dst54_l, dst21_l, dst43_l, dst65_l, weight_vec;
    v4i32 offset_vec, rnd_vec, const_vec;

    src0_ptr -= (src_stride + 1);

    filter_vec = FUNC7(filter_x);
    FUNC12(filter_vec, 0, 1, filt0, filt1);

    filter_vec = FUNC7(filter_y);
    FUNC17(filter_vec, filter_vec);

    FUNC13(filter_vec, 0, filt_h0, filt_h1);

    mask1 = mask0 + 2;

    offset = (offset0 + offset1) << rnd_val;
    weight0 = weight0 & 0x0000FFFF;
    weight = weight0 | (weight1 << 16);

    const_vec = FUNC22((128 * weight1));
    const_vec <<= 6;
    offset_vec = FUNC22(offset);
    weight_vec = (v8i16) FUNC22(weight);
    rnd_vec = FUNC22(rnd_val + 1);
    offset_vec += const_vec;

    for (cnt = width >> 3; cnt--;) {
        src0_ptr_tmp = src0_ptr;
        src1_ptr_tmp = src1_ptr;
        dst_tmp = dst;

        FUNC5(src0_ptr_tmp, src_stride, src0, src1, src2);
        src0_ptr_tmp += (3 * src_stride);
        FUNC19(src0, src1, src2);

        FUNC18(src0, src0, src0, src0, mask0, mask1, vec0, vec1);
        FUNC18(src1, src1, src1, src1, mask0, mask1, vec2, vec3);
        FUNC18(src2, src2, src2, src2, mask0, mask1, vec4, vec5);
        dsth0 = FUNC2(vec0, vec1, filt0, filt1);
        dsth1 = FUNC2(vec2, vec3, filt0, filt1);
        dsth2 = FUNC2(vec4, vec5, filt0, filt1);

        FUNC3(dsth1, dsth0, dst10_r, dst10_l);
        FUNC3(dsth2, dsth1, dst21_r, dst21_l);

        for (loop_cnt = height >> 2; loop_cnt--;) {
            FUNC6(src0_ptr_tmp, src_stride, src3, src4, src5, src6);
            src0_ptr_tmp += (4 * src_stride);
            FUNC8(src1_ptr_tmp, src2_stride, in0, in1, in2, in3);
            src1_ptr_tmp += (4 * src2_stride);
            FUNC20(src3, src4, src5, src6);

            FUNC18(src3, src3, src3, src3, mask0, mask1, vec0, vec1);
            FUNC18(src4, src4, src4, src4, mask0, mask1, vec2, vec3);
            FUNC18(src5, src5, src5, src5, mask0, mask1, vec4, vec5);
            FUNC18(src6, src6, src6, src6, mask0, mask1, vec6, vec7);

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

            FUNC15(dst0_r, dst0_l, dst1_r, dst1_l, 6);
            FUNC15(dst2_r, dst2_l, dst3_r, dst3_l, 6);
            FUNC11(dst0_l, dst0_r, dst1_l, dst1_r, dst2_l, dst2_r, dst3_l,
                        dst3_r, dst0, dst1, dst2, dst3);
            FUNC3(dst0, in0, tmp0, tmp1);
            FUNC3(dst1, in1, tmp2, tmp3);
            FUNC3(dst2, in2, tmp4, tmp5);
            FUNC3(dst3, in3, tmp6, tmp7);
            dst0 = FUNC21(offset_vec, tmp0, weight_vec);
            dst1 = FUNC21(offset_vec, tmp1, weight_vec);
            dst2 = FUNC21(offset_vec, tmp2, weight_vec);
            dst3 = FUNC21(offset_vec, tmp3, weight_vec);
            dst4 = FUNC21(offset_vec, tmp4, weight_vec);
            dst5 = FUNC21(offset_vec, tmp5, weight_vec);
            dst6 = FUNC21(offset_vec, tmp6, weight_vec);
            dst7 = FUNC21(offset_vec, tmp7, weight_vec);
            FUNC14(dst0, dst1, dst2, dst3, rnd_vec);
            FUNC14(dst4, dst5, dst6, dst7, rnd_vec);
            FUNC10(dst1, dst0, dst3, dst2, dst5, dst4, dst7, dst6,
                        tmp0, tmp1, tmp2, tmp3);
            FUNC0(tmp0, tmp1, tmp2, tmp3);
            FUNC9(tmp1, tmp0, tmp3, tmp2, out0, out1);
            FUNC16(out0, out1, 0, 1, 0, 1, dst_tmp, dst_stride);
            dst_tmp += (4 * dst_stride);

            dst10_r = dst54_r;
            dst10_l = dst54_l;
            dst21_r = dst65_r;
            dst21_l = dst65_l;
            dsth2 = dsth6;
        }

        src0_ptr += 8;
        dst += 8;
        src1_ptr += 8;
    }
}