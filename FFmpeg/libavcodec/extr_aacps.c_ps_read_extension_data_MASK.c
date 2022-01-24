#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int num_env; int /*<<< orphan*/  opd_par; int /*<<< orphan*/  ipd_par; void* enable_ipdopd; } ;
typedef  TYPE_1__ PSContext ;
typedef  int /*<<< orphan*/  GetBitContext ;

/* Variables and functions */
 void* FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  huff_ipd_df ; 
 int /*<<< orphan*/  huff_ipd_dt ; 
 int /*<<< orphan*/  huff_opd_df ; 
 int /*<<< orphan*/  huff_opd_dt ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC4(GetBitContext *gb, PSContext *ps, int ps_extension_id)
{
    int e;
    int count = FUNC1(gb);

    if (ps_extension_id)
        return 0;

    ps->enable_ipdopd = FUNC0(gb);
    if (ps->enable_ipdopd) {
        for (e = 0; e < ps->num_env; e++) {
            int dt = FUNC0(gb);
            FUNC2(NULL, gb, ps, ps->ipd_par, dt ? huff_ipd_dt : huff_ipd_df, e, dt);
            dt = FUNC0(gb);
            FUNC2(NULL, gb, ps, ps->opd_par, dt ? huff_opd_dt : huff_opd_df, e, dt);
        }
    }
    FUNC3(gb);      //reserved_ps
    return FUNC1(gb) - count;
}