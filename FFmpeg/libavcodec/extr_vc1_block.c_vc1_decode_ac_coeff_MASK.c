#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_4__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int esc3_level_length; int esc3_run_length; int /*<<< orphan*/  gb; } ;
struct TYPE_6__ {int pq; TYPE_1__ s; scalar_t__ dquantfrm; } ;
typedef  TYPE_2__ VC1Context ;
struct TYPE_7__ {int /*<<< orphan*/  table; } ;
typedef  int /*<<< orphan*/  GetBitContext ;

/* Variables and functions */
 int /*<<< orphan*/  AC_VLC_BITS ; 
 int AVERROR_INVALIDDATA ; 
 int FUNC0 (int /*<<< orphan*/ *) ; 
 TYPE_4__* ff_vc1_ac_coeff_table ; 
 int* ff_vc1_ac_sizes ; 
 int FUNC1 (int /*<<< orphan*/ *,int) ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (int /*<<< orphan*/ *,int,int) ; 
 int FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 scalar_t__** vc1_delta_level_table ; 
 scalar_t__** vc1_delta_run_table ; 
 int*** vc1_index_decode_table ; 
 int* vc1_last_decode_table ; 
 scalar_t__** vc1_last_delta_level_table ; 
 scalar_t__** vc1_last_delta_run_table ; 

__attribute__((used)) static int FUNC6(VC1Context *v, int *last, int *skip,
                                int *value, int codingset)
{
    GetBitContext *gb = &v->s.gb;
    int index, run, level, lst, sign;

    index = FUNC5(gb, ff_vc1_ac_coeff_table[codingset].table, AC_VLC_BITS, 3);
    if (index < 0)
        return index;
    if (index != ff_vc1_ac_sizes[codingset] - 1) {
        run   = vc1_index_decode_table[codingset][index][0];
        level = vc1_index_decode_table[codingset][index][1];
        lst   = index >= vc1_last_decode_table[codingset] || FUNC3(gb) < 0;
        sign  = FUNC2(gb);
    } else {
        int escape = FUNC0(gb);
        if (escape != 2) {
            index = FUNC5(gb, ff_vc1_ac_coeff_table[codingset].table, AC_VLC_BITS, 3);
            if (index >= ff_vc1_ac_sizes[codingset] - 1U)
                return AVERROR_INVALIDDATA;
            run   = vc1_index_decode_table[codingset][index][0];
            level = vc1_index_decode_table[codingset][index][1];
            lst   = index >= vc1_last_decode_table[codingset];
            if (escape == 0) {
                if (lst)
                    level += vc1_last_delta_level_table[codingset][run];
                else
                    level += vc1_delta_level_table[codingset][run];
            } else {
                if (lst)
                    run += vc1_last_delta_run_table[codingset][level] + 1;
                else
                    run += vc1_delta_run_table[codingset][level] + 1;
            }
            sign = FUNC2(gb);
        } else {
            lst = FUNC2(gb);
            if (v->s.esc3_level_length == 0) {
                if (v->pq < 8 || v->dquantfrm) { // table 59
                    v->s.esc3_level_length = FUNC1(gb, 3);
                    if (!v->s.esc3_level_length)
                        v->s.esc3_level_length = FUNC1(gb, 2) + 8;
                } else { // table 60
                    v->s.esc3_level_length = FUNC4(gb, 1, 6) + 2;
                }
                v->s.esc3_run_length = 3 + FUNC1(gb, 2);
            }
            run   = FUNC1(gb, v->s.esc3_run_length);
            sign  = FUNC2(gb);
            level = FUNC1(gb, v->s.esc3_level_length);
        }
    }

    *last  = lst;
    *skip  = run;
    *value = (level ^ -sign) + sign;

    return 0;
}