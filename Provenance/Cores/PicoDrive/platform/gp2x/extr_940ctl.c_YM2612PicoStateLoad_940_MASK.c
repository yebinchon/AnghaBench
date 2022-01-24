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
typedef  int /*<<< orphan*/  UINT8 ;
typedef  int /*<<< orphan*/  INT32 ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  JOB940_PICOSTATELOAD ; 
 int /*<<< orphan*/ * FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  addr_A1 ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ writebuff_ptr ; 

void FUNC4(void)
{
	UINT8 *REGS = FUNC1();

	/* make sure JOB940_PICOSTATELOAD gets done before next JOB940_YM2612UPDATEONE */
	FUNC2(JOB940_PICOSTATELOAD);
	if (FUNC0(JOB940_PICOSTATELOAD)) FUNC3(JOB940_PICOSTATELOAD);

	writebuff_ptr = 0;
	addr_A1 = *(INT32 *) (REGS + 0x200);
}