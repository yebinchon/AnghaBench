#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_15__   TYPE_1__ ;

/* Type definitions */
typedef  int v8i16 ;
typedef  int /*<<< orphan*/  v4i32 ;
struct TYPE_15__ {int /*<<< orphan*/  member_0; } ;
typedef  TYPE_1__ v16u8 ;
typedef  scalar_t__ v16i8 ;
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int /*<<< orphan*/  uint64_t ;
typedef  int int32_t ;
typedef  int int16_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__,TYPE_1__,TYPE_1__,TYPE_1__,TYPE_1__,TYPE_1__,TYPE_1__,TYPE_1__,int,int,int,int) ; 
 int /*<<< orphan*/  FUNC1 (int,int,int,int,int,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/  const*) ; 
 TYPE_1__ FUNC3 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC4 (int,int,int,int,int,int) ; 
 int /*<<< orphan*/  FUNC5 (int,int,int,int,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__,int,TYPE_1__,int,TYPE_1__,int,TYPE_1__,int,int,int,int,int,int) ; 
 int /*<<< orphan*/  FUNC8 (int,int,int) ; 
 int /*<<< orphan*/  FUNC9 (scalar_t__,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *,int) ; 
 int FUNC10 (int) ; 
 scalar_t__ FUNC11 (scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC13 (scalar_t__,scalar_t__) ; 
 int* intra_pred_angle_low ; 

__attribute__((used)) static void FUNC14(const uint8_t *src_top,
                                                     const uint8_t *src_left,
                                                     uint8_t *dst,
                                                     int32_t stride,
                                                     int32_t mode)
{
    int16_t inv_angle[] = { -4096, -1638, -910, -630, -482, -390, -315 };
    uint8_t ref_array[3 * 32 + 4];
    uint8_t *ref_tmp = ref_array + 4;
    const uint8_t *ref;
    int32_t last, offset;
    int32_t h_cnt, idx0, fact_val0, idx1, fact_val1;
    int32_t idx2, fact_val2, idx3, fact_val3;
    int32_t angle, angle_loop, inv_angle_val;
    uint64_t tmp0;
    v16i8 dst_val0, dst_val1;
    v16u8 top0, top1, top2, top3;
    v16u8 zero = { 0 };
    v8i16 diff0, diff1, diff2, diff3, diff4, diff5, diff6, diff7;
    v8i16 fact0, fact1, fact2, fact3, fact4, fact5, fact6, fact7;

    angle = intra_pred_angle_low[mode - 2];
    last = angle >> 3;
    angle_loop = angle;

    ref = src_left - 1;
    if (last < -1) {
        inv_angle_val = inv_angle[mode - 11];

        tmp0 = FUNC2(ref);
        FUNC6(tmp0, ref_tmp);

        for (h_cnt = last; h_cnt <= -1; h_cnt++) {
            offset = -1 + ((h_cnt * inv_angle_val + 128) >> 8);
            ref_tmp[h_cnt] = src_top[offset];
        }

        ref = ref_tmp;
    }

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

    top0 = FUNC3(ref + idx0 + 1);
    top1 = FUNC3(ref + idx1 + 1);
    top2 = FUNC3(ref + idx2 + 1);
    top3 = FUNC3(ref + idx3 + 1);

    fact0 = FUNC10(fact_val0);
    fact1 = FUNC10(32 - fact_val0);
    fact2 = FUNC10(fact_val1);
    fact3 = FUNC10(32 - fact_val1);
    fact4 = FUNC10(fact_val2);
    fact5 = FUNC10(32 - fact_val2);
    fact6 = FUNC10(fact_val3);
    fact7 = FUNC10(32 - fact_val3);

    FUNC1(fact2, fact0, fact6, fact4, fact0, fact2);
    FUNC1(fact3, fact1, fact7, fact5, fact1, fact3);
    FUNC0(zero, top0, zero, top1, zero, top2, zero, top3,
               diff0, diff2, diff4, diff6);
    FUNC7(zero, diff0, zero, diff2, zero, diff4, zero, diff6, 2,
               diff1, diff3, diff5, diff7);
    FUNC1(diff2, diff0, diff6, diff4, diff0, diff2);
    FUNC1(diff3, diff1, diff7, diff5, diff1, diff3);
    FUNC4(diff1, fact0, diff3, fact2, diff1, diff3);

    diff1 += diff0 * fact1;
    diff3 += diff2 * fact3;

    FUNC8(diff1, diff3, 5);
    FUNC5(diff1, diff1, diff3, diff3, dst_val0, dst_val1);

    diff0 = (v8i16) FUNC11(dst_val1, dst_val0);
    diff1 = (v8i16) FUNC13(dst_val1, dst_val0);

    diff2 = (v8i16) FUNC12((v4i32) diff1, (v4i32) diff0);

    dst_val0 = FUNC11((v16i8) diff2, (v16i8) diff2);
    dst_val1 = FUNC13((v16i8) diff2, (v16i8) diff2);

    FUNC9(dst_val0, 0, 1, dst, stride);
    FUNC9(dst_val1, 0, 1, dst + 2 * stride, stride);
}