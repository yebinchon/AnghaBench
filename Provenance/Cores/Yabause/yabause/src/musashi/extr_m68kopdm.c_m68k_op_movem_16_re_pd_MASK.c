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
 int AY ; 
 int CYC_MOVEM_W ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 () ; 
 int /*<<< orphan*/ * REG_DA ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int,int /*<<< orphan*/ ) ; 

void FUNC4(void)
{
	uint i = 0;
	uint register_list = FUNC1();
	uint ea = AY;
	uint count = 0;

	for(; i < 16; i++)
		if(register_list & (1 << i))
		{
			ea -= 2;
			FUNC3(ea, FUNC0(REG_DA[15-i]));
			count++;
		}
	AY = ea;

	FUNC2(count<<CYC_MOVEM_W);
}