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
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (scalar_t__,scalar_t__,scalar_t__,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,scalar_t__,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC12 (scalar_t__,int /*<<< orphan*/ ,int,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC13 (scalar_t__,int /*<<< orphan*/ ,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int,int,int /*<<< orphan*/ ,int,int,int,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC17 (scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC18 (scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC19 (scalar_t__,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC20 (scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC21 (int) ; 
 int /*<<< orphan*/  FUNC22 (int) ; 
 scalar_t__ FUNC23 (scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC24 (int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC25 (scalar_t__,scalar_t__) ; 
 scalar_t__ ff_hevc_mask_arr ; 

__attribute__((used)) static void FUNC26(uint8_t *src,
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
    v16u8 out0, out1;
    v16i8 src0, src1, src2, src3, src4, src5, src6, src7, src8, src9, src10;
    v8i16 filt0, filt1;
    v16i8 mask0 = FUNC5(ff_hevc_mask_arr + 16);
    v16i8 mask1;
    v8i16 filt_h0, filt_h1, filter_vec, tmp0, tmp1, tmp2, tmp3;
    v16i8 vec0, vec1, vec2, vec3, vec4, vec5, vec6, vec7;
    v8i16 dst10, dst21, dst22, dst73, dst84, dst95, dst106;
    v8i16 dst10_r, dst32_r, dst54_r, dst76_r;
    v8i16 dst21_r, dst43_r, dst65_r, dst87_r;
    v8i16 dst98_r, dst109_r, offset_vec, const_128, denom_vec;
    v4i32 dst0, dst1, dst2, dst3, dst4, dst5, dst6, dst7, weight_vec, rnd_vec;

    src -= (src_stride + 1);

    filter_vec = FUNC8(filter_x);
    FUNC12(filter_vec, 0, 1, filt0, filt1);

    filter_vec = FUNC8(filter_y);
    FUNC17(filter_vec, filter_vec);

    FUNC13(filter_vec, 0, filt_h0, filt_h1);

    mask1 = mask0 + 2;

    weight_vec = FUNC22(weight);
    rnd_vec = FUNC22(rnd_val);

    offset_vec = FUNC21(offset);
    denom_vec = FUNC21(rnd_val - 6);
    const_128 = FUNC21((128 * weight));
    offset_vec += FUNC25(const_128, denom_vec);

    FUNC6(src, src_stride, src0, src1, src2);
    src += (3 * src_stride);
    FUNC19(src0, src1, src2);

    FUNC18(src0, src1, src0, src1, mask0, mask1, vec0, vec1);
    FUNC18(src1, src2, src1, src2, mask0, mask1, vec2, vec3);
    dst10 = FUNC3(vec0, vec1, filt0, filt1);
    dst21 = FUNC3(vec2, vec3, filt0, filt1);
    FUNC4(dst21, dst10, dst10_r, dst21_r);
    dst22 = (v8i16) FUNC24((v2i64) dst21, 1);

    for (loop_cnt = height >> 3; loop_cnt--;) {
        FUNC7(src, src_stride,
               src3, src4, src5, src6, src7, src8, src9, src10);
        src += (8 * src_stride);
        FUNC20(src3, src4, src5, src6, src7, src8, src9, src10);

        FUNC18(src3, src7, src3, src7, mask0, mask1, vec0, vec1);
        FUNC18(src4, src8, src4, src8, mask0, mask1, vec2, vec3);
        FUNC18(src5, src9, src5, src9, mask0, mask1, vec4, vec5);
        FUNC18(src6, src10, src6, src10, mask0, mask1, vec6, vec7);
        dst73 = FUNC3(vec0, vec1, filt0, filt1);
        dst84 = FUNC3(vec2, vec3, filt0, filt1);
        dst95 = FUNC3(vec4, vec5, filt0, filt1);
        dst106 = FUNC3(vec6, vec7, filt0, filt1);
        dst32_r = FUNC23(dst73, dst22);
        FUNC4(dst84, dst73, dst43_r, dst87_r);
        FUNC4(dst95, dst84, dst54_r, dst98_r);
        FUNC4(dst106, dst95, dst65_r, dst109_r);
        dst22 = (v8i16) FUNC24((v2i64) dst73, 1);
        dst76_r = FUNC23(dst22, dst106);
        dst0 = FUNC2(dst10_r, dst32_r, filt_h0, filt_h1);
        dst1 = FUNC2(dst21_r, dst43_r, filt_h0, filt_h1);
        dst2 = FUNC2(dst32_r, dst54_r, filt_h0, filt_h1);
        dst3 = FUNC2(dst43_r, dst65_r, filt_h0, filt_h1);
        dst4 = FUNC2(dst54_r, dst76_r, filt_h0, filt_h1);
        dst5 = FUNC2(dst65_r, dst87_r, filt_h0, filt_h1);
        dst6 = FUNC2(dst76_r, dst98_r, filt_h0, filt_h1);
        dst7 = FUNC2(dst87_r, dst109_r, filt_h0, filt_h1);
        FUNC15(dst0, dst1, dst2, dst3, 6);
        FUNC15(dst4, dst5, dst6, dst7, 6);
        FUNC9(dst0, weight_vec, dst1, weight_vec, dst0, dst1);
        FUNC9(dst2, weight_vec, dst3, weight_vec, dst2, dst3);
        FUNC9(dst4, weight_vec, dst5, weight_vec, dst4, dst5);
        FUNC9(dst6, weight_vec, dst7, weight_vec, dst6, dst7);
        FUNC14(dst0, dst1, dst2, dst3, rnd_vec);
        FUNC14(dst4, dst5, dst6, dst7, rnd_vec);
        FUNC11(dst1, dst0, dst3, dst2, dst5, dst4, dst7, dst6, tmp0, tmp1,
                    tmp2, tmp3);
        FUNC0(tmp0, offset_vec, tmp1, offset_vec, tmp0, tmp1);
        FUNC0(tmp2, offset_vec, tmp3, offset_vec, tmp2, tmp3);
        FUNC1(tmp0, tmp1, tmp2, tmp3);
        FUNC10(tmp1, tmp0, tmp3, tmp2, out0, out1);
        FUNC16(out0, out1, 0, 1, 2, 3, 0, 1, 2, 3, dst, dst_stride);
        dst += (8 * dst_stride);

        dst10_r = dst98_r;
        dst21_r = dst109_r;
        dst22 = (v8i16) FUNC24((v2i64) dst106, 1);
    }
}