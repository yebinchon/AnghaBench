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
typedef  scalar_t__ v16i8 ;
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int uint32_t ;
typedef  int /*<<< orphan*/  int8_t ;
typedef  int int32_t ;
typedef  int /*<<< orphan*/  int16_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__,scalar_t__,int,int,int,int) ; 
 int /*<<< orphan*/  FUNC1 (int,int,int,int) ; 
 int /*<<< orphan*/  FUNC2 (int,int,int,int) ; 
 scalar_t__ FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int,scalar_t__,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__) ; 
 int FUNC6 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int,int /*<<< orphan*/ ,int,int,int) ; 
 int /*<<< orphan*/  FUNC9 (int,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC12 (int,int) ; 
 int /*<<< orphan*/  FUNC13 (scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC14 (scalar_t__,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC15 (scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__) ; 
 int FUNC16 (int,int) ; 
 int FUNC17 (int) ; 
 scalar_t__ FUNC18 (int /*<<< orphan*/ ,int) ; 
 scalar_t__ ff_hevc_mask_arr ; 

__attribute__((used)) static void FUNC19(uint8_t *src,
                                       int32_t src_stride,
                                       int16_t *dst,
                                       int32_t dst_stride,
                                       const int8_t *filter_x,
                                       const int8_t *filter_y,
                                       int32_t height)
{
    uint32_t loop_cnt;
    v16i8 src0, src1, src2, src3, src4, src5, src6;
    v16i8 src7, src8, src9, src10;
    v8i16 filt0, filt1;
    v8i16 filt_h0, filt_h1;
    v16i8 mask0 = FUNC3(ff_hevc_mask_arr + 16);
    v16i8 mask1;
    v8i16 filter_vec, const_vec;
    v16i8 vec0, vec1, vec2, vec3, vec4, vec5, vec6, vec7;
    v8i16 dst10, dst21, dst22, dst73, dst84, dst95, dst106;
    v8i16 dst10_r, dst32_r, dst54_r, dst76_r, dst98_r;
    v8i16 dst21_r, dst43_r, dst65_r, dst87_r, dst109_r;
    v4i32 dst0, dst1, dst2, dst3, dst4, dst5, dst6, dst7;

    src -= (src_stride + 1);
    filter_vec = FUNC6(filter_x);
    FUNC8(filter_vec, 0, 1, filt0, filt1);

    filter_vec = FUNC6(filter_y);
    FUNC12(filter_vec, filter_vec);

    FUNC9(filter_vec, 0, filt_h0, filt_h1);

    mask1 = mask0 + 2;

    const_vec = FUNC17(128);
    const_vec <<= 6;

    FUNC4(src, src_stride, src0, src1, src2);
    src += (3 * src_stride);
    FUNC14(src0, src1, src2);
    FUNC13(src0, src1, src0, src1, mask0, mask1, vec0, vec1);
    FUNC13(src1, src2, src1, src2, mask0, mask1, vec2, vec3);
    dst10 = const_vec;
    FUNC0(vec0, vec1, filt0, filt1, dst10, dst10);
    dst21 = const_vec;
    FUNC0(vec2, vec3, filt0, filt1, dst21, dst21);
    FUNC2(dst21, dst10, dst10_r, dst21_r);
    dst22 = (v8i16) FUNC18((v2i64) dst21, 1);

    for (loop_cnt = height >> 3; loop_cnt--;) {
        FUNC5(src, src_stride,
               src3, src4, src5, src6, src7, src8, src9, src10);
        src += (8 * src_stride);
        FUNC15(src3, src4, src5, src6, src7, src8, src9, src10);

        FUNC13(src3, src7, src3, src7, mask0, mask1, vec0, vec1);
        FUNC13(src4, src8, src4, src8, mask0, mask1, vec2, vec3);
        FUNC13(src5, src9, src5, src9, mask0, mask1, vec4, vec5);
        FUNC13(src6, src10, src6, src10, mask0, mask1, vec6, vec7);

        dst73 = const_vec;
        dst84 = const_vec;
        dst95 = const_vec;
        dst106 = const_vec;
        FUNC0(vec0, vec1, filt0, filt1, dst73, dst73);
        FUNC0(vec2, vec3, filt0, filt1, dst84, dst84);
        FUNC0(vec4, vec5, filt0, filt1, dst95, dst95);
        FUNC0(vec6, vec7, filt0, filt1, dst106, dst106);

        dst32_r = FUNC16(dst73, dst22);
        FUNC2(dst84, dst73, dst43_r, dst87_r);
        FUNC2(dst95, dst84, dst54_r, dst98_r);
        FUNC2(dst106, dst95, dst65_r, dst109_r);
        dst22 = (v8i16) FUNC18((v2i64) dst73, 1);
        dst76_r = FUNC16(dst22, dst106);

        dst0 = FUNC1(dst10_r, dst32_r, filt_h0, filt_h1);
        dst1 = FUNC1(dst21_r, dst43_r, filt_h0, filt_h1);
        dst2 = FUNC1(dst32_r, dst54_r, filt_h0, filt_h1);
        dst3 = FUNC1(dst43_r, dst65_r, filt_h0, filt_h1);
        dst4 = FUNC1(dst54_r, dst76_r, filt_h0, filt_h1);
        dst5 = FUNC1(dst65_r, dst87_r, filt_h0, filt_h1);
        dst6 = FUNC1(dst76_r, dst98_r, filt_h0, filt_h1);
        dst7 = FUNC1(dst87_r, dst109_r, filt_h0, filt_h1);
        FUNC10(dst0, dst1, dst2, dst3, 6);
        FUNC10(dst4, dst5, dst6, dst7, 6);
        FUNC7(dst1, dst0, dst3, dst2, dst5, dst4, dst7, dst6,
                    dst0, dst1, dst2, dst3);
        FUNC11(dst0, dst1, dst2, dst3, 0, 1, 0, 1, 0, 1, 0, 1, dst, dst_stride);
        dst += (8 * dst_stride);

        dst10_r = dst98_r;
        dst21_r = dst109_r;
        dst22 = (v8i16) FUNC18((v2i64) dst106, 1);
    }
}