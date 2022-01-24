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
 int /*<<< orphan*/  FUNC0 (int,int,int) ; 
 scalar_t__ FUNC1 () ; 
 int /*<<< orphan*/  CPU_TYPE ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FLAG_C ; 
 int /*<<< orphan*/  FLAG_N ; 
 int /*<<< orphan*/  FLAG_V ; 
 int /*<<< orphan*/  FLAG_Z ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int FUNC5 () ; 
 int* REG_D ; 
 int* REG_DA ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (int,int,int) ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int FUNC9 (int) ; 
 int /*<<< orphan*/  FUNC10 () ; 
 int /*<<< orphan*/  FUNC11 (int,int) ; 

void FUNC12(void)
{
	if(FUNC2(CPU_TYPE))
	{
		uint word2 = FUNC5();
		uint* compare1 = &REG_D[(word2 >> 16) & 7];
		uint ea1 = REG_DA[(word2 >> 28) & 15];
		uint dest1 = FUNC9(ea1);
		uint res1 = dest1 - *compare1;
		uint* compare2 = &REG_D[word2 & 7];
		uint ea2 = REG_DA[(word2 >> 12) & 15];
		uint dest2 = FUNC9(ea2);
		uint res2;

		FUNC10();			   /* auto-disable (see m68kcpu.h) */
		FLAG_N = FUNC4(res1);
		FLAG_Z = FUNC3(res1);
		FLAG_V = FUNC7(*compare1, dest1, res1);
		FLAG_C = FUNC0(*compare1, dest1, res1);

		if(FUNC1())
		{
			res2 = dest2 - *compare2;

			FLAG_N = FUNC4(res2);
			FLAG_Z = FUNC3(res2);
			FLAG_V = FUNC7(*compare2, dest2, res2);
			FLAG_C = FUNC0(*compare2, dest2, res2);

			if(FUNC1())
			{
				FUNC6(3);
				FUNC11(ea1, REG_D[(word2 >> 22) & 7]);
				FUNC11(ea2, REG_D[(word2 >> 6) & 7]);
				return;
			}
		}
		*compare1 = dest1;
		*compare2 = dest2;
		return;
	}
	FUNC8();
}