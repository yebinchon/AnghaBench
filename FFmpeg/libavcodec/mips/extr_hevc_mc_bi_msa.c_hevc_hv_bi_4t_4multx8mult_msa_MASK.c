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
typedef  int /*<<< orphan*/  v4i32 ;
typedef  int /*<<< orphan*/  v2i64 ;
typedef  int /*<<< orphan*/  v16u8 ;
typedef  scalar_t__ v16i8 ;
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int /*<<< orphan*/  uint64_t ;
typedef  int uint32_t ;
typedef  int /*<<< orphan*/  int8_t ;
typedef  int int32_t ;
typedef  int /*<<< orphan*/  int16_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,int,int,int,int,int,int,int,int,int,int,int) ; 
 int /*<<< orphan*/  FUNC1 (int,int,int,int) ; 
 int /*<<< orphan*/  FUNC2 (int,int,int,int) ; 
 int FUNC3 (scalar_t__,scalar_t__,int,int) ; 
 int /*<<< orphan*/  FUNC4 (int,int,int,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int,scalar_t__,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__) ; 
 int FUNC10 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC11 (int,int,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int,int,int) ; 
 int /*<<< orphan*/  FUNC13 (int,int /*<<< orphan*/ ,int,int,int) ; 
 int /*<<< orphan*/  FUNC14 (int,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC15 (int,int,int,int,int) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int,int,int /*<<< orphan*/ ,int,int,int,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC18 (int,int) ; 
 int /*<<< orphan*/  FUNC19 (scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC20 (scalar_t__,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC21 (scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__) ; 
 int FUNC22 (int,int) ; 
 int FUNC23 (int) ; 
 scalar_t__ FUNC24 (int /*<<< orphan*/ ,int) ; 
 scalar_t__ ff_hevc_mask_arr ; 

__attribute__((used)) static void FUNC25(uint8_t *src0_ptr,
                                          int32_t src_stride,
                                          int16_t *src1_ptr,
                                          int32_t src2_stride,
                                          uint8_t *dst,
                                          int32_t dst_stride,
                                          const int8_t *filter_x,
                                          const int8_t *filter_y,
                                          int32_t height)
{
    uint32_t loop_cnt;
    uint64_t tp0, tp1;
    v16u8 out0, out1;
    v16i8 src0, src1, src2, src3, src4, src5, src6, src7, src8, src9, src10;
    v8i16 filt0, filt1;
    v8i16 filt_h0, filt_h1;
    v16i8 mask0 = FUNC7(ff_hevc_mask_arr + 16);
    v16i8 mask1;
    v8i16 filter_vec, const_vec;
    v16i8 vec0, vec1, vec2, vec3, vec4, vec5, vec6, vec7;
    v8i16 tmp0, tmp1, tmp2, tmp3;
    v8i16 dst10, dst21, dst22, dst73, dst84, dst95, dst106;
    v8i16 dst10_r, dst32_r, dst54_r, dst76_r;
    v8i16 dst21_r, dst43_r, dst65_r, dst87_r;
    v8i16 dst98_r, dst109_r;
    v8i16 in0 = { 0 }, in1 = { 0 }, in2 = { 0 }, in3 = { 0 };
    v4i32 dst0_r, dst1_r, dst2_r, dst3_r, dst4_r, dst5_r, dst6_r, dst7_r;

    src0_ptr -= (src_stride + 1);

    filter_vec = FUNC10(filter_x);
    FUNC13(filter_vec, 0, 1, filt0, filt1);

    filter_vec = FUNC10(filter_y);
    FUNC18(filter_vec, filter_vec);

    FUNC14(filter_vec, 0, filt_h0, filt_h1);

    mask1 = mask0 + 2;

    const_vec = FUNC23(128);
    const_vec <<= 6;

    FUNC8(src0_ptr, src_stride, src0, src1, src2);
    src0_ptr += (3 * src_stride);
    FUNC20(src0, src1, src2);

    FUNC19(src0, src1, src0, src1, mask0, mask1, vec0, vec1);
    FUNC19(src1, src2, src1, src2, mask0, mask1, vec2, vec3);
    dst10 = FUNC3(vec0, vec1, filt0, filt1);
    dst21 = FUNC3(vec2, vec3, filt0, filt1);
    FUNC4(dst21, dst10, dst10_r, dst21_r);
    dst22 = (v8i16) FUNC24((v2i64) dst21, 1);


    for (loop_cnt = height >> 3; loop_cnt--;) {
        FUNC9(src0_ptr, src_stride,
               src3, src4, src5, src6, src7, src8, src9, src10);
        src0_ptr += (8 * src_stride);
        FUNC21(src3, src4, src5, src6, src7, src8, src9, src10);
        FUNC19(src3, src7, src3, src7, mask0, mask1, vec0, vec1);
        FUNC19(src4, src8, src4, src8, mask0, mask1, vec2, vec3);
        FUNC19(src5, src9, src5, src9, mask0, mask1, vec4, vec5);
        FUNC19(src6, src10, src6, src10, mask0, mask1, vec6, vec7);

        dst73 = FUNC3(vec0, vec1, filt0, filt1);
        dst84 = FUNC3(vec2, vec3, filt0, filt1);
        dst95 = FUNC3(vec4, vec5, filt0, filt1);
        dst106 = FUNC3(vec6, vec7, filt0, filt1);

        dst32_r = FUNC22(dst73, dst22);
        FUNC4(dst84, dst73, dst43_r, dst87_r);
        FUNC4(dst95, dst84, dst54_r, dst98_r);
        FUNC4(dst106, dst95, dst65_r, dst109_r);
        dst22 = (v8i16) FUNC24((v2i64) dst73, 1);
        dst76_r = FUNC22(dst22, dst106);

        FUNC6(src1_ptr, src2_stride, tp0, tp1);
        src1_ptr += 2 * src2_stride;
        FUNC5(tp0, tp1, in0);
        FUNC6(src1_ptr, src2_stride, tp0, tp1);
        src1_ptr += 2 * src2_stride;
        FUNC5(tp0, tp1, in1);

        FUNC6(src1_ptr, src2_stride, tp0, tp1);
        src1_ptr += 2 * src2_stride;
        FUNC5(tp0, tp1, in2);
        FUNC6(src1_ptr, src2_stride, tp0, tp1);
        src1_ptr += 2 * src2_stride;
        FUNC5(tp0, tp1, in3);

        FUNC0(in0, const_vec, in1, const_vec, in2, const_vec, in3,
                    const_vec, in0, in1, in2, in3);
        dst0_r = FUNC2(dst10_r, dst32_r, filt_h0, filt_h1);
        dst1_r = FUNC2(dst21_r, dst43_r, filt_h0, filt_h1);
        dst2_r = FUNC2(dst32_r, dst54_r, filt_h0, filt_h1);
        dst3_r = FUNC2(dst43_r, dst65_r, filt_h0, filt_h1);
        dst4_r = FUNC2(dst54_r, dst76_r, filt_h0, filt_h1);
        dst5_r = FUNC2(dst65_r, dst87_r, filt_h0, filt_h1);
        dst6_r = FUNC2(dst76_r, dst98_r, filt_h0, filt_h1);
        dst7_r = FUNC2(dst87_r, dst109_r, filt_h0, filt_h1);
        FUNC16(dst0_r, dst1_r, dst2_r, dst3_r, 6);
        FUNC16(dst4_r, dst5_r, dst6_r, dst7_r, 6);
        FUNC12(dst1_r, dst0_r, dst3_r, dst2_r,
                    dst5_r, dst4_r, dst7_r, dst6_r, tmp0, tmp1, tmp2, tmp3);
        FUNC0(in0, tmp0, in1, tmp1, in2, tmp2, in3, tmp3, tmp0, tmp1,
                    tmp2, tmp3);
        FUNC15(tmp0, tmp1, tmp2, tmp3, 7);
        FUNC1(tmp0, tmp1, tmp2, tmp3);
        FUNC11(tmp1, tmp0, tmp3, tmp2, out0, out1);
        FUNC17(out0, out1, 0, 1, 2, 3, 0, 1, 2, 3, dst, dst_stride);
        dst += (8 * dst_stride);

        dst10_r = dst98_r;
        dst21_r = dst109_r;
        dst22 = (v8i16) FUNC24((v2i64) dst106, 1);
    }
}