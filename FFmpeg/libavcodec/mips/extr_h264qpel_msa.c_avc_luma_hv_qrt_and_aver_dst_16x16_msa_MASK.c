#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ v8i16 ;
struct TYPE_12__ {int /*<<< orphan*/  member_0; } ;
typedef  TYPE_1__ v16u8 ;
typedef  scalar_t__ v16i8 ;
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int /*<<< orphan*/  uint64_t ;
typedef  int uint32_t ;
typedef  int int32_t ;
typedef  int int16_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC1 (scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__,TYPE_1__,TYPE_1__,TYPE_1__,TYPE_1__,TYPE_1__) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_1__) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int,scalar_t__,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/  const*,int,scalar_t__,scalar_t__,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/  const*,int,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__) ; 
 TYPE_1__ FUNC9 (scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC10 (scalar_t__,scalar_t__,scalar_t__,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC11 (scalar_t__,scalar_t__,scalar_t__,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_1__,TYPE_1__,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC13 (scalar_t__,scalar_t__,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC14 (scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC15 (int const) ; 
 scalar_t__ FUNC16 (scalar_t__,int) ; 
 int /*<<< orphan*/ * luma_mask_arr ; 

__attribute__((used)) static void FUNC17(const uint8_t *src_x,
                                                   const uint8_t *src_y,
                                                   uint8_t *dst,
                                                   int32_t stride)
{
    const int16_t filt_const0 = 0xfb01;
    const int16_t filt_const1 = 0x1414;
    const int16_t filt_const2 = 0x1fb;
    const uint8_t *src_x_tmp = src_x;
    const uint8_t *src_y_tmp = src_y;
    uint8_t *dst_tmp = dst;
    uint32_t multiple8_cnt, loop_cnt;
    uint64_t tp0, tp1, tp2, tp3;
    v16u8 tmp0, tmp1, dst0 = { 0 }, dst1 = { 0 };
    v16i8 src_hz0, src_hz1, src_hz2, src_hz3, mask0, mask1, mask2;
    v16i8 src_vt0, src_vt1, src_vt2, src_vt3, src_vt4, src_vt5, src_vt6;
    v16i8 src_vt7, src_vt8;
    v16i8 src_vt10_r, src_vt21_r, src_vt32_r, src_vt43_r, src_vt54_r;
    v16i8 src_vt65_r, src_vt76_r, src_vt87_r, filt0, filt1, filt2;
    v8i16 hz_out0, hz_out1, hz_out2, hz_out3, vt_out0, vt_out1, vt_out2;
    v8i16 vt_out3, out0, out1, out2, out3;

    filt0 = (v16i8) FUNC15(filt_const0);
    filt1 = (v16i8) FUNC15(filt_const1);
    filt2 = (v16i8) FUNC15(filt_const2);

    FUNC6(&luma_mask_arr[0], 16, mask0, mask1, mask2);

    for (multiple8_cnt = 2; multiple8_cnt--;) {
        src_x = src_x_tmp;
        src_y = src_y_tmp;
        dst = dst_tmp;

        FUNC8(src_y, stride, src_vt0, src_vt1, src_vt2, src_vt3, src_vt4);
        src_y += (5 * stride);

        FUNC14(src_vt0, src_vt1, src_vt2, src_vt3, src_vt4);

        for (loop_cnt = 4; loop_cnt--;) {
            FUNC7(src_x, stride, src_hz0, src_hz1, src_hz2, src_hz3);
            FUNC13(src_hz0, src_hz1, src_hz2, src_hz3);
            src_x += (4 * stride);

            hz_out0 = FUNC1(src_hz0, src_hz0, mask0, mask1, mask2);
            hz_out1 = FUNC1(src_hz1, src_hz1, mask0, mask1, mask2);
            hz_out2 = FUNC1(src_hz2, src_hz2, mask0, mask1, mask2);
            hz_out3 = FUNC1(src_hz3, src_hz3, mask0, mask1, mask2);
            FUNC11(hz_out0, hz_out1, hz_out2, hz_out3, 5);
            FUNC10(hz_out0, hz_out1, hz_out2, hz_out3, 7);

            FUNC7(src_y, stride, src_vt5, src_vt6, src_vt7, src_vt8);
            src_y += (4 * stride);

            FUNC13(src_vt5, src_vt6, src_vt7, src_vt8);
            FUNC3(src_vt1, src_vt0, src_vt2, src_vt1, src_vt3, src_vt2,
                       src_vt4, src_vt3, src_vt10_r, src_vt21_r, src_vt32_r,
                       src_vt43_r);
            FUNC3(src_vt5, src_vt4, src_vt6, src_vt5, src_vt7, src_vt6,
                       src_vt8, src_vt7, src_vt54_r, src_vt65_r, src_vt76_r,
                       src_vt87_r);
            vt_out0 = FUNC0(src_vt10_r, src_vt32_r, src_vt54_r, filt0,
                                     filt1, filt2);
            vt_out1 = FUNC0(src_vt21_r, src_vt43_r, src_vt65_r, filt0,
                                     filt1, filt2);
            vt_out2 = FUNC0(src_vt32_r, src_vt54_r, src_vt76_r, filt0,
                                     filt1, filt2);
            vt_out3 = FUNC0(src_vt43_r, src_vt65_r, src_vt87_r, filt0,
                                     filt1, filt2);
            FUNC11(vt_out0, vt_out1, vt_out2, vt_out3, 5);
            FUNC10(vt_out0, vt_out1, vt_out2, vt_out3, 7);

            out0 = FUNC16((hz_out0 + vt_out0), 1);
            out1 = FUNC16((hz_out1 + vt_out1), 1);
            out2 = FUNC16((hz_out2 + vt_out2), 1);
            out3 = FUNC16((hz_out3 + vt_out3), 1);

            FUNC5(dst, stride, tp0, tp1, tp2, tp3);
            FUNC4(tp0, tp1, dst0);
            FUNC4(tp2, tp3, dst1);

            FUNC10(out0, out1, out2, out3, 7);
            tmp0 = FUNC9(out0, out1);
            tmp1 = FUNC9(out2, out3);
            FUNC2(tmp0, dst0, tmp1, dst1, dst0, dst1);
            FUNC12(dst0, dst1, 0, 1, 0, 1, dst, stride);
            dst += (4 * stride);

            src_vt0 = src_vt4;
            src_vt1 = src_vt5;
            src_vt2 = src_vt6;
            src_vt3 = src_vt7;
            src_vt4 = src_vt8;
        }

        src_x_tmp += 8;
        src_y_tmp += 8;
        dst_tmp += 8;
    }
}