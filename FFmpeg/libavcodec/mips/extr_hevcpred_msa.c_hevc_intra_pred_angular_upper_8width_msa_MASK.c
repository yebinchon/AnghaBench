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
typedef  int /*<<< orphan*/  v16u8 ;
typedef  int /*<<< orphan*/  v16i8 ;
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int int32_t ;
typedef  int int16_t ;
typedef  int angle_loop ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/  const*) ; 
 int FUNC1 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC2 (int,int,int,int,int,int,int,int,int,int,int,int) ; 
 int /*<<< orphan*/  FUNC3 (int,int,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int,int,int,int,int,int,int,int,int,int,int,int,int) ; 
 int /*<<< orphan*/  FUNC5 (int,int,int,int,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC7 (int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int,int) ; 
 int FUNC9 (int) ; 
 int* intra_pred_angle_up ; 

__attribute__((used)) static void FUNC10(const uint8_t *src_top,
                                                     const uint8_t *src_left,
                                                     uint8_t *dst,
                                                     int32_t stride,
                                                     int32_t mode)
{
    int16_t inv_angle[] = { -256, -315, -390, -482, -630, -910, -1638, -4096 };
    uint8_t ref_array[3 * 32 + 4];
    uint8_t *ref_tmp = ref_array + 8;
    const uint8_t *ref;
    const uint8_t *src_left_tmp = src_left - 1;
    int32_t last, offset;
    int32_t h_cnt, v_cnt, idx0, fact_val0, idx1, fact_val1;
    int32_t idx2, fact_val2, idx3, fact_val3;
    int32_t angle, angle_loop;
    int32_t inv_angle_val, inv_angle_val_loop;
    int32_t tmp0, tmp1, tmp2;
    v16i8 top0, top1, top2, top3;
    v16u8 dst_val0, dst_val1;
    v8i16 fact0, fact1, fact2, fact3, fact4, fact5, fact6, fact7;
    v8i16 diff0, diff1, diff2, diff3, diff4, diff5, diff6, diff7;

    angle = intra_pred_angle_up[mode - 18];
    inv_angle_val = inv_angle[mode - 18];
    last = (angle) >> 2;
    angle_loop = angle;

    ref = src_top - 1;
    if (last < -1) {
        inv_angle_val_loop = inv_angle_val * last;

        tmp0 = FUNC1(ref);
        tmp1 = FUNC1(ref + 4);
        tmp2 = FUNC1(ref + 8);
        FUNC7(tmp0, ref_tmp);
        FUNC7(tmp1, ref_tmp + 4);
        FUNC7(tmp2, ref_tmp + 8);

        for (h_cnt = last; h_cnt <= -1; h_cnt++) {
            offset = (inv_angle_val_loop + 128) >> 8;
            ref_tmp[h_cnt] = src_left_tmp[offset];
            inv_angle_val_loop += inv_angle_val;
        }
        ref = ref_tmp;
    }

    for (v_cnt = 0; v_cnt < 2; v_cnt++) {
        idx0 = (angle_loop) >> 5;
        fact_val0 = (angle_loop) & 31;
        angle_loop += angle;

        idx1 = (angle_loop) >> 5;
        fact_val1 = (angle_loop) & 31;
        angle_loop += angle;

        idx2 = (angle_loop) >> 5;
        fact_val2 = (angle_loop) & 31;
        angle_loop += angle;

        idx3 = (angle_loop) >> 5;
        fact_val3 = (angle_loop) & 31;
        angle_loop += angle;

        top0 = FUNC0(ref + idx0 + 1);
        top1 = FUNC0(ref + idx1 + 1);
        top2 = FUNC0(ref + idx2 + 1);
        top3 = FUNC0(ref + idx3 + 1);

        fact0 = FUNC9(fact_val0);
        fact1 = FUNC9(32 - fact_val0);
        fact2 = FUNC9(fact_val1);
        fact3 = FUNC9(32 - fact_val1);
        fact4 = FUNC9(fact_val2);
        fact5 = FUNC9(32 - fact_val2);
        fact6 = FUNC9(fact_val3);
        fact7 = FUNC9(32 - fact_val3);

        FUNC8(top0, diff0, diff1);
        FUNC8(top1, diff2, diff3);
        FUNC8(top2, diff4, diff5);
        FUNC8(top3, diff6, diff7);

        FUNC4(diff1, diff0, diff3, diff2, diff5, diff4, diff7, diff6, 2,
                   diff1, diff3, diff5, diff7);
        FUNC2(diff1, fact0, diff3, fact2, diff5, fact4, diff7, fact6,
             diff1, diff3, diff5, diff7);

        diff1 += diff0 * fact1;
        diff3 += diff2 * fact3;
        diff5 += diff4 * fact5;
        diff7 += diff6 * fact7;

        FUNC5(diff1, diff3, diff5, diff7, 5);
        FUNC3(diff3, diff1, diff7, diff5, dst_val0, dst_val1);
        FUNC6(dst_val0, dst_val1, 0, 1, 0, 1, dst, stride);
        dst += (4 * stride);
    }
}