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
typedef  scalar_t__ v16u8 ;
typedef  scalar_t__ v16i8 ;
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int /*<<< orphan*/  uint64_t ;
typedef  int /*<<< orphan*/  int8_t ;
typedef  scalar_t__ int32_t ;
typedef  int /*<<< orphan*/  int16_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (int,int,int,int) ; 
 int FUNC2 (scalar_t__,scalar_t__,int,int) ; 
 int /*<<< orphan*/  FUNC3 (int,int,int,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__) ; 
 int FUNC8 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC9 (int,int /*<<< orphan*/ ,int,int,int) ; 
 int /*<<< orphan*/  FUNC10 (int,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC11 (scalar_t__,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC12 (int,int) ; 
 int /*<<< orphan*/  FUNC13 (scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC14 (scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__) ; 
 int FUNC15 (int,int) ; 
 int FUNC16 (int) ; 
 scalar_t__ FUNC17 (scalar_t__,scalar_t__) ; 
 int FUNC18 (int,int) ; 
 int FUNC19 (int,int) ; 
 scalar_t__ ff_hevc_mask_arr ; 

__attribute__((used)) static void FUNC20(uint8_t *src0_ptr,
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
    v8i16 in0 = { 0 };
    v16i8 src0, src1, src2, src3, src4;
    v8i16 filt0, filt1;
    v8i16 filt_h0, filt_h1;
    v16i8 mask0 = FUNC6(ff_hevc_mask_arr + 16);
    v16i8 mask1;
    v8i16 filter_vec, const_vec;
    v16i8 vec0, vec1, vec2, vec3, vec4, vec5;
    v8i16 dst20, dst31, dst42, dst10, dst32, dst21, dst43, tmp;
    v4i32 dst0, dst1;

    src0_ptr -= (src_stride + 1);

    filter_vec = FUNC8(filter_x);
    FUNC9(filter_vec, 0, 1, filt0, filt1);

    filter_vec = FUNC8(filter_y);
    FUNC12(filter_vec, filter_vec);

    FUNC10(filter_vec, 0, filt_h0, filt_h1);

    mask1 = mask0 + 2;

    const_vec = FUNC16(128);
    const_vec <<= 6;

    FUNC7(src0_ptr, src_stride, src0, src1, src2, src3, src4);
    FUNC14(src0, src1, src2, src3, src4);

    FUNC5(src1_ptr, src2_stride, tp0, tp1);
    FUNC4(tp0, tp1, in0);
    in0 = FUNC15(in0, const_vec);

    FUNC13(src0, src2, src0, src2, mask0, mask1, vec0, vec1);
    FUNC13(src1, src3, src1, src3, mask0, mask1, vec2, vec3);
    FUNC13(src2, src4, src2, src4, mask0, mask1, vec4, vec5);

    dst20 = FUNC2(vec0, vec1, filt0, filt1);
    dst31 = FUNC2(vec2, vec3, filt0, filt1);
    dst42 = FUNC2(vec4, vec5, filt0, filt1);

    FUNC3(dst31, dst20, dst10, dst32);
    FUNC3(dst42, dst31, dst21, dst43);

    dst0 = FUNC1(dst10, dst32, filt_h0, filt_h1);
    dst1 = FUNC1(dst21, dst43, filt_h0, filt_h1);
    dst0 >>= 6;
    dst1 >>= 6;
    tmp = FUNC18((v8i16) dst1, (v8i16) dst0);
    tmp = FUNC15(tmp, in0);
    tmp = FUNC19(tmp, 7);
    FUNC0(tmp);
    out = (v16u8) FUNC17((v16i8) tmp, (v16i8) tmp);
    FUNC11(out, 0, 1, dst, dst_stride);
}