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
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/  const*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC3 (int,int,int,int,int,int,int,int,int,int,int,int) ; 
 int /*<<< orphan*/  FUNC4 (int,int,int,int,int,int,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int,int,int,int,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int,int) ; 
 int FUNC11 (int) ; 
 int* intra_pred_angle_up ; 

__attribute__((used)) static void FUNC12(const uint8_t *src_top,
                                                      const uint8_t *src_left,
                                                      uint8_t *dst,
                                                      int32_t stride,
                                                      int32_t mode)
{
    int16_t inv_angle[] = { -256, -315, -390, -482, -630, -910, -1638, -4096 };
    int32_t h_cnt, v_cnt, idx0, fact_val0, idx1, fact_val1;
    int32_t idx2, fact_val2, idx3, fact_val3;
    int32_t tmp0;
    int32_t angle, angle_loop, offset;
    int32_t inv_angle_val, inv_angle_val_loop;
    uint8_t ref_array[3 * 32 + 4];
    uint8_t *ref_tmp = ref_array + 16;
    const uint8_t *ref;
    const uint8_t *src_left_tmp = src_left - 1;
    int32_t last;
    v16u8 top0, top1, top2, top3, top4, top5, top6, top7;
    v16i8 dst0, dst1, dst2, dst3;
    v8i16 fact0, fact1, fact2, fact3, fact4, fact5, fact6, fact7;
    v8i16 diff0, diff1, diff2, diff3, diff4, diff5, diff6, diff7;
    v8i16 diff8, diff9, diff10, diff11, diff12, diff13, diff14, diff15;

    angle = intra_pred_angle_up[mode - 18];
    inv_angle_val = inv_angle[mode - 18];
    last = angle >> 1;
    angle_loop = angle;

    ref = src_top - 1;
    if (last < -1) {
        inv_angle_val_loop = inv_angle_val * last;

        top0 = FUNC0(ref);
        tmp0 = FUNC2(ref + 16);
        FUNC8(top0, ref_tmp);
        FUNC9(tmp0, ref_tmp + 16);

        for (h_cnt = last; h_cnt <= -1; h_cnt++) {
            offset = (inv_angle_val_loop + 128) >> 8;
            ref_tmp[h_cnt] = src_left_tmp[offset];
            inv_angle_val_loop += inv_angle_val;
        }
        ref = ref_tmp;
    }

    for (v_cnt = 4; v_cnt--;) {
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

        FUNC1(ref + idx0 + 1, 16, top0, top1);
        FUNC1(ref + idx1 + 1, 16, top2, top3);
        FUNC1(ref + idx2 + 1, 16, top4, top5);
        FUNC1(ref + idx3 + 1, 16, top6, top7);

        fact0 = FUNC11(fact_val0);
        fact1 = FUNC11(32 - fact_val0);
        fact2 = FUNC11(fact_val1);
        fact3 = FUNC11(32 - fact_val1);
        fact4 = FUNC11(fact_val2);
        fact5 = FUNC11(32 - fact_val2);
        fact6 = FUNC11(fact_val3);
        fact7 = FUNC11(32 - fact_val3);

        FUNC5(top1, top0, top3, top2, top5, top4, top7, top6, 1,
                   top1, top3, top5, top7);
        FUNC10(top0, diff0, diff1);
        FUNC10(top1, diff2, diff3);
        FUNC10(top2, diff4, diff5);
        FUNC10(top3, diff6, diff7);
        FUNC10(top4, diff8, diff9);
        FUNC10(top5, diff10, diff11);
        FUNC10(top6, diff12, diff13);
        FUNC10(top7, diff14, diff15);

        FUNC3(diff2, fact0, diff3, fact0, diff6, fact2, diff7, fact2,
             diff2, diff3, diff6, diff7);
        FUNC3(diff10, fact4, diff11, fact4, diff14, fact6, diff15, fact6,
             diff10, diff11, diff14, diff15);

        diff2 += diff0 * fact1;
        diff3 += diff1 * fact1;
        diff6 += diff4 * fact3;
        diff7 += diff5 * fact3;
        diff10 += diff8 * fact5;
        diff11 += diff9 * fact5;
        diff14 += diff12 * fact7;
        diff15 += diff13 * fact7;

        FUNC6(diff2, diff3, diff6, diff7, 5);
        FUNC6(diff10, diff11, diff14, diff15, 5);
        FUNC4(diff3, diff2, diff7, diff6, diff11, diff10, diff15, diff14,
                    dst0, dst1, dst2, dst3);
        FUNC7(dst0, dst1, dst2, dst3, dst, stride);
        dst += (4 * stride);
    }
}