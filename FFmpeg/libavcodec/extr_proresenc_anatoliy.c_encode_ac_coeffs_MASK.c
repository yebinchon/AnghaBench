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
typedef  int uint8_t ;
typedef  int /*<<< orphan*/  int16_t ;
typedef  int /*<<< orphan*/  PutBitContext ;

/* Variables and functions */
 size_t FUNC0 (int,int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int FUNC2 (int*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int FUNC4 (int) ; 
 int /*<<< orphan*/ * lev_to_cb ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * run_to_cb ; 

__attribute__((used)) static void FUNC6(PutBitContext *pb,
        int16_t *in, int blocks_per_slice, int *qmat, const uint8_t ff_prores_scan[64])
{
    int prev_run = 4;
    int prev_level = 2;

    int run = 0, level, code, i, j;
    for (i = 1; i < 64; i++) {
        int indp = ff_prores_scan[i];
        for (j = 0; j < blocks_per_slice; j++) {
            int val = FUNC2(qmat, indp, in[(j << 6) + indp]);
            if (val) {
                FUNC3(pb, run, run_to_cb[FUNC0(prev_run, 15)]);

                prev_run   = run;
                run        = 0;
                level      = FUNC4(val);
                code       = level - 1;

                FUNC3(pb, code, lev_to_cb[FUNC0(prev_level, 9)]);

                prev_level = level;

                FUNC5(pb, 1, FUNC1(val));
            } else {
                ++run;
            }
        }
    }
}