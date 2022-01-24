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
 int /*<<< orphan*/  CPU_INSTR_MODE ; 
 int /*<<< orphan*/  CPU_RUN_MODE ; 
 int /*<<< orphan*/  CPU_TYPE ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FLAG_S ; 
 int /*<<< orphan*/  INSTRUCTION_YES ; 
 scalar_t__* REG_A ; 
 int /*<<< orphan*/  RUN_MODE_NORMAL ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 int FUNC7 () ; 
 int FUNC8 () ; 
 int FUNC9 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC10 (int) ; 
 int /*<<< orphan*/  FUNC11 (int) ; 
 int /*<<< orphan*/  FUNC12 () ; 

void FUNC13(void)
{
	if(FLAG_S)
	{
		uint new_sr;
		uint new_pc;
		uint format_word;

		FUNC12();			   /* auto-disable (see m68kcpu.h) */

		if(FUNC0(CPU_TYPE))
		{
			new_sr = FUNC7();
			new_pc = FUNC8();
			FUNC6(new_pc);
			FUNC10(new_sr);

			CPU_INSTR_MODE = INSTRUCTION_YES;
			CPU_RUN_MODE = RUN_MODE_NORMAL;

			return;
		}

		if(FUNC1(CPU_TYPE))
		{
			format_word = FUNC9(REG_A[7]+6) >> 12;
			if(format_word == 0)
			{
				new_sr = FUNC7();
				new_pc = FUNC8();
				FUNC4();	/* format word */
				FUNC6(new_pc);
				FUNC10(new_sr);
				CPU_INSTR_MODE = INSTRUCTION_YES;
				CPU_RUN_MODE = RUN_MODE_NORMAL;
				return;
			}
			CPU_INSTR_MODE = INSTRUCTION_YES;
			CPU_RUN_MODE = RUN_MODE_NORMAL;
			/* Not handling bus fault (9) */
			FUNC2();
			return;
		}

		/* Otherwise it's 020 */
rte_loop:
		format_word = FUNC9(REG_A[7]+6) >> 12;
		switch(format_word)
		{
			case 0: /* Normal */
				new_sr = FUNC7();
				new_pc = FUNC8();
				FUNC4();	/* format word */
				FUNC6(new_pc);
				FUNC10(new_sr);
				CPU_INSTR_MODE = INSTRUCTION_YES;
				CPU_RUN_MODE = RUN_MODE_NORMAL;
				return;
			case 1: /* Throwaway */
				new_sr = FUNC7();
				FUNC5();	/* program counter */
				FUNC4();	/* format word */
				FUNC11(new_sr);
				goto rte_loop;
			case 2: /* Trap */
				new_sr = FUNC7();
				new_pc = FUNC8();
				FUNC4();	/* format word */
				FUNC5();	/* address */
				FUNC6(new_pc);
				FUNC10(new_sr);
				CPU_INSTR_MODE = INSTRUCTION_YES;
				CPU_RUN_MODE = RUN_MODE_NORMAL;
				return;
		}
		/* Not handling long or short bus fault */
		CPU_INSTR_MODE = INSTRUCTION_YES;
		CPU_RUN_MODE = RUN_MODE_NORMAL;
		FUNC2();
		return;
	}
	FUNC3();
}