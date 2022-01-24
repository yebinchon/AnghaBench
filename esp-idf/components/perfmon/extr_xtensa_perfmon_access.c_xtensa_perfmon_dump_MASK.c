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
typedef  int uint32_t ;
typedef  int /*<<< orphan*/  int32_t ;

/* Variables and functions */
 scalar_t__ ERI_PERFMON_INTPC ; 
 int ERI_PERFMON_MAX ; 
 scalar_t__ ERI_PERFMON_PGM ; 
 scalar_t__ ERI_PERFMON_PM0 ; 
 scalar_t__ ERI_PERFMON_PMCTRL0 ; 
 scalar_t__ ERI_PERFMON_PMSTAT0 ; 
 int FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (char*,int,int,...) ; 

void FUNC2(void)
{
    uint32_t pgm = FUNC0(ERI_PERFMON_PGM);
    uint32_t intpc = FUNC0(ERI_PERFMON_INTPC);
    FUNC1("perfmon: PGM=%08x, INTPC=%08x\n", pgm, intpc);

    for (int i = 0 ; i < ERI_PERFMON_MAX ; i++) {
        uint32_t pm = FUNC0(ERI_PERFMON_PM0 + i * sizeof(int32_t));
        uint32_t pmctrl = FUNC0(ERI_PERFMON_PMCTRL0 + i * sizeof(int32_t));
        uint32_t pmstat = FUNC0(ERI_PERFMON_PMSTAT0 + i * sizeof(int32_t));
        FUNC1("perfmon: pm%i=%08x, pmctrl%i=%08x, pmstat%i=%08x\n", i, pm, i, pmctrl, i, pmstat);
    }
}