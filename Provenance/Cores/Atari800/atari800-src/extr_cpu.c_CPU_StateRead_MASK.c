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
typedef  int /*<<< orphan*/  UBYTE ;

/* Variables and functions */
 int /*<<< orphan*/  CPU_IRQ ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  CPU_regA ; 
 int /*<<< orphan*/  CPU_regP ; 
 int /*<<< orphan*/  CPU_regPC ; 
 int /*<<< orphan*/  CPU_regS ; 
 int /*<<< orphan*/  CPU_regX ; 
 int /*<<< orphan*/  CPU_regY ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int) ; 

void FUNC4(UBYTE SaveVerbose, UBYTE StateVersion)
{
	FUNC2(&CPU_regA, 1);

	FUNC2(&CPU_regP, 1);
	FUNC0();	/* Make sure flags are all updated */

	FUNC2(&CPU_regS, 1);
	FUNC2(&CPU_regX, 1);
	FUNC2(&CPU_regY, 1);
	FUNC2(&CPU_IRQ, 1);

	FUNC1(SaveVerbose, StateVersion);

	FUNC3(&CPU_regPC, 1);
}