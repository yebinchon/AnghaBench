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
typedef  int uint32_t ;
typedef  int /*<<< orphan*/  int8_t ;
typedef  int int32_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,scalar_t__,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,scalar_t__,scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC3 (scalar_t__,scalar_t__,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__,scalar_t__,scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC5 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int,scalar_t__,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int,scalar_t__,scalar_t__,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (scalar_t__,scalar_t__,scalar_t__,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,scalar_t__,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC13 (scalar_t__,int /*<<< orphan*/ ,int,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC14 (scalar_t__,int /*<<< orphan*/ ,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int,int,int /*<<< orphan*/ ,int,int,int,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC19 (scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC20 (scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC21 (scalar_t__,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC22 (scalar_t__,scalar_t__,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC23 (scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC24 (int) ; 
 int /*<<< orphan*/  FUNC25 (int) ; 
 scalar_t__ FUNC26 (scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC27 (int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC28 (scalar_t__,scalar_t__) ; 
 scalar_t__ ff_hevc_mask_arr ; 

__attribute__((used)) static void FUNC29(uint8_t *src,
                                      int32_t src_stride,
                                      uint8_t *dst,
                                      int32_t dst_stride,
                                      const int8_t *filter_x,
                                      const int8_t *filter_y,
                                      int32_t height,
                                      int32_t weight,
                                      int32_t offset,
                                      int32_t rnd_val)
{
    uint32_t loop_cnt;
    uint8_t *src_tmp, *dst_tmp;
    v16u8 out0, out1;
    v16i8 src0, src1, src2, src3, src4, src5, src6, src7, src8, src9, src10;
    v16i8 vec0, vec1, vec2, vec3, vec4, vec5, vec6, vec7;
    v16i8 mask0, mask1, mask2, mask3;
    v8i16 filt0, filt1, filt_h0, filt_h1, filter_vec, tmp0, tmp1, tmp2, tmp3;
    v8i16 dsth0, dsth1, dsth2, dsth3, dsth4, dsth5, dsth6;
    v8i16 dst10, dst21, dst22, dst73, dst84, dst95, dst106;
    v8i16 dst76_r, dst98_r, dst87_r, dst109_r;
    v8i16 dst10_r, dst32_r, dst54_r, dst21_r, dst43_r, dst65_r;
    v8i16 dst10_l, dst32_l, dst54_l, dst21_l, dst43_l, dst65_l;
    v8i16 offset_vec, const_128, denom_vec;
    v4i32 dst0_r, dst0_l, dst1_r, dst1_l, dst2_r, dst2_l, dst3_r, dst3_l;
    v4i32 dst0, dst1, dst2, dst3, dst4, dst5, dst6, dst7, weight_vec, rnd_vec;

    src -= (src_stride + 1);

    filter_vec = FUNC9(filter_x);
    FUNC13(filter_vec, 0, 1, filt0, filt1);

    filter_vec = FUNC9(filter_y);
    FUNC19(filter_vec, filter_vec);

    FUNC14(filter_vec, 0, filt_h0, filt_h1);

    mask0 = FUNC5(ff_hevc_mask_arr);
    mask1 = mask0 + 2;

    weight_vec = FUNC25(weight);
    rnd_vec = FUNC25(rnd_val);

    offset_vec = FUNC24(offset);
    denom_vec = FUNC24(rnd_val - 6);
    const_128 = FUNC24((128 * weight));
    offset_vec += FUNC28(const_128, denom_vec);

    src_tmp = src;
    dst_tmp = dst;

    FUNC6(src_tmp, src_stride, src0, src1, src2);
    src_tmp += (3 * src_stride);
    FUNC21(src0, src1, src2);
    FUNC20(src0, src0, src0, src0, mask0, mask1, vec0, vec1);
    FUNC20(src1, src1, src1, src1, mask0, mask1, vec2, vec3);
    FUNC20(src2, src2, src2, src2, mask0, mask1, vec4, vec5);
    dsth0 = FUNC3(vec0, vec1, filt0, filt1);
    dsth1 = FUNC3(vec2, vec3, filt0, filt1);
    dsth2 = FUNC3(vec4, vec5, filt0, filt1);
    FUNC4(dsth1, dsth0, dst10_r, dst10_l);
    FUNC4(dsth2, dsth1, dst21_r, dst21_l);

    for (loop_cnt = 4; loop_cnt--;) {
        FUNC7(src_tmp, src_stride, src3, src4, src5, src6);
        src_tmp += (4 * src_stride);
        FUNC22(src3, src4, src5, src6);
        FUNC20(src3, src3, src3, src3, mask0, mask1, vec0, vec1);
        FUNC20(src4, src4, src4, src4, mask0, mask1, vec2, vec3);
        FUNC20(src5, src5, src5, src5, mask0, mask1, vec4, vec5);
        FUNC20(src6, src6, src6, src6, mask0, mask1, vec6, vec7);
        dsth3 = FUNC3(vec0, vec1, filt0, filt1);
        dsth4 = FUNC3(vec2, vec3, filt0, filt1);
        dsth5 = FUNC3(vec4, vec5, filt0, filt1);
        dsth6 = FUNC3(vec6, vec7, filt0, filt1);
        FUNC4(dsth3, dsth2, dst32_r, dst32_l);
        FUNC4(dsth4, dsth3, dst43_r, dst43_l);
        FUNC4(dsth5, dsth4, dst54_r, dst54_l);
        FUNC4(dsth6, dsth5, dst65_r, dst65_l);
        dst0_r = FUNC2(dst10_r, dst32_r, filt_h0, filt_h1);
        dst0_l = FUNC2(dst10_l, dst32_l, filt_h0, filt_h1);
        dst1_r = FUNC2(dst21_r, dst43_r, filt_h0, filt_h1);
        dst1_l = FUNC2(dst21_l, dst43_l, filt_h0, filt_h1);
        dst2_r = FUNC2(dst32_r, dst54_r, filt_h0, filt_h1);
        dst2_l = FUNC2(dst32_l, dst54_l, filt_h0, filt_h1);
        dst3_r = FUNC2(dst43_r, dst65_r, filt_h0, filt_h1);
        dst3_l = FUNC2(dst43_l, dst65_l, filt_h0, filt_h1);
        FUNC16(dst0_r, dst0_l, dst1_r, dst1_l, 6);
        FUNC16(dst2_r, dst2_l, dst3_r, dst3_l, 6);
        FUNC10(dst0_r, weight_vec, dst1_r, weight_vec, dst0_r, dst1_r);
        FUNC10(dst2_r, weight_vec, dst3_r, weight_vec, dst2_r, dst3_r);
        FUNC10(dst0_l, weight_vec, dst1_l, weight_vec, dst0_l, dst1_l);
        FUNC10(dst2_l, weight_vec, dst3_l, weight_vec, dst2_l, dst3_l);
        FUNC15(dst0_r, dst0_l, dst1_r, dst1_l, rnd_vec);
        FUNC15(dst2_r, dst2_l, dst3_r, dst3_l, rnd_vec);
        FUNC12(dst0_l, dst0_r, dst1_l, dst1_r, dst2_l, dst2_r, dst3_l,
                    dst3_r, tmp0, tmp1, tmp2, tmp3);
        FUNC0(tmp0, offset_vec, tmp1, offset_vec, tmp0, tmp1);
        FUNC0(tmp2, offset_vec, tmp3, offset_vec, tmp2, tmp3);
        FUNC1(tmp0, tmp1, tmp2, tmp3);
        FUNC11(tmp1, tmp0, tmp3, tmp2, out0, out1);
        FUNC17(out0, out1, 0, 1, 0, 1, dst_tmp, dst_stride);
        dst_tmp += (4 * dst_stride);

        dst10_r = dst54_r;
        dst10_l = dst54_l;
        dst21_r = dst65_r;
        dst21_l = dst65_l;
        dsth2 = dsth6;
    }

    src += 8;
    dst += 8;

    mask2 = FUNC5(ff_hevc_mask_arr + 16);
    mask3 = mask2 + 2;

    FUNC6(src, src_stride, src0, src1, src2);
    src += (3 * src_stride);
    FUNC21(src0, src1, src2);
    FUNC20(src0, src1, src0, src1, mask2, mask3, vec0, vec1);
    FUNC20(src1, src2, src1, src2, mask2, mask3, vec2, vec3);
    dst10 = FUNC3(vec0, vec1, filt0, filt1);
    dst21 = FUNC3(vec2, vec3, filt0, filt1);
    FUNC4(dst21, dst10, dst10_r, dst21_r);
    dst22 = (v8i16) FUNC27((v2i64) dst21, 1);

    for (loop_cnt = 2; loop_cnt--;) {
        FUNC8(src, src_stride, src3, src4, src5, src6, src7, src8, src9,
               src10);
        src += (8 * src_stride);
        FUNC23(src3, src4, src5, src6, src7, src8, src9, src10);
        FUNC20(src3, src7, src3, src7, mask2, mask3, vec0, vec1);
        FUNC20(src4, src8, src4, src8, mask2, mask3, vec2, vec3);
        FUNC20(src5, src9, src5, src9, mask2, mask3, vec4, vec5);
        FUNC20(src6, src10, src6, src10, mask2, mask3, vec6, vec7);
        dst73 = FUNC3(vec0, vec1, filt0, filt1);
        dst84 = FUNC3(vec2, vec3, filt0, filt1);
        dst95 = FUNC3(vec4, vec5, filt0, filt1);
        dst106 = FUNC3(vec6, vec7, filt0, filt1);
        dst32_r = FUNC26(dst73, dst22);
        FUNC4(dst84, dst73, dst43_r, dst87_r);
        FUNC4(dst95, dst84, dst54_r, dst98_r);
        FUNC4(dst106, dst95, dst65_r, dst109_r);
        dst22 = (v8i16) FUNC27((v2i64) dst73, 1);
        dst76_r = FUNC26(dst22, dst106);
        dst0 = FUNC2(dst10_r, dst32_r, filt_h0, filt_h1);
        dst1 = FUNC2(dst21_r, dst43_r, filt_h0, filt_h1);
        dst2 = FUNC2(dst32_r, dst54_r, filt_h0, filt_h1);
        dst3 = FUNC2(dst43_r, dst65_r, filt_h0, filt_h1);
        dst4 = FUNC2(dst54_r, dst76_r, filt_h0, filt_h1);
        dst5 = FUNC2(dst65_r, dst87_r, filt_h0, filt_h1);
        dst6 = FUNC2(dst76_r, dst98_r, filt_h0, filt_h1);
        dst7 = FUNC2(dst87_r, dst109_r, filt_h0, filt_h1);
        FUNC16(dst0, dst1, dst2, dst3, 6);
        FUNC16(dst4, dst5, dst6, dst7, 6);
        FUNC10(dst0, weight_vec, dst1, weight_vec, dst0, dst1);
        FUNC10(dst2, weight_vec, dst3, weight_vec, dst2, dst3);
        FUNC10(dst4, weight_vec, dst5, weight_vec, dst4, dst5);
        FUNC10(dst6, weight_vec, dst7, weight_vec, dst6, dst7);
        FUNC15(dst0, dst1, dst2, dst3, rnd_vec);
        FUNC15(dst4, dst5, dst6, dst7, rnd_vec);
        FUNC12(dst1, dst0, dst3, dst2, dst5, dst4, dst7, dst6, tmp0, tmp1,
                    tmp2, tmp3);
        FUNC0(tmp0, offset_vec, tmp1, offset_vec, tmp0, tmp1);
        FUNC0(tmp2, offset_vec, tmp3, offset_vec, tmp2, tmp3);
        FUNC1(tmp0, tmp1, tmp2, tmp3);
        FUNC11(tmp1, tmp0, tmp3, tmp2, out0, out1);
        FUNC18(out0, out1, 0, 1, 2, 3, 0, 1, 2, 3, dst, dst_stride);
        dst += (8 * dst_stride);

        dst10_r = dst98_r;
        dst21_r = dst109_r;
        dst22 = (v8i16) FUNC27((v2i64) dst106, 1);
    }
}