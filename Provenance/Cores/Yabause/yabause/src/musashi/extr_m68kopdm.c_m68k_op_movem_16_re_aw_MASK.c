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
 int CYC_MOVEM_W ; 
 int FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 () ; 
 int /*<<< orphan*/ * REG_DA ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int,int /*<<< orphan*/ ) ; 

void FUNC5(void)
{
	uint i = 0;
	uint register_list = FUNC2();
	uint ea = FUNC0();
	uint count = 0;

	for(; i < 16; i++)
		if(register_list & (1 << i))
		{
			FUNC4(ea, FUNC1(REG_DA[i]));
			ea += 2;
			count++;
		}

	FUNC3(count<<CYC_MOVEM_W);
}