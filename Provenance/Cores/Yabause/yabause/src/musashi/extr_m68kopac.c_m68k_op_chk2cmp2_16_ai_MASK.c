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
 int /*<<< orphan*/  FUNC1 (int) ; 
 int FUNC2 (int) ; 
 scalar_t__ FUNC3 () ; 
 int /*<<< orphan*/  CPU_TYPE ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 int FUNC5 () ; 
 int /*<<< orphan*/  EXCEPTION_CHK ; 
 int FLAG_C ; 
 int FLAG_Z ; 
 int FUNC6 (int) ; 
 int FUNC7 () ; 
 int* REG_DA ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int FUNC10 (int) ; 

void FUNC11(void)
{
	if(FUNC4(CPU_TYPE))
	{
		uint word2 = FUNC7();
		uint compare = REG_DA[(word2 >> 12) & 15]&0xffff;
		uint ea = FUNC5();
		uint lower_bound = FUNC10(ea);
		uint upper_bound = FUNC10(ea + 2);

		if(!FUNC1(word2))
			FLAG_C = FUNC6(compare) - FUNC6(lower_bound);
		else
			FLAG_C = compare - lower_bound;

		FLAG_Z = !((upper_bound==compare) | (lower_bound==compare));
		FLAG_C = FUNC2(FLAG_C);
		if(FUNC3())
		{
			if(FUNC0(word2))
				FUNC9(EXCEPTION_CHK);
			return;
		}
		if(!FUNC1(word2))
			FLAG_C = FUNC6(upper_bound) - FUNC6(compare);
		else
			FLAG_C = upper_bound - compare;

		FLAG_C = FUNC2(FLAG_C);
		if(FUNC3() && FUNC0(word2))
				FUNC9(EXCEPTION_CHK);
		return;
	}
	FUNC8();
}