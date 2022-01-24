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
 int /*<<< orphan*/  FUNC0 (scalar_t__,scalar_t__,scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC1 (scalar_t__,scalar_t__,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,scalar_t__,scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int,scalar_t__,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,scalar_t__,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC8 (scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC9 (scalar_t__,scalar_t__,scalar_t__,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC10 (scalar_t__,int /*<<< orphan*/ ,int,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC11 (scalar_t__,int /*<<< orphan*/ ,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC12 (scalar_t__,scalar_t__,scalar_t__,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int,int,int /*<<< orphan*/ ,int,int,int,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC15 (scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC16 (scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC17 (scalar_t__,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC18 (scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC19 (scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC20 (int /*<<< orphan*/ ,int) ; 
 scalar_t__ ff_hevc_mask_arr ; 

__attribute__((used)) static void FUNC21(uint8_t *src,
                                           int32_t src_stride,
                                           uint8_t *dst,
                                           int32_t dst_stride,
                                           const int8_t *filter_x,
                                           const int8_t *filter_y,
                                           int32_t height)
{
    uint32_t loop_cnt;
    v16u8 out0, out1;
    v16i8 src0, src1, src2, src3, src4, src5;
    v16i8 src6, src7, src8, src9, src10;
    v8i16 filt0, filt1;
    v8i16 filt_h0, filt_h1;
    v16i8 mask0 = FUNC3(ff_hevc_mask_arr + 16);
    v16i8 mask1;
    v8i16 filter_vec, tmp0, tmp1, tmp2, tmp3;
    v16i8 vec0, vec1, vec2, vec3, vec4, vec5, vec6, vec7;
    v8i16 dst10, dst21, dst22, dst73, dst84, dst95, dst106;
    v4i32 dst0_r, dst1_r, dst2_r, dst3_r, dst4_r, dst5_r, dst6_r, dst7_r;
    v8i16 dst10_r, dst32_r, dst54_r, dst76_r;
    v8i16 dst21_r, dst43_r, dst65_r, dst87_r;
    v8i16 dst98_r, dst109_r;

    src -= (src_stride + 1);

    filter_vec = FUNC6(filter_x);
    FUNC10(filter_vec, 0, 1, filt0, filt1);

    filter_vec = FUNC6(filter_y);
    FUNC15(filter_vec, filter_vec);

    FUNC11(filter_vec, 0, filt_h0, filt_h1);

    mask1 = mask0 + 2;

    FUNC4(src, src_stride, src0, src1, src2);
    src += (3 * src_stride);

    FUNC17(src0, src1, src2);

    FUNC16(src0, src1, src0, src1, mask0, mask1, vec0, vec1);
    FUNC16(src1, src2, src1, src2, mask0, mask1, vec2, vec3);
    dst10 = FUNC1(vec0, vec1, filt0, filt1);
    dst21 = FUNC1(vec2, vec3, filt0, filt1);
    FUNC2(dst21, dst10, dst10_r, dst21_r);
    dst22 = (v8i16) FUNC20((v2i64) dst21, 1);

    for (loop_cnt = height >> 3; loop_cnt--;) {
        FUNC5(src, src_stride,
               src3, src4, src5, src6, src7, src8, src9, src10);
        src += (8 * src_stride);

        FUNC18(src3, src4, src5, src6, src7, src8, src9, src10);

        FUNC16(src3, src7, src3, src7, mask0, mask1, vec0, vec1);
        FUNC16(src4, src8, src4, src8, mask0, mask1, vec2, vec3);
        FUNC16(src5, src9, src5, src9, mask0, mask1, vec4, vec5);
        FUNC16(src6, src10, src6, src10, mask0, mask1, vec6, vec7);

        dst73 = FUNC1(vec0, vec1, filt0, filt1);
        dst84 = FUNC1(vec2, vec3, filt0, filt1);
        dst95 = FUNC1(vec4, vec5, filt0, filt1);
        dst106 = FUNC1(vec6, vec7, filt0, filt1);

        dst32_r = FUNC19(dst73, dst22);
        FUNC2(dst84, dst73, dst43_r, dst87_r);
        FUNC2(dst95, dst84, dst54_r, dst98_r);
        FUNC2(dst106, dst95, dst65_r, dst109_r);
        dst22 = (v8i16) FUNC20((v2i64) dst73, 1);
        dst76_r = FUNC19(dst22, dst106);

        dst0_r = FUNC0(dst10_r, dst32_r, filt_h0, filt_h1);
        dst1_r = FUNC0(dst21_r, dst43_r, filt_h0, filt_h1);
        dst2_r = FUNC0(dst32_r, dst54_r, filt_h0, filt_h1);
        dst3_r = FUNC0(dst43_r, dst65_r, filt_h0, filt_h1);
        dst4_r = FUNC0(dst54_r, dst76_r, filt_h0, filt_h1);
        dst5_r = FUNC0(dst65_r, dst87_r, filt_h0, filt_h1);
        dst6_r = FUNC0(dst76_r, dst98_r, filt_h0, filt_h1);
        dst7_r = FUNC0(dst87_r, dst109_r, filt_h0, filt_h1);
        FUNC13(dst0_r, dst1_r, dst2_r, dst3_r, 6);
        FUNC13(dst4_r, dst5_r, dst6_r, dst7_r, 6);
        FUNC7(dst1_r, dst0_r, dst3_r, dst2_r,
                    dst5_r, dst4_r, dst7_r, dst6_r,
                    tmp0, tmp1, tmp2, tmp3);
        FUNC12(tmp0, tmp1, tmp2, tmp3, 6);
        FUNC9(tmp0, tmp1, tmp2, tmp3, 7);
        out0 = FUNC8(tmp0, tmp1);
        out1 = FUNC8(tmp2, tmp3);
        FUNC14(out0, out1, 0, 1, 2, 3, 0, 1, 2, 3, dst, dst_stride);
        dst += (8 * dst_stride);

        dst10_r = dst98_r;
        dst21_r = dst109_r;
        dst22 = (v8i16) FUNC20((v2i64) dst106, 1);
    }
}