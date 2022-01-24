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
typedef  int /*<<< orphan*/  v4i32 ;
typedef  int /*<<< orphan*/  v16u8 ;
typedef  int /*<<< orphan*/  v16i8 ;
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int /*<<< orphan*/  int8_t ;
typedef  int int32_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int,int,int /*<<< orphan*/ ,int,int,int,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (int) ; 
 int /*<<< orphan*/  FUNC16 (int) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC18(uint8_t *src,
                                     int32_t src_stride,
                                     uint8_t *dst,
                                     int32_t dst_stride,
                                     const int8_t *filter,
                                     int32_t height,
                                     int32_t weight,
                                     int32_t offset,
                                     int32_t rnd_val)
{
    int32_t loop_cnt;
    v16u8 out0, out1;
    v16i8 src0, src1, src2, src3, src4, src5, src6, src7, src8;
    v16i8 src9, src10, src11, src12, src13, src14;
    v16i8 src10_r, src32_r, src54_r, src76_r, src98_r;
    v16i8 src21_r, src43_r, src65_r, src87_r, src109_r;
    v16i8 src1110_r, src1211_r, src1312_r, src1413_r;
    v16i8 src2110, src4332, src6554, src8776, src10998;
    v16i8 src12111110, src14131312;
    v8i16 filter_vec, dst01, dst23, dst45, dst67;
    v8i16 filt0, filt1, filt2, filt3;
    v8i16 dst0, dst1, dst2, dst3, weight_vec_h, offset_vec, denom_vec;
    v4i32 weight_vec, rnd_vec;

    src -= (3 * src_stride);


    weight_vec = FUNC16(weight);
    rnd_vec = FUNC16(rnd_val);

    weight *= 128;
    rnd_val -= 6;

    weight_vec_h = FUNC15(weight);
    offset_vec = FUNC15(offset);
    denom_vec = FUNC15(rnd_val);

    weight_vec_h = FUNC17(weight_vec_h, denom_vec);
    offset_vec = FUNC14(offset_vec, weight_vec_h);

    filter_vec = FUNC8(filter);
    FUNC10(filter_vec, 0, 1, 2, 3, filt0, filt1, filt2, filt3);

    FUNC6(src, src_stride, src0, src1, src2, src3, src4, src5, src6);
    src += (7 * src_stride);

    FUNC3(src1, src0, src3, src2, src5, src4, src2, src1,
               src10_r, src32_r, src54_r, src21_r);

    FUNC2(src4, src3, src6, src5, src43_r, src65_r);

    FUNC4(src21_r, src10_r, src43_r,
               src32_r, src65_r, src54_r, src2110, src4332, src6554);

    FUNC12(src2110, src4332, src6554);

    for (loop_cnt = (height >> 3); loop_cnt--;) {
        FUNC7(src, src_stride,
               src7, src8, src9, src10, src11, src12, src13, src14);
        src += (8 * src_stride);
        FUNC3(src7, src6, src8, src7, src9, src8, src10, src9,
                   src76_r, src87_r, src98_r, src109_r);
        FUNC3(src11, src10, src12, src11, src13, src12, src14, src13,
                   src1110_r, src1211_r, src1312_r, src1413_r);
        FUNC5(src87_r, src76_r, src109_r, src98_r, src1211_r, src1110_r,
                   src1413_r, src1312_r,
                   src8776, src10998, src12111110, src14131312);
        FUNC13(src8776, src10998, src12111110, src14131312);
        dst01 = FUNC0(src2110, src4332, src6554, src8776, filt0,
                                  filt1, filt2, filt3);
        dst23 = FUNC0(src4332, src6554, src8776, src10998, filt0,
                                  filt1, filt2, filt3);
        dst45 = FUNC0(src6554, src8776, src10998, src12111110,
                                  filt0, filt1, filt2, filt3);
        dst67 = FUNC0(src8776, src10998, src12111110, src14131312,
                                  filt0, filt1, filt2, filt3);

        FUNC1(dst01, dst23, dst45, dst67, weight_vec,
                                       offset_vec, rnd_vec, dst0, dst1, dst2,
                                       dst3);

        FUNC9(dst1, dst0, dst3, dst2, out0, out1);
        FUNC11(out0, out1, 0, 1, 2, 3, 0, 1, 2, 3, dst, dst_stride);
        dst += (8 * dst_stride);

        src2110 = src10998;
        src4332 = src12111110;
        src6554 = src14131312;
        src6 = src14;
    }
}