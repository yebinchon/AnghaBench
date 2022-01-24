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
typedef  scalar_t__ sint ;

/* Variables and functions */
 int /*<<< orphan*/  CFLAG_CLEAR ; 
 int /*<<< orphan*/  CPU_TYPE ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  DX ; 
 int /*<<< orphan*/  DY ; 
 int /*<<< orphan*/  EXCEPTION_CHK ; 
 int /*<<< orphan*/  FLAG_C ; 
 int FLAG_N ; 
 int /*<<< orphan*/  FLAG_V ; 
 int /*<<< orphan*/  FLAG_Z ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  VFLAG_CLEAR ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

void FUNC5(void)
{
	if(FUNC0(CPU_TYPE))
	{
		sint src = FUNC1(DX);
		sint bound = FUNC1(DY);

		FLAG_Z = FUNC2(src); /* Undocumented */
		FLAG_V = VFLAG_CLEAR;   /* Undocumented */
		FLAG_C = CFLAG_CLEAR;   /* Undocumented */

		if(src >= 0 && src <= bound)
		{
			return;
		}
		FLAG_N = (src < 0)<<7;
		FUNC4(EXCEPTION_CHK);
		return;
	}
	FUNC3();
}