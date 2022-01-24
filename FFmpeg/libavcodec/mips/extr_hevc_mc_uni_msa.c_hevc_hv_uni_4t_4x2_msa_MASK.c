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
typedef  int /*<<< orphan*/  v8i16 ;
typedef  int v4i32 ;
typedef  int /*<<< orphan*/  v16u8 ;
typedef  scalar_t__ v16i8 ;
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int /*<<< orphan*/  int8_t ;
typedef  scalar_t__ int32_t ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC12 (scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ,int) ; 
 scalar_t__ ff_hevc_mask_arr ; 

__attribute__((used)) static void FUNC16(uint8_t *src,
                                   int32_t src_stride,
                                   uint8_t *dst,
                                   int32_t dst_stride,
                                   const int8_t *filter_x,
                                   const int8_t *filter_y)
{
    v16u8 out;
    v16i8 src0, src1, src2, src3, src4;
    v8i16 filt0, filt1;
    v8i16 filt_h0, filt_h1;
    v16i8 mask0 = FUNC3(ff_hevc_mask_arr + 16);
    v16i8 mask1;
    v8i16 filter_vec, tmp;
    v16i8 vec0, vec1, vec2, vec3, vec4, vec5;
    v8i16 dst20, dst31, dst42, dst10, dst32, dst21, dst43;
    v4i32 dst0, dst1;

    src -= (src_stride + 1);

    filter_vec = FUNC5(filter_x);
    FUNC7(filter_vec, 0, 1, filt0, filt1);

    filter_vec = FUNC5(filter_y);
    FUNC10(filter_vec, filter_vec);

    FUNC8(filter_vec, 0, filt_h0, filt_h1);

    mask1 = mask0 + 2;

    FUNC4(src, src_stride, src0, src1, src2, src3, src4);
    FUNC12(src0, src1, src2, src3, src4);

    FUNC11(src0, src2, src0, src2, mask0, mask1, vec0, vec1);
    FUNC11(src1, src3, src1, src3, mask0, mask1, vec2, vec3);
    FUNC11(src2, src4, src2, src4, mask0, mask1, vec4, vec5);

    dst20 = FUNC1(vec0, vec1, filt0, filt1);
    dst31 = FUNC1(vec2, vec3, filt0, filt1);
    dst42 = FUNC1(vec4, vec5, filt0, filt1);

    FUNC2(dst31, dst20, dst10, dst32);
    FUNC2(dst42, dst31, dst21, dst43);

    dst0 = FUNC0(dst10, dst32, filt_h0, filt_h1);
    dst1 = FUNC0(dst21, dst43, filt_h0, filt_h1);
    dst0 >>= 6;
    dst1 >>= 6;
    tmp = FUNC13((v8i16) dst1, (v8i16) dst0);
    tmp = FUNC15(tmp, 6);
    tmp = FUNC14(tmp, 7);
    out = FUNC6(tmp, tmp);
    FUNC9(out, 0, 1, dst, dst_stride);
}