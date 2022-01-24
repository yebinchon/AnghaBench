#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {scalar_t__ changed; } ;
struct TYPE_3__ {int EmuOpt; } ;

/* Variables and functions */
 int EOPT_EN_SRAM ; 
 int EOPT_NO_AUTOSVCFG ; 
 int /*<<< orphan*/  FUNC0 () ; 
 TYPE_2__ SRam ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 TYPE_1__ currentConfig ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 () ; 

void FUNC7(void)
{
	// save SRAM
	if ((currentConfig.EmuOpt & EOPT_EN_SRAM) && SRam.changed) {
		FUNC2(0, 1);
		SRam.changed = 0;
	}

	if (!(currentConfig.EmuOpt & EOPT_NO_AUTOSVCFG)) {
		char cfg[512];
		FUNC3(cfg);
		FUNC1(cfg);
#ifdef __GP2X__
		sync();
#endif
	}

	FUNC4();

	FUNC0();
	FUNC5();
}