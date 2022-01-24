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
typedef  int int32_t ;
typedef  int int16_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC1 (int,int,int,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/  const*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC6 (int,int,int,int,int,int,int,int,int,int,int,int) ; 
 int /*<<< orphan*/  FUNC7 (int,int,int,int,int,int,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int,int,int,int,int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int,int,int /*<<< orphan*/ ,int,int,int,int /*<<< orphan*/ ,int,int,int,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC12 (int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,int,int) ; 
 int FUNC14 (int) ; 
 int* intra_pred_angle_low ; 

__attribute__((used)) static void FUNC15(const uint8_t *src_top,
                                                      const uint8_t *src_left,
                                                      uint8_t *dst,
                                                      int32_t stride,
                                                      int32_t mode)
{
    int16_t inv_angle[] = { -4096, -1638, -910, -630, -482, -390, -315 };
    int32_t h_cnt, v_cnt, idx0, fact_val0, idx1, fact_val1;
    int32_t idx2, fact_val2, idx3, fact_val3, tmp0;
    v16i8 top0, top1, dst_val0, top2, top3, dst_val1;
    v16i8 top4, top5, dst_val2, top6, top7, dst_val3;
    v8i16 fact0, fact1, fact2, fact3, fact4, fact5, fact6, fact7;
    v8i16 diff0, diff1, diff2, diff3, diff4, diff5, diff6, diff7;
    v8i16 diff8, diff9, diff10, diff11, diff12, diff13, diff14, diff15;
    int32_t angle, angle_loop, inv_angle_val, offset;
    uint8_t ref_array[3 * 32 + 4];
    uint8_t *ref_tmp = ref_array + 16;
    const uint8_t *ref, *src_top_tmp = src_top - 1;
    uint8_t *dst_org;
    int32_t last;

    angle = intra_pred_angle_low[mode - 2];
    last = (angle) >> 1;
    angle_loop = angle;

    ref = src_left - 1;
    if (last < -1) {
        inv_angle_val = inv_angle[mode - 11];

        top0 = FUNC3(ref);
        tmp0 = FUNC5(ref + 16);
        FUNC10(top0, ref_tmp);
        FUNC12(tmp0, ref_tmp + 16);

        for (h_cnt = last; h_cnt <= -1; h_cnt++) {
            offset = (h_cnt * inv_angle_val + 128) >> 8;
            ref_tmp[h_cnt] = src_top_tmp[offset];
        }

        ref = ref_tmp;
    }

    for (v_cnt = 0; v_cnt < 4; v_cnt++) {
        dst_org = dst;

        idx0 = angle_loop >> 5;
        fact_val0 = angle_loop & 31;
        angle_loop += angle;

        idx1 = angle_loop >> 5;
        fact_val1 = angle_loop & 31;
        angle_loop += angle;

        idx2 = angle_loop >> 5;
        fact_val2 = angle_loop & 31;
        angle_loop += angle;

        idx3 = angle_loop >> 5;
        fact_val3 = angle_loop & 31;
        angle_loop += angle;

        FUNC4(ref + idx0 + 1, 16, top0, top1);
        FUNC4(ref + idx1 + 1, 16, top2, top3);
        FUNC4(ref + idx2 + 1, 16, top4, top5);
        FUNC4(ref + idx3 + 1, 16, top6, top7);

        fact0 = FUNC14(fact_val0);
        fact1 = FUNC14(32 - fact_val0);
        fact2 = FUNC14(fact_val1);
        fact3 = FUNC14(32 - fact_val1);
        fact4 = FUNC14(fact_val2);
        fact5 = FUNC14(32 - fact_val2);
        fact6 = FUNC14(fact_val3);
        fact7 = FUNC14(32 - fact_val3);

        FUNC8(top1, top0, top3, top2, top5, top4, top7, top6, 1,
                   top1, top3, top5, top7);

        FUNC13(top0, diff0, diff1);
        FUNC13(top1, diff2, diff3);
        FUNC13(top2, diff4, diff5);
        FUNC13(top3, diff6, diff7);
        FUNC13(top4, diff8, diff9);
        FUNC13(top5, diff10, diff11);
        FUNC13(top6, diff12, diff13);
        FUNC13(top7, diff14, diff15);

        FUNC6(diff2, fact0, diff3, fact0, diff6, fact2, diff7, fact2,
             diff2, diff3, diff6, diff7);
        FUNC6(diff10, fact4, diff11, fact4, diff14, fact6, diff15, fact6,
             diff10, diff11, diff14, diff15);

        diff2 += diff0 * fact1;
        diff3 += diff1 * fact1;
        diff6 += diff4 * fact3;
        diff7 += diff5 * fact3;
        diff10 += diff8 * fact5;
        diff11 += diff9 * fact5;
        diff14 += diff12 * fact7;
        diff15 += diff13 * fact7;

        FUNC9(diff2, diff3, diff6, diff7, 5);
        FUNC9(diff10, diff11, diff14, diff15, 5);
        FUNC7(diff3, diff2, diff7, diff6, diff11, diff10, diff15, diff14,
                    dst_val0, dst_val1, dst_val2, dst_val3);
        FUNC2(dst_val1, dst_val0, dst_val3, dst_val2, diff0, diff1);
        FUNC0(dst_val1, dst_val0, dst_val3, dst_val2, diff2, diff3);
        FUNC1(diff1, diff0, diff4, diff5);
        FUNC1(diff3, diff2, diff6, diff7);
        FUNC11(diff4, diff5, 0, 1, 2, 3, 0, 1, 2, 3, dst_org, stride);
        dst_org += (8 * stride);
        FUNC11(diff6, diff7, 0, 1, 2, 3, 0, 1, 2, 3, dst_org, stride);
        dst += 4;
    }
}