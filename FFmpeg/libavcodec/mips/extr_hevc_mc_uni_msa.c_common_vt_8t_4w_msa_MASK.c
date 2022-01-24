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
typedef  int /*<<< orphan*/  v16u8 ;
typedef  int /*<<< orphan*/  v16i8 ;
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int uint32_t ;
typedef  int /*<<< orphan*/  int8_t ;
typedef  int int32_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int,int,int /*<<< orphan*/ ,int,int,int,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC16(uint8_t *src, int32_t src_stride,
                                uint8_t *dst, int32_t dst_stride,
                                const int8_t *filter, int32_t height)
{
    uint32_t loop_cnt;
    v16u8 out0, out1;
    v16i8 src0, src1, src2, src3, src4, src5, src6, src7, src8, src9, src10;
    v16i8 src11, src12, src13, src14;
    v16i8 src10_r, src32_r, src54_r, src76_r, src98_r, src21_r, src43_r;
    v16i8 src65_r, src87_r, src109_r, src2110, src4332, src6554, src8776;
    v16i8 src1110_r, src1211_r, src1312_r, src1413_r, src12111110, src14131312;
    v16i8 src10998, filt0, filt1, filt2, filt3;
    v8i16 filt, out10, out32, out54, out76;

    src -= (3 * src_stride);

    filt = FUNC8(filter);
    FUNC11(filt, 0, 1, 2, 3, filt0, filt1, filt2, filt3);

    FUNC7(src, src_stride, src0, src1, src2, src3, src4, src5, src6);
    src += (7 * src_stride);

    FUNC3(src1, src0, src3, src2, src5, src4, src2, src1, src10_r, src32_r,
               src54_r, src21_r);
    FUNC2(src4, src3, src6, src5, src43_r, src65_r);
    FUNC5(src21_r, src10_r, src43_r, src32_r, src65_r, src54_r, src2110,
               src4332, src6554);
    FUNC15(src2110, src4332, src6554);

    for (loop_cnt = (height >> 3); loop_cnt--;) {
        FUNC6(src, src_stride, src7, src8, src9, src10);
        src += (4 * src_stride);
        FUNC6(src, src_stride, src11, src12, src13, src14);
        src += (4 * src_stride);

        FUNC3(src7, src6, src8, src7, src9, src8, src10, src9, src76_r,
                   src87_r, src98_r, src109_r);
        FUNC3(src11, src10, src12, src11, src13, src12, src14, src13,
                   src1110_r, src1211_r, src1312_r, src1413_r);
        FUNC4(src87_r, src76_r, src109_r, src98_r, src8776, src10998);
        FUNC4(src1211_r, src1110_r, src1413_r, src1312_r,
                   src12111110, src14131312);
        FUNC14(src8776, src10998);
        FUNC14(src12111110, src14131312);

        FUNC0(src2110, src4332, filt0, filt0, out10, out32);
        FUNC0(src6554, src8776, filt0, filt0, out54, out76);
        FUNC1(src4332, src6554, filt1, filt1, out10, out32);
        FUNC1(src8776, src10998, filt1, filt1, out54, out76);
        FUNC1(src6554, src8776, filt2, filt2, out10, out32);
        FUNC1(src10998, src12111110, filt2, filt2, out54, out76);
        FUNC1(src8776, src10998, filt3, filt3, out10, out32);
        FUNC1(src12111110, src14131312, filt3, filt3, out54, out76);
        FUNC12(out10, out32, 6);
        FUNC12(out54, out76, 6);
        FUNC10(out10, out32, 7);
        FUNC10(out54, out76, 7);
        out0 = FUNC9(out10, out32);
        out1 = FUNC9(out54, out76);
        FUNC13(out0, out1, 0, 1, 2, 3, 0, 1, 2, 3, dst, dst_stride);
        dst += (8 * dst_stride);

        src2110 = src10998;
        src4332 = src12111110;
        src6554 = src14131312;
        src6 = src14;
    }
}