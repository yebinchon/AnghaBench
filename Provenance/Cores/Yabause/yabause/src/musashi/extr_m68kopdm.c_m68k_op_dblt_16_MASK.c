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
typedef  int uint ;

/* Variables and functions */
 scalar_t__ FUNC0 () ; 
 int /*<<< orphan*/  CYC_DBCC_F_EXP ; 
 int /*<<< orphan*/  CYC_DBCC_F_NOEXP ; 
 int DY ; 
 int FUNC1 (int) ; 
 int FUNC2 (int) ; 
 int FUNC3 () ; 
 int REG_PC ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 () ; 

void FUNC7(void)
{
	if(FUNC0())
	{
		uint* r_dst = &DY;
		uint res = FUNC1(*r_dst - 1);

		*r_dst = FUNC2(*r_dst) | res;
		if(res != 0xffff)
		{
			uint offset = FUNC3();
			REG_PC -= 2;
			FUNC6();			   /* auto-disable (see m68kcpu.h) */
			FUNC5(offset);
			FUNC4(CYC_DBCC_F_NOEXP);
			return;
		}
		REG_PC += 2;
		FUNC4(CYC_DBCC_F_EXP);
		return;
	}
	REG_PC += 2;
}