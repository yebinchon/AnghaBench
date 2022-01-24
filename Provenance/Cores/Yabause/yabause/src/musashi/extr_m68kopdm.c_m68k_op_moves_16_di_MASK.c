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
 scalar_t__ FUNC1 (int) ; 
 int /*<<< orphan*/  CPU_TYPE ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 () ; 
 scalar_t__ FLAG_S ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int FUNC7 (int) ; 
 int FUNC8 () ; 
 int /*<<< orphan*/ * REG_A ; 
 int* REG_D ; 
 int /*<<< orphan*/ * REG_DA ; 
 int /*<<< orphan*/  REG_DFC ; 
 int /*<<< orphan*/  REG_SFC ; 
 int /*<<< orphan*/  FUNC9 (int) ; 
 int /*<<< orphan*/  FUNC10 () ; 
 int /*<<< orphan*/  FUNC11 () ; 
 int FUNC12 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 () ; 
 int /*<<< orphan*/  FUNC14 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void FUNC15(void)
{
	if(FUNC2(CPU_TYPE))
	{
		if(FLAG_S)
		{
			uint word2 = FUNC8();
			uint ea = FUNC4();

			FUNC13();			   /* auto-disable (see m68kcpu.h) */
			if(FUNC0(word2))		   /* Register to memory */
			{
				FUNC14(ea, REG_DFC, FUNC6(REG_DA[(word2 >> 12) & 15]));
				return;
			}
			if(FUNC1(word2))		   /* Memory to address register */
			{
				REG_A[(word2 >> 12) & 7] = FUNC5(FUNC12(ea, REG_SFC));
				if(FUNC3(CPU_TYPE))
					FUNC9(2);
				return;
			}
			/* Memory to data register */
			REG_D[(word2 >> 12) & 7] = FUNC7(REG_D[(word2 >> 12) & 7]) | FUNC12(ea, REG_SFC);
			if(FUNC3(CPU_TYPE))
				FUNC9(2);
			return;
		}
		FUNC11();
		return;
	}
	FUNC10();
}