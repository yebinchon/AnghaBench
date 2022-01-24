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
 scalar_t__ FUNC2 () ; 
 int /*<<< orphan*/  CPU_TYPE ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 () ; 
 int /*<<< orphan*/  EXCEPTION_CHK ; 
 int FLAG_C ; 
 int FLAG_Z ; 
 int FUNC5 (int) ; 
 int FUNC6 () ; 
 int* REG_DA ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int FUNC9 (int) ; 

void FUNC10(void)
{
	if(FUNC3(CPU_TYPE))
	{
		uint word2 = FUNC6();
		uint compare = REG_DA[(word2 >> 12) & 15]&0xff;
		uint ea = FUNC4();
		uint lower_bound = FUNC9(ea);
		uint upper_bound = FUNC9(ea + 1);

		if(!FUNC1(word2))
			FLAG_C = FUNC5(compare) - FUNC5(lower_bound);
		else
			FLAG_C = compare - lower_bound;
		FLAG_Z = !((upper_bound==compare) | (lower_bound==compare));
		if(FUNC2())
		{
			if(FUNC0(word2))
				FUNC8(EXCEPTION_CHK);
			return;
		}

		FLAG_C = upper_bound - compare;
		if(FUNC2() && FUNC0(word2))
				FUNC8(EXCEPTION_CHK);
		return;
	}
	FUNC7();
}