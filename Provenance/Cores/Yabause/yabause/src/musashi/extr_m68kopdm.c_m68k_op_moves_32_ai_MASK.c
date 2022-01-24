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
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  CPU_TYPE ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 () ; 
 scalar_t__ FLAG_S ; 
 int FUNC4 () ; 
 int /*<<< orphan*/ * REG_DA ; 
 int /*<<< orphan*/  REG_DFC ; 
 int /*<<< orphan*/  REG_SFC ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void FUNC11(void)
{
	if(FUNC1(CPU_TYPE))
	{
		if(FLAG_S)
		{
			uint word2 = FUNC4();
			uint ea = FUNC3();

			FUNC9();			   /* auto-disable (see m68kcpu.h) */
			if(FUNC0(word2))		   /* Register to memory */
			{
				FUNC10(ea, REG_DFC, REG_DA[(word2 >> 12) & 15]);
				if(FUNC2(CPU_TYPE))
					FUNC5(2);
				return;
			}
			/* Memory to register */
			REG_DA[(word2 >> 12) & 15] = FUNC8(ea, REG_SFC);
			if(FUNC2(CPU_TYPE))
				FUNC5(2);
			return;
		}
		FUNC7();
		return;
	}
	FUNC6();
}