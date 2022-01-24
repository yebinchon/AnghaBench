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
typedef  int /*<<< orphan*/  v16i8 ;
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int /*<<< orphan*/  int8_t ;
typedef  int int32_t ;
typedef  int /*<<< orphan*/  int16_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int,int,int,int,int,int,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC7 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC8 (int,int /*<<< orphan*/ ,int,int,int,int,int,int,int) ; 
 int /*<<< orphan*/  FUNC9 (int,int,int,int,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC12 (int) ; 

__attribute__((used)) static void FUNC13(uint8_t *src, int32_t src_stride,
                              int16_t *dst, int32_t dst_stride,
                              const int8_t *filter, int32_t height)
{
    int32_t loop_cnt;
    v16i8 src0, src1, src2, src3, src4, src5, src6, src7, src8;
    v16i8 src9, src10, src11, src12, src13, src14;
    v16i8 src10_r, src32_r, src54_r, src76_r, src98_r;
    v16i8 src21_r, src43_r, src65_r, src87_r, src109_r;
    v16i8 src1110_r, src1211_r, src1312_r, src1413_r;
    v16i8 src2110, src4332, src6554, src8776, src10998;
    v16i8 src12111110, src14131312;
    v8i16 dst10, dst32, dst54, dst76;
    v8i16 filt0, filt1, filt2, filt3;
    v8i16 filter_vec, const_vec;

    src -= (3 * src_stride);

    const_vec = FUNC12(128);
    const_vec <<= 6;

    filter_vec = FUNC7(filter);
    FUNC8(filter_vec, 0, 1, 2, 3, filt0, filt1, filt2, filt3);

    FUNC5(src, src_stride, src0, src1, src2, src3, src4, src5, src6);
    src += (7 * src_stride);
    FUNC2(src1, src0, src3, src2, src5, src4, src2, src1,
               src10_r, src32_r, src54_r, src21_r);
    FUNC1(src4, src3, src6, src5, src43_r, src65_r);
    FUNC3(src21_r, src10_r, src43_r, src32_r, src65_r, src54_r,
               src2110, src4332, src6554);
    FUNC10(src2110, src4332, src6554);

    for (loop_cnt = (height >> 3); loop_cnt--;) {
        FUNC6(src, src_stride,
               src7, src8, src9, src10, src11, src12, src13, src14);
        src += (8 * src_stride);

        FUNC2(src7, src6, src8, src7, src9, src8, src10, src9,
                   src76_r, src87_r, src98_r, src109_r);
        FUNC2(src11, src10, src12, src11, src13, src12, src14, src13,
                   src1110_r, src1211_r, src1312_r, src1413_r);
        FUNC4(src87_r, src76_r, src109_r, src98_r,
                   src1211_r, src1110_r, src1413_r, src1312_r,
                   src8776, src10998, src12111110, src14131312);
        FUNC11(src8776, src10998, src12111110, src14131312);

        dst10 = const_vec;
        FUNC0(src2110, src4332, src6554, src8776,
                     filt0, filt1, filt2, filt3, dst10, dst10, dst10, dst10);
        dst32 = const_vec;
        FUNC0(src4332, src6554, src8776, src10998,
                     filt0, filt1, filt2, filt3, dst32, dst32, dst32, dst32);
        dst54 = const_vec;
        FUNC0(src6554, src8776, src10998, src12111110,
                     filt0, filt1, filt2, filt3, dst54, dst54, dst54, dst54);
        dst76 = const_vec;
        FUNC0(src8776, src10998, src12111110, src14131312,
                     filt0, filt1, filt2, filt3, dst76, dst76, dst76, dst76);

        FUNC9(dst10, dst32, dst54, dst76, 0, 1, 0, 1, 0, 1, 0, 1, dst, dst_stride);
        dst += (8 * dst_stride);

        src2110 = src10998;
        src4332 = src12111110;
        src6554 = src14131312;
        src6 = src14;
    }
}