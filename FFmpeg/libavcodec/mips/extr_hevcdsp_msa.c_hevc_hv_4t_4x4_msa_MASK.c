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
typedef  scalar_t__ v16i8 ;
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int /*<<< orphan*/  int8_t ;
typedef  scalar_t__ int32_t ;
typedef  int /*<<< orphan*/  int16_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__,scalar_t__,int,int,int,int) ; 
 int /*<<< orphan*/  FUNC1 (int,int,int,int) ; 
 int /*<<< orphan*/  FUNC2 (int,int,int,int) ; 
 scalar_t__ FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__) ; 
 int FUNC5 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int,int /*<<< orphan*/ ,int,int,int) ; 
 int /*<<< orphan*/  FUNC8 (int,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC11 (int,int) ; 
 int /*<<< orphan*/  FUNC12 (scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC13 (scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__) ; 
 int FUNC14 (int) ; 
 scalar_t__ ff_hevc_mask_arr ; 

__attribute__((used)) static void FUNC15(uint8_t *src,
                               int32_t src_stride,
                               int16_t *dst,
                               int32_t dst_stride,
                               const int8_t *filter_x,
                               const int8_t *filter_y)
{
    v16i8 src0, src1, src2, src3, src4, src5, src6;
    v8i16 filt0, filt1;
    v8i16 filt_h0, filt_h1;
    v16i8 mask0 = FUNC3(ff_hevc_mask_arr + 16);
    v16i8 mask1;
    v16i8 vec0, vec1, vec2, vec3, vec4, vec5, vec6, vec7;
    v8i16 filter_vec, const_vec;
    v8i16 dst30, dst41, dst52, dst63, dst10, dst32, dst54, dst21, dst43, dst65;
    v4i32 dst0, dst1, dst2, dst3;

    src -= (src_stride + 1);

    filter_vec = FUNC5(filter_x);
    FUNC7(filter_vec, 0, 1, filt0, filt1);

    filter_vec = FUNC5(filter_y);
    FUNC11(filter_vec, filter_vec);

    FUNC8(filter_vec, 0, filt_h0, filt_h1);

    mask1 = mask0 + 2;

    const_vec = FUNC14(128);
    const_vec <<= 6;

    FUNC4(src, src_stride, src0, src1, src2, src3, src4, src5, src6);
    FUNC13(src0, src1, src2, src3, src4, src5, src6);

    FUNC12(src0, src3, src0, src3, mask0, mask1, vec0, vec1);
    FUNC12(src1, src4, src1, src4, mask0, mask1, vec2, vec3);
    FUNC12(src2, src5, src2, src5, mask0, mask1, vec4, vec5);
    FUNC12(src3, src6, src3, src6, mask0, mask1, vec6, vec7);

    dst30 = const_vec;
    dst41 = const_vec;
    dst52 = const_vec;
    dst63 = const_vec;
    FUNC0(vec0, vec1, filt0, filt1, dst30, dst30);
    FUNC0(vec2, vec3, filt0, filt1, dst41, dst41);
    FUNC0(vec4, vec5, filt0, filt1, dst52, dst52);
    FUNC0(vec6, vec7, filt0, filt1, dst63, dst63);

    FUNC2(dst41, dst30, dst10, dst43);
    FUNC2(dst52, dst41, dst21, dst54);
    FUNC2(dst63, dst52, dst32, dst65);

    dst0 = FUNC1(dst10, dst32, filt_h0, filt_h1);
    dst1 = FUNC1(dst21, dst43, filt_h0, filt_h1);
    dst2 = FUNC1(dst32, dst54, filt_h0, filt_h1);
    dst3 = FUNC1(dst43, dst65, filt_h0, filt_h1);
    FUNC9(dst0, dst1, dst2, dst3, 6);
    FUNC6(dst1, dst0, dst3, dst2, dst0, dst2);
    FUNC10(dst0, dst2, 0, 1, 0, 1, dst, dst_stride);
}