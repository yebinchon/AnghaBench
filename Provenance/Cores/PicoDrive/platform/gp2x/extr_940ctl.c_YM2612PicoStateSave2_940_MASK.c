#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  UINT8 ;
typedef  int UINT32 ;
struct TYPE_2__ {scalar_t__ writebuff0; } ;
typedef  int INT32 ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  JOB940_PICOSTATESAVE2 ; 
 int /*<<< orphan*/ * FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 TYPE_1__* shared_ctl ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 

void FUNC6(int tat, int tbt)
{
	UINT8 *ym_remote_regs, *ym_local_regs;
	FUNC2(JOB940_PICOSTATESAVE2);
	if (FUNC0(JOB940_PICOSTATESAVE2)) FUNC5(JOB940_PICOSTATESAVE2);

	ym_remote_regs = (UINT8 *) shared_ctl->writebuff0;
	ym_local_regs  = FUNC1();
	if (*(UINT32 *)(ym_remote_regs + 0x100) != 0x41534d59) {
		FUNC4("code940 didn't return valid save data\n");
		return;
	}

	/* copy addin data only */
	FUNC3(ym_local_regs,         ym_remote_regs,         0x20);
	FUNC3(ym_local_regs + 0x100, ym_remote_regs + 0x100, 0x30);
	FUNC3(ym_local_regs + 0x0b8, ym_remote_regs + 0x0b8, 0x48);
	FUNC3(ym_local_regs + 0x1b8, ym_remote_regs + 0x1b8, 0x48);
	*(INT32 *)(ym_local_regs + 0x108) = tat;
	*(INT32 *)(ym_local_regs + 0x10c) = tbt;
}