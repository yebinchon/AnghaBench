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
struct kpcdata {int /*<<< orphan*/  counterc; int /*<<< orphan*/  running; int /*<<< orphan*/  configv; scalar_t__ configc; int /*<<< orphan*/  counterv; int /*<<< orphan*/  curcpu; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,int,...) ; 
 int DBG_FUNC_END ; 
 int DBG_FUNC_START ; 
 int PERF_KPC_CPU_SAMPLE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 () ; 

void
FUNC5(struct kpcdata *kpcd, int sample_config)
{
	FUNC0(PERF_KPC_CPU_SAMPLE | DBG_FUNC_START, sample_config);

	kpcd->running  = FUNC4();
	kpcd->counterc = FUNC3(0, kpcd->running,
	                                      &kpcd->curcpu,
	                                      kpcd->counterv);
	if (!sample_config) {
		kpcd->configc = 0;
	} else {
		kpcd->configc = FUNC2(kpcd->running);
		FUNC1(kpcd->running, kpcd->configv);
	}

	FUNC0(PERF_KPC_CPU_SAMPLE | DBG_FUNC_END, kpcd->running, kpcd->counterc);
}