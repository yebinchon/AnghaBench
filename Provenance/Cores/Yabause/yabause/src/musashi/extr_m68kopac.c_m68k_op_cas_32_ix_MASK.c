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
 int FUNC3 () ; 
 int /*<<< orphan*/  FLAG_C ; 
 int /*<<< orphan*/  FLAG_N ; 
 int /*<<< orphan*/  FLAG_V ; 
 int /*<<< orphan*/  FLAG_Z ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int FUNC6 () ; 
 int* REG_D ; 
 int /*<<< orphan*/  FUNC7 (int) ; 
 int /*<<< orphan*/  FUNC8 (int,int,int) ; 
 int /*<<< orphan*/  FUNC9 () ; 
 int FUNC10 (int) ; 
 int /*<<< orphan*/  FUNC11 () ; 
 int /*<<< orphan*/  FUNC12 (int,int) ; 

void FUNC13(void)
{
	if(FUNC2(CPU_TYPE))
	{
		uint word2 = FUNC6();
		uint ea = FUNC3();
		uint dest = FUNC10(ea);
		uint* compare = &REG_D[word2 & 7];
		uint res = dest - *compare;

		FUNC11();			   /* auto-disable (see m68kcpu.h) */
		FLAG_N = FUNC5(res);
		FLAG_Z = FUNC4(res);
		FLAG_V = FUNC8(*compare, dest, res);
		FLAG_C = FUNC0(*compare, dest, res);

		if(FUNC1())
			*compare = dest;
		else
		{
			FUNC7(3);
			FUNC12(ea, REG_D[(word2 >> 6) & 7]);
		}
		return;
	}
	FUNC9();
}