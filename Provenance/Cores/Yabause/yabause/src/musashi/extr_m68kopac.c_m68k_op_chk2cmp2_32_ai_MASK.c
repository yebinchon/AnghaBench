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
 int FUNC1 (int,int,int) ; 
 scalar_t__ FUNC2 () ; 
 int /*<<< orphan*/  CPU_TYPE ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 () ; 
 int /*<<< orphan*/  EXCEPTION_CHK ; 
 int FLAG_C ; 
 int FLAG_Z ; 
 int FUNC5 () ; 
 int* REG_DA ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int FUNC8 (int) ; 

void FUNC9(void)
{
	if(FUNC3(CPU_TYPE))
	{
		uint word2 = FUNC5();
		uint compare = REG_DA[(word2 >> 12) & 15];
		uint ea = FUNC4();
		uint lower_bound = FUNC8(ea);
		uint upper_bound = FUNC8(ea + 4);

		FLAG_C = compare - lower_bound;
		FLAG_Z = !((upper_bound==compare) | (lower_bound==compare));
		FLAG_C = FUNC1(lower_bound, compare, FLAG_C);
		if(FUNC2())
		{
			if(FUNC0(word2))
				FUNC7(EXCEPTION_CHK);
			return;
		}

		FLAG_C = upper_bound - compare;
		FLAG_C = FUNC1(compare, upper_bound, FLAG_C);
		if(FUNC2() && FUNC0(word2))
				FUNC7(EXCEPTION_CHK);
		return;
	}
	FUNC6();
}