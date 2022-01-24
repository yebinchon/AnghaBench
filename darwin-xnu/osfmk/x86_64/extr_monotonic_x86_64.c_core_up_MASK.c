#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct mt_cpu {int /*<<< orphan*/ * mtc_snaps; } ;
struct TYPE_3__ {struct mt_cpu cpu_monotonic; } ;
typedef  TYPE_1__ cpu_data_t ;

/* Variables and functions */
 scalar_t__ FALSE ; 
 int /*<<< orphan*/  FIXED_CTR_CTRL ; 
 int FIXED_CTR_CTRL_ENABLE ; 
 int FIXED_CTR_CTRL_INIT ; 
 int /*<<< orphan*/  GLOBAL_CTRL ; 
 int GLOBAL_CTRL_FIXED_EN ; 
 int MT_CORE_NFIXED ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  mt_core_supported ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void
FUNC4(cpu_data_t *cpu)
{
	struct mt_cpu *mtc;

	if (!mt_core_supported) {
		return;
	}

	FUNC0(FUNC1() == FALSE);

	mtc = &cpu->cpu_monotonic;

	for (int i = 0; i < MT_CORE_NFIXED; i++) {
		FUNC2(i, mtc->mtc_snaps[i]);
	}
	FUNC3(FIXED_CTR_CTRL, FIXED_CTR_CTRL_INIT | FIXED_CTR_CTRL_ENABLE);
	FUNC3(GLOBAL_CTRL, GLOBAL_CTRL_FIXED_EN);
}