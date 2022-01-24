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
typedef  scalar_t__ v16u8 ;
typedef  scalar_t__ v16i8 ;
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int /*<<< orphan*/  uint64_t ;
typedef  int /*<<< orphan*/  int8_t ;
typedef  int int32_t ;
typedef  int /*<<< orphan*/  int16_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,int,int,int,int,int) ; 
 int /*<<< orphan*/  FUNC1 (int,int) ; 
 int /*<<< orphan*/  FUNC2 (int,int,int,int) ; 
 int FUNC3 (scalar_t__,scalar_t__,int,int) ; 
 int /*<<< orphan*/  FUNC4 (int,int,int,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__) ; 
 int FUNC9 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC11 (int,int /*<<< orphan*/ ,int,int,int) ; 
 int /*<<< orphan*/  FUNC12 (int,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC13 (int,int,int) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC15 (scalar_t__,int /*<<< orphan*/ ,int,int,int,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC16 (int,int) ; 
 int /*<<< orphan*/  FUNC17 (scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC18 (scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__) ; 
 int FUNC19 (int) ; 
 scalar_t__ FUNC20 (scalar_t__,scalar_t__) ; 
 scalar_t__ ff_hevc_mask_arr ; 

__attribute__((used)) static void FUNC21(uint8_t *src0_ptr,
                                  int32_t src_stride,
                                  int16_t *src1_ptr,
                                  int32_t src2_stride,
                                  uint8_t *dst,
                                  int32_t dst_stride,
                                  const int8_t *filter_x,
                                  const int8_t *filter_y)
{
    uint64_t tp0, tp1;
    v16u8 out;
    v16i8 src0, src1, src2, src3, src4, src5, src6;
    v8i16 filt0, filt1;
    v8i16 filt_h0, filt_h1;
    v16i8 mask0 = FUNC7(ff_hevc_mask_arr + 16);
    v16i8 mask1;
    v8i16 filter_vec, const_vec;
    v16i8 vec0, vec1, vec2, vec3, vec4, vec5, vec6, vec7;
    v8i16 tmp0, tmp1;
    v8i16 in0 = { 0 }, in1 = { 0 };
    v8i16 dst30, dst41, dst52, dst63;
    v8i16 dst10, dst32, dst54, dst21, dst43, dst65;
    v4i32 dst0, dst1, dst2, dst3;

    src0_ptr -= (src_stride + 1);

    filter_vec = FUNC9(filter_x);
    FUNC11(filter_vec, 0, 1, filt0, filt1);

    filter_vec = FUNC9(filter_y);
    FUNC16(filter_vec, filter_vec);

    FUNC12(filter_vec, 0, filt_h0, filt_h1);

    mask1 = mask0 + 2;

    FUNC8(src0_ptr, src_stride, src0, src1, src2, src3, src4, src5, src6);
    FUNC18(src0, src1, src2, src3, src4, src5, src6);

    const_vec = FUNC19(128);
    const_vec <<= 6;

    FUNC6(src1_ptr, src2_stride, tp0, tp1);
    src1_ptr += 2 * src2_stride;
    FUNC5(tp0, tp1, in0);
    FUNC6(src1_ptr, src2_stride, tp0, tp1);
    FUNC5(tp0, tp1, in1);

    FUNC0(in0, const_vec, in1, const_vec, in0, in1);

    FUNC17(src0, src3, src0, src3, mask0, mask1, vec0, vec1);
    FUNC17(src1, src4, src1, src4, mask0, mask1, vec2, vec3);
    FUNC17(src2, src5, src2, src5, mask0, mask1, vec4, vec5);
    FUNC17(src3, src6, src3, src6, mask0, mask1, vec6, vec7);

    dst30 = FUNC3(vec0, vec1, filt0, filt1);
    dst41 = FUNC3(vec2, vec3, filt0, filt1);
    dst52 = FUNC3(vec4, vec5, filt0, filt1);
    dst63 = FUNC3(vec6, vec7, filt0, filt1);

    FUNC4(dst41, dst30, dst10, dst43);
    FUNC4(dst52, dst41, dst21, dst54);
    FUNC4(dst63, dst52, dst32, dst65);
    dst0 = FUNC2(dst10, dst32, filt_h0, filt_h1);
    dst1 = FUNC2(dst21, dst43, filt_h0, filt_h1);
    dst2 = FUNC2(dst32, dst54, filt_h0, filt_h1);
    dst3 = FUNC2(dst43, dst65, filt_h0, filt_h1);
    FUNC14(dst0, dst1, dst2, dst3, 6);
    FUNC10(dst1, dst0, dst3, dst2, tmp0, tmp1);
    FUNC0(tmp0, in0, tmp1, in1, tmp0, tmp1);
    FUNC13(tmp0, tmp1, 7);
    FUNC1(tmp0, tmp1);
    out = (v16u8) FUNC20((v16i8) tmp1, (v16i8) tmp0);
    FUNC15(out, 0, 1, 2, 3, dst, dst_stride);
}