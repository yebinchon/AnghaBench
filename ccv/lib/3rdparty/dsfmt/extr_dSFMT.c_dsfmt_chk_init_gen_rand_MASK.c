#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int uint32_t ;
struct TYPE_7__ {int /*<<< orphan*/  idx; TYPE_1__* status; } ;
typedef  TYPE_2__ dsfmt_t ;
struct TYPE_6__ {int* u32; } ;

/* Variables and functions */
 int DSFMT_N ; 
 int /*<<< orphan*/  DSFMT_N64 ; 
 int dsfmt_mexp ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 size_t FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*) ; 
 int /*<<< orphan*/  stderr ; 

void FUNC5(dsfmt_t *dsfmt, uint32_t seed, int mexp) {
    int i;
    uint32_t *psfmt;

    /* make sure caller program is compiled with the same MEXP */
    if (mexp != dsfmt_mexp) {
	FUNC1(stderr, "DSFMT_MEXP doesn't match with dSFMT.c\n");
	FUNC0(1);
    }
    psfmt = &dsfmt->status[0].u32[0];
    psfmt[FUNC2(0)] = seed;
    for (i = 1; i < (DSFMT_N + 1) * 4; i++) {
        psfmt[FUNC2(i)] = 1812433253UL
	    * (psfmt[FUNC2(i - 1)] ^ (psfmt[FUNC2(i - 1)] >> 30)) + i;
    }
    FUNC3(dsfmt);
    FUNC4(dsfmt);
    dsfmt->idx = DSFMT_N64;
}