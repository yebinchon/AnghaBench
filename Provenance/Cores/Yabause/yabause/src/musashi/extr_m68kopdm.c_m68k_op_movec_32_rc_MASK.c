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
 int /*<<< orphan*/  CPU_TYPE ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FLAG_M ; 
 scalar_t__ FLAG_S ; 
 int FUNC2 () ; 
 int REG_CAAR ; 
 int REG_CACR ; 
 int* REG_DA ; 
 int REG_DFC ; 
 int REG_ISP ; 
 int REG_MSP ; 
 int REG_SFC ; 
 int REG_SP ; 
 int REG_USP ; 
 int REG_VBR ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 () ; 

void FUNC6(void)
{
	if(FUNC0(CPU_TYPE))
	{
		if(FLAG_S)
		{
			uint word2 = FUNC2();

			FUNC5();		   /* auto-disable (see m68kcpu.h) */
			switch (word2 & 0xfff)
			{
			case 0x000:			   /* SFC */
				REG_SFC = REG_DA[(word2 >> 12) & 15] & 7;
				return;
			case 0x001:			   /* DFC */
				REG_DFC = REG_DA[(word2 >> 12) & 15] & 7;
				return;
			case 0x002:			   /* CACR */
				if(FUNC1(CPU_TYPE))
				{
					REG_CACR = REG_DA[(word2 >> 12) & 15];
					return;
				}
				FUNC3();
				return;
			case 0x800:			   /* USP */
				REG_USP = REG_DA[(word2 >> 12) & 15];
				return;
			case 0x801:			   /* VBR */
				REG_VBR = REG_DA[(word2 >> 12) & 15];
				return;
			case 0x802:			   /* CAAR */
				if(FUNC1(CPU_TYPE))
				{
					REG_CAAR = REG_DA[(word2 >> 12) & 15];
					return;
				}
				FUNC3();
				return;
			case 0x803:			   /* MSP */
				if(FUNC1(CPU_TYPE))
				{
					/* we are in supervisor mode so just check for M flag */
					if(!FLAG_M)
					{
						REG_MSP = REG_DA[(word2 >> 12) & 15];
						return;
					}
					REG_SP = REG_DA[(word2 >> 12) & 15];
					return;
				}
				FUNC3();
				return;
			case 0x804:			   /* ISP */
				if(FUNC1(CPU_TYPE))
				{
					if(!FLAG_M)
					{
						REG_SP = REG_DA[(word2 >> 12) & 15];
						return;
					}
					REG_ISP = REG_DA[(word2 >> 12) & 15];
					return;
				}
				FUNC3();
				return;
			default:
				FUNC3();
				return;
			}
		}
		FUNC4();
		return;
	}
	FUNC3();
}