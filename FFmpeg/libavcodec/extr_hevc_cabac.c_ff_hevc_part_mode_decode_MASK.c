#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_5__ ;
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {TYPE_2__* sps; } ;
struct TYPE_11__ {TYPE_4__* HEVClc; TYPE_3__ ps; } ;
struct TYPE_7__ {scalar_t__ pred_mode; } ;
struct TYPE_10__ {int /*<<< orphan*/  cc; TYPE_1__ cu; } ;
struct TYPE_8__ {int log2_min_cb_size; int /*<<< orphan*/  amp_enabled_flag; } ;
typedef  TYPE_5__ HEVCContext ;

/* Variables and functions */
 scalar_t__ FUNC0 (scalar_t__) ; 
 scalar_t__ MODE_INTRA ; 
 int PART_2Nx2N ; 
 int PART_2NxN ; 
 int PART_2NxnD ; 
 int PART_2NxnU ; 
 size_t PART_MODE ; 
 int PART_Nx2N ; 
 int PART_NxN ; 
 int PART_nLx2N ; 
 int PART_nRx2N ; 
 scalar_t__* elem_offset ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 

int FUNC2(HEVCContext *s, int log2_cb_size)
{
    if (FUNC0(elem_offset[PART_MODE])) // 1
        return PART_2Nx2N;
    if (log2_cb_size == s->ps.sps->log2_min_cb_size) {
        if (s->HEVClc->cu.pred_mode == MODE_INTRA) // 0
            return PART_NxN;
        if (FUNC0(elem_offset[PART_MODE] + 1)) // 01
            return PART_2NxN;
        if (log2_cb_size == 3) // 00
            return PART_Nx2N;
        if (FUNC0(elem_offset[PART_MODE] + 2)) // 001
            return PART_Nx2N;
        return PART_NxN; // 000
    }

    if (!s->ps.sps->amp_enabled_flag) {
        if (FUNC0(elem_offset[PART_MODE] + 1)) // 01
            return PART_2NxN;
        return PART_Nx2N;
    }

    if (FUNC0(elem_offset[PART_MODE] + 1)) { // 01X, 01XX
        if (FUNC0(elem_offset[PART_MODE] + 3)) // 011
            return PART_2NxN;
        if (FUNC1(&s->HEVClc->cc)) // 0101
            return PART_2NxnD;
        return PART_2NxnU; // 0100
    }

    if (FUNC0(elem_offset[PART_MODE] + 3)) // 001
        return PART_Nx2N;
    if (FUNC1(&s->HEVClc->cc)) // 0001
        return PART_nRx2N;
    return PART_nLx2N;  // 0000
}