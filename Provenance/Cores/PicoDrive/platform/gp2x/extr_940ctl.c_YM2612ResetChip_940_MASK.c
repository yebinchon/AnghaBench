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

/* Variables and functions */
 int /*<<< orphan*/  JOB940_YM2612RESETCHIP ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/ * shared_data ; 

void FUNC4(void)
{
	//printf("YM2612ResetChip_940()\n");
	if (shared_data == NULL) {
		FUNC3("YM2612ResetChip_940: reset before init?\n");
		return;
	}

	FUNC0();
	FUNC2();

	FUNC1(JOB940_YM2612RESETCHIP);
}