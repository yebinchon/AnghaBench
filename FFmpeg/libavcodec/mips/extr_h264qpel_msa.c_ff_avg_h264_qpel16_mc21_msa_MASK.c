#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ v8i16 ;
typedef  scalar_t__ v4i32 ;
struct TYPE_8__ {int /*<<< orphan*/  member_0; } ;
typedef  TYPE_1__ v16u8 ;
typedef  int /*<<< orphan*/  v16i8 ;
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int /*<<< orphan*/  uint64_t ;
typedef  int uint32_t ;
typedef  int ptrdiff_t ;
typedef  int int32_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_1__) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/  const*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/  const*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_1__ FUNC11 (scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC12 (scalar_t__,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_1__,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC16 (scalar_t__,scalar_t__) ; 
 TYPE_1__ FUNC17 (TYPE_1__,TYPE_1__) ; 
 scalar_t__ FUNC18 (int const) ; 
 scalar_t__ FUNC19 (scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC20 (scalar_t__,int) ; 
 int /*<<< orphan*/ * luma_mask_arr ; 

void FUNC21(uint8_t *dst, const uint8_t *src,
                                 ptrdiff_t stride)
{
    uint64_t tp0, tp1, tp2, tp3;
    uint8_t *dst_tmp = dst;
    const uint8_t *src_tmp = src - (2 * stride) - 2;
    uint32_t multiple8_cnt, loop_cnt;
    const int32_t filt_const0 = 0xfffb0001;
    const int32_t filt_const1 = 0x140014;
    const int32_t filt_const2 = 0x1fffb;
    v16u8 out0, out1, dst0 = { 0 }, dst1 = { 0 };
    v16i8 src0, src1, src2, src3, src4, src5, src6, src7, src8, mask0, mask1;
    v16i8 mask2;
    v8i16 hz_out0, hz_out1, hz_out2, hz_out3, hz_out4, hz_out5, hz_out6;
    v8i16 hz_out7, hz_out8, tmp0, tmp1, tmp2, tmp3, tmp4, tmp5, tmp6, tmp7;
    v8i16 hz_out10_r, hz_out21_r, hz_out32_r, hz_out43_r, hz_out54_r;
    v8i16 hz_out65_r, hz_out76_r, hz_out87_r, hz_out10_l, hz_out21_l;
    v8i16 hz_out32_l, hz_out43_l, hz_out54_l, hz_out65_l, hz_out76_l;
    v8i16 hz_out87_l, filt0, filt1, filt2;
    v4i32 tmp0_w, tmp1_w;

    filt0 = (v8i16) FUNC18(filt_const0);
    filt1 = (v8i16) FUNC18(filt_const1);
    filt2 = (v8i16) FUNC18(filt_const2);

    FUNC9(&luma_mask_arr[0], 16, mask0, mask1, mask2);

    for (multiple8_cnt = 2; multiple8_cnt--;) {
        dst = dst_tmp;
        src = src_tmp;

        FUNC10(src, stride, src0, src1, src2, src3, src4);
        FUNC15(src0, src1, src2, src3, src4);
        src += (5 * stride);

        hz_out0 = FUNC1(src0, src0, mask0, mask1, mask2);
        hz_out1 = FUNC1(src1, src1, mask0, mask1, mask2);
        hz_out2 = FUNC1(src2, src2, mask0, mask1, mask2);
        hz_out3 = FUNC1(src3, src3, mask0, mask1, mask2);
        hz_out4 = FUNC1(src4, src4, mask0, mask1, mask2);

        for (loop_cnt = 4; loop_cnt--;) {
            FUNC8(src, stride, src5, src6);
            src += (2 * stride);

            FUNC14(src5, src6);
            hz_out5 = FUNC1(src5, src5, mask0, mask1, mask2);
            hz_out6 = FUNC1(src6, src6, mask0, mask1, mask2);
            FUNC5(hz_out1, hz_out0, hz_out2, hz_out1, hz_out3, hz_out2,
                       hz_out4, hz_out3, hz_out10_r, hz_out21_r, hz_out32_r,
                       hz_out43_r);
            FUNC3(hz_out1, hz_out0, hz_out2, hz_out1, hz_out3, hz_out2,
                       hz_out4, hz_out3, hz_out10_l, hz_out21_l, hz_out32_l,
                       hz_out43_l);
            FUNC4(hz_out5, hz_out4, hz_out6, hz_out5, hz_out54_r,
                       hz_out65_r);
            FUNC2(hz_out5, hz_out4, hz_out6, hz_out5, hz_out54_l,
                       hz_out65_l);
            tmp0_w = FUNC0(hz_out10_r, hz_out32_r, hz_out54_r, filt0,
                                    filt1, filt2);
            tmp1_w = FUNC0(hz_out10_l, hz_out32_l, hz_out54_l, filt0,
                                    filt1, filt2);
            tmp0 = FUNC19((v8i16) tmp1_w, (v8i16) tmp0_w);
            tmp0_w = FUNC0(hz_out21_r, hz_out43_r, hz_out65_r, filt0,
                                    filt1, filt2);
            tmp1_w = FUNC0(hz_out21_l, hz_out43_l, hz_out65_l, filt0,
                                    filt1, filt2);
            tmp2 = FUNC19((v8i16) tmp1_w, (v8i16) tmp0_w);

            tmp1 = FUNC20(hz_out2, 5);
            tmp3 = FUNC20(hz_out3, 5);
            FUNC12(tmp1, tmp3, 7);

            tmp0 = FUNC16(tmp0, tmp1);
            tmp1 = FUNC16(tmp2, tmp3);

            FUNC7(dst, stride, tp0, tp1);
            FUNC6(tp0, tp1, dst0);

            out0 = FUNC11(tmp0, tmp1);
            dst0 = FUNC17(out0, dst0);
            FUNC13(dst0, 0, 1, dst, stride);
            dst += (2 * stride);

            FUNC8(src, stride, src7, src8);
            src += (2 * stride);

            FUNC14(src7, src8);
            hz_out7 = FUNC1(src7, src7, mask0, mask1, mask2);
            hz_out8 = FUNC1(src8, src8, mask0, mask1, mask2);
            FUNC4(hz_out7, hz_out6, hz_out8, hz_out7, hz_out76_r,
                       hz_out87_r);
            FUNC2(hz_out7, hz_out6, hz_out8, hz_out7, hz_out76_l,
                       hz_out87_l);
            tmp0_w = FUNC0(hz_out32_r, hz_out54_r, hz_out76_r, filt0,
                                    filt1, filt2);
            tmp1_w = FUNC0(hz_out32_l, hz_out54_l, hz_out76_l, filt0,
                                    filt1, filt2);
            tmp4 = FUNC19((v8i16) tmp1_w, (v8i16) tmp0_w);
            tmp0_w = FUNC0(hz_out43_r, hz_out65_r, hz_out87_r, filt0,
                                    filt1, filt2);
            tmp1_w = FUNC0(hz_out43_l, hz_out65_l, hz_out87_l, filt0,
                                    filt1, filt2);
            tmp6 = FUNC19((v8i16) tmp1_w, (v8i16) tmp0_w);

            tmp5 = FUNC20(hz_out4, 5);
            tmp7 = FUNC20(hz_out5, 5);
            FUNC12(tmp5, tmp7, 7);

            tmp2 = FUNC16(tmp4, tmp5);
            tmp3 = FUNC16(tmp6, tmp7);

            FUNC7(dst, stride, tp2, tp3);
            FUNC6(tp2, tp3, dst1);

            out1 = FUNC11(tmp2, tmp3);
            dst1 = FUNC17(out1, dst1);
            FUNC13(dst1, 0, 1, dst, stride);
            dst += (2 * stride);

            hz_out0 = hz_out4;
            hz_out1 = hz_out5;
            hz_out2 = hz_out6;
            hz_out3 = hz_out7;
            hz_out4 = hz_out8;
        }

        src_tmp += 8;
        dst_tmp += 8;
    }
}