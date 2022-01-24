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
typedef  int /*<<< orphan*/  uint ;

/* Variables and functions */
 int /*<<< orphan*/  CPU_INSTR_MODE ; 
 int /*<<< orphan*/  CPU_RUN_MODE ; 
 scalar_t__ FLAG_S ; 
 int /*<<< orphan*/  INSTRUCTION_YES ; 
 int /*<<< orphan*/  RUN_MODE_NORMAL ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC5(void)
{
  if(FLAG_S)
  {
    uint new_sr;
    uint new_pc;

    new_sr = FUNC2();
    new_pc = FUNC3();
    FUNC1(new_pc);
    FUNC4(new_sr);

#if M68K_EMULATE_ADDRESS_ERROR
    CPU_INSTR_MODE = INSTRUCTION_YES;
    CPU_RUN_MODE = RUN_MODE_NORMAL;
#endif

    return;
  }
  FUNC0();
}