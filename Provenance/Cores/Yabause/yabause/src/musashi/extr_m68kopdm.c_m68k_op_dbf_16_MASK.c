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
 int /*<<< orphan*/  CYC_DBCC_F_EXP ; 
 int /*<<< orphan*/  CYC_DBCC_F_NOEXP ; 
 int DY ; 
 int FUNC0 (int) ; 
 int FUNC1 (int) ; 
 int FUNC2 () ; 
 int REG_PC ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 () ; 

void FUNC6(void)
{
	uint* r_dst = &DY;
	uint res = FUNC0(*r_dst - 1);

	*r_dst = FUNC1(*r_dst) | res;
	if(res != 0xffff)
	{
		uint offset = FUNC2();
		REG_PC -= 2;
		FUNC5();			   /* auto-disable (see m68kcpu.h) */
		FUNC4(offset);
		FUNC3(CYC_DBCC_F_NOEXP);
		return;
	}
	REG_PC += 2;
	FUNC3(CYC_DBCC_F_EXP);
}