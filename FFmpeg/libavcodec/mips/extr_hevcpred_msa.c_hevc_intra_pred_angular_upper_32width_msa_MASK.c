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
typedef  int uint8_t ;
typedef  int int32_t ;
typedef  int int16_t ;
typedef  int angle_loop ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int const*) ; 
 int /*<<< orphan*/  FUNC1 (int const*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int,int,int,int,int,int,int,int,int,int,int,int) ; 
 int /*<<< orphan*/  FUNC3 (int,int,int,int,int,int,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int,int,int,int,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*,int) ; 
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
    uint8_t *ref_tmp;
    const uint8_t *ref;
    const uint8_t *src_left_tmp = src_left - 1;
    int32_t h_cnt, v_cnt, idx0, fact_val0, idx1, fact_val1;
    int32_t tmp0, tmp1, tmp2, tmp3;
    int32_t angle, angle_loop;
    int32_t inv_angle_val, inv_angle_val_loop;
    int32_t last, offset;
    v16u8 top0, top1, top2, top3, top4, top5, top6, top7;
    v16i8 dst0, dst1, dst2, dst3;
    v8i16 fact0, fact1, fact2, fact3;
    v8i16 diff0, diff1, diff2, diff3, diff4, diff5, diff6, diff7;
    v8i16 diff8, diff9, diff10, diff11, diff12, diff13, diff14, diff15;

    ref_tmp = ref_array + 32;

    angle = intra_pred_angle_up[mode - 18];
    inv_angle_val = inv_angle[mode - 18];
    last = angle;
    angle_loop = angle;

    ref = src_top - 1;
    if (last < -1) {
        inv_angle_val_loop = inv_angle_val * last;
        FUNC1(ref, 16, top0, top1);
        tmp0 = ref[32];
        tmp1 = ref[33];
        tmp2 = ref[34];
        tmp3 = ref[35];

        FUNC7(top0, top1, ref_tmp, 16);
        ref_tmp[32] = tmp0;
        ref_tmp[33] = tmp1;
        ref_tmp[34] = tmp2;
        ref_tmp[35] = tmp3;

        for (h_cnt = last; h_cnt <= -1; h_cnt++) {
            offset = (inv_angle_val_loop + 128) >> 8;
            ref_tmp[h_cnt] = src_left_tmp[offset];
            inv_angle_val_loop += inv_angle_val;
        }

        ref = ref_tmp;
    }

    for (v_cnt = 16; v_cnt--;) {
        idx0 = (angle_loop) >> 5;
        fact_val0 = (angle_loop) & 31;
        angle_loop += angle;

        idx1 = (angle_loop) >> 5;
        fact_val1 = (angle_loop) & 31;
        angle_loop += angle;

        top0 = FUNC0(ref + idx0 + 1);
        top4 = FUNC0(ref + idx1 + 1);
        top1 = FUNC0(ref + idx0 + 17);
        top5 = FUNC0(ref + idx1 + 17);
        top3 = FUNC0(ref + idx0 + 33);
        top7 = FUNC0(ref + idx1 + 33);

        fact0 = FUNC9(fact_val0);
        fact1 = FUNC9(32 - fact_val0);
        fact2 = FUNC9(fact_val1);
        fact3 = FUNC9(32 - fact_val1);

        top2 = top1;
        top6 = top5;

        FUNC4(top1, top0, top3, top2, top5, top4, top7, top6, 1,
                   top1, top3, top5, top7);
        FUNC8(top0, diff0, diff1);
        FUNC8(top1, diff2, diff3);
        FUNC8(top2, diff4, diff5);
        FUNC8(top3, diff6, diff7);
        FUNC8(top4, diff8, diff9);
        FUNC8(top5, diff10, diff11);
        FUNC8(top6, diff12, diff13);
        FUNC8(top7, diff14, diff15);

        FUNC2(diff2, fact0, diff3, fact0, diff6, fact0, diff7, fact0,
             diff2, diff3, diff6, diff7);
        FUNC2(diff10, fact2, diff11, fact2, diff14, fact2, diff15, fact2,
             diff10, diff11, diff14, diff15);

        diff2 += diff0 * fact1;
        diff3 += diff1 * fact1;
        diff6 += diff4 * fact1;
        diff7 += diff5 * fact1;
        diff10 += diff8 * fact3;
        diff11 += diff9 * fact3;
        diff14 += diff12 * fact3;
        diff15 += diff13 * fact3;

        FUNC5(diff2, diff3, diff6, diff7, 5);
        FUNC5(diff10, diff11, diff14, diff15, 5);
        FUNC3(diff3, diff2, diff7, diff6, diff11, diff10, diff15, diff14,
                    dst0, dst1, dst2, dst3);

        FUNC6(dst0, dst1, dst, 16);
        dst += stride;
        FUNC6(dst2, dst3, dst, 16);
        dst += stride;
    }
}