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
typedef  scalar_t__ v16u8 ;
typedef  scalar_t__ v16i8 ;
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int /*<<< orphan*/  uint64_t ;
typedef  int uint32_t ;
typedef  int /*<<< orphan*/  int8_t ;
typedef  int int32_t ;
typedef  int /*<<< orphan*/  int16_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,int,int,int,int,int) ; 
 int /*<<< orphan*/  FUNC1 (int,int) ; 
 int /*<<< orphan*/  FUNC2 (int,int,int,int,int,int,int,int) ; 
 int FUNC3 (scalar_t__,scalar_t__,scalar_t__,scalar_t__,int,int,int,int) ; 
 int /*<<< orphan*/  FUNC4 (int,int,int,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int,scalar_t__,scalar_t__,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__) ; 
 int FUNC10 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC12 (int,int /*<<< orphan*/ ,int,int,int,int,int,int,int) ; 
 int /*<<< orphan*/  FUNC13 (int,int,int,int,int) ; 
 int /*<<< orphan*/  FUNC14 (int,int,int) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC16 (scalar_t__,int /*<<< orphan*/ ,int,int,int,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC17 (int,int) ; 
 int /*<<< orphan*/  FUNC18 (scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC19 (scalar_t__,scalar_t__,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC20 (scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__) ; 
 int FUNC21 (int,int) ; 
 int FUNC22 (int) ; 
 scalar_t__ FUNC23 (scalar_t__,scalar_t__) ; 
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
    v16u8 out;
    v16i8 src0, src1, src2, src3, src4, src5, src6, src7, src8, src9, src10;
    v8i16 in0 = { 0 }, in1 = { 0 };
    v8i16 filt0, filt1, filt2, filt3;
    v8i16 filt_h0, filt_h1, filt_h2, filt_h3;
    v16i8 mask1, mask2, mask3;
    v8i16 filter_vec, const_vec;
    v16i8 vec0, vec1, vec2, vec3, vec4, vec5, vec6, vec7;
    v16i8 vec8, vec9, vec10, vec11, vec12, vec13, vec14, vec15;
    v8i16 out0, out1;
    v8i16 dst30, dst41, dst52, dst63, dst66, dst97, dst108;
    v8i16 dst10, dst32, dst54, dst76, dst98, dst21, dst43, dst65, dst87, dst109;
    v4i32 dst0, dst1, dst2, dst3;
    v16i8 mask0 = FUNC7(ff_hevc_mask_arr + 16);

    src0_ptr -= ((3 * src_stride) + 3);
    filter_vec = FUNC10(filter_x);
    FUNC12(filter_vec, 0, 1, 2, 3, filt0, filt1, filt2, filt3);

    filter_vec = FUNC10(filter_y);
    FUNC17(filter_vec, filter_vec);

    FUNC13(filter_vec, filt_h0, filt_h1, filt_h2, filt_h3);

    mask1 = mask0 + 2;
    mask2 = mask0 + 4;
    mask3 = mask0 + 6;

    const_vec = FUNC22(128);
    const_vec <<= 6;

    FUNC9(src0_ptr, src_stride, src0, src1, src2, src3, src4, src5, src6);
    src0_ptr += (7 * src_stride);
    FUNC20(src0, src1, src2, src3, src4, src5, src6);

    /* row 0 row 1 row 2 row 3 */
    FUNC18(src0, src3, mask0, mask1, mask2, mask3, vec0, vec1, vec2, vec3);
    FUNC18(src1, src4, mask0, mask1, mask2, mask3, vec4, vec5, vec6, vec7);
    FUNC18(src2, src5, mask0, mask1, mask2, mask3,
               vec8, vec9, vec10, vec11);
    FUNC18(src3, src6, mask0, mask1, mask2, mask3,
               vec12, vec13, vec14, vec15);

    dst30 = FUNC3(vec0, vec1, vec2, vec3, filt0, filt1, filt2,
                              filt3);
    dst41 = FUNC3(vec4, vec5, vec6, vec7, filt0, filt1, filt2,
                              filt3);
    dst52 = FUNC3(vec8, vec9, vec10, vec11, filt0, filt1, filt2,
                              filt3);
    dst63 = FUNC3(vec12, vec13, vec14, vec15, filt0, filt1, filt2,
                              filt3);

    FUNC4(dst41, dst30, dst10, dst43);
    FUNC4(dst52, dst41, dst21, dst54);
    FUNC4(dst63, dst52, dst32, dst65);

    dst66 = (v8i16) FUNC24((v2i64) dst63, 1);

    for (loop_cnt = height >> 2; loop_cnt--;) {
        FUNC8(src0_ptr, src_stride, src7, src8, src9, src10);
        src0_ptr += (4 * src_stride);
        FUNC19(src7, src8, src9, src10);

        FUNC6(src1_ptr, src2_stride, tp0, tp1);
        FUNC5(tp0, tp1, in0);
        src1_ptr += (2 * src2_stride);
        FUNC6(src1_ptr, src2_stride, tp0, tp1);
        FUNC5(tp0, tp1, in1);
        src1_ptr += (2 * src2_stride);

        FUNC18(src7, src9, mask0, mask1, mask2, mask3,
                   vec0, vec1, vec2, vec3);
        FUNC18(src8, src10, mask0, mask1, mask2, mask3,
                   vec4, vec5, vec6, vec7);
        dst97 = FUNC3(vec0, vec1, vec2, vec3, filt0, filt1, filt2,
                                  filt3);
        dst108 = FUNC3(vec4, vec5, vec6, vec7, filt0, filt1, filt2,
                                   filt3);

        dst76 = FUNC21(dst97, dst66);
        FUNC4(dst108, dst97, dst87, dst109);
        dst66 = (v8i16) FUNC24((v2i64) dst97, 1);
        dst98 = FUNC21(dst66, dst108);

        dst0 = FUNC2(dst10, dst32, dst54, dst76, filt_h0, filt_h1,
                              filt_h2, filt_h3);
        dst1 = FUNC2(dst21, dst43, dst65, dst87, filt_h0, filt_h1,
                              filt_h2, filt_h3);
        dst2 = FUNC2(dst32, dst54, dst76, dst98, filt_h0, filt_h1,
                              filt_h2, filt_h3);
        dst3 = FUNC2(dst43, dst65, dst87, dst109, filt_h0, filt_h1,
                              filt_h2, filt_h3);

        FUNC15(dst0, dst1, dst2, dst3, 6);
        FUNC11(dst1, dst0, dst3, dst2, out0, out1);
        FUNC0(out0, in0, out1, in1, out0, out1);
        FUNC0(out0, const_vec, out1, const_vec, out0, out1);
        FUNC14(out0, out1, 7);
        FUNC1(out0, out1);
        out = (v16u8) FUNC23((v16i8) out1, (v16i8) out0);
        FUNC16(out, 0, 1, 2, 3, dst, dst_stride);
        dst += (4 * dst_stride);

        dst10 = dst54;
        dst32 = dst76;
        dst54 = dst98;
        dst21 = dst65;
        dst43 = dst87;
        dst65 = dst109;
        dst66 = (v8i16) FUNC24((v2i64) dst108, 1);
    }
}