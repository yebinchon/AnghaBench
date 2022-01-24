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
 scalar_t__* CYC_EXCEPTION ; 
 scalar_t__* CYC_INSTRUCTION ; 
 size_t EXCEPTION_PRIVILEGE_VIOLATION ; 
 int /*<<< orphan*/  INSTRUCTION_NO ; 
 size_t REG_IR ; 
 scalar_t__ REG_PC ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (size_t) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(void)
{
  uint sr = FUNC1();

  #if M68K_EMULATE_ADDRESS_ERROR == OPT_ON
  CPU_INSTR_MODE = INSTRUCTION_NO;
  #endif /* M68K_EMULATE_ADDRESS_ERROR */

  FUNC3(REG_PC-2, sr);
  FUNC2(EXCEPTION_PRIVILEGE_VIOLATION);

  /* Use up some clock cycles and undo the instruction's cycles */
  FUNC0(CYC_EXCEPTION[EXCEPTION_PRIVILEGE_VIOLATION] - CYC_INSTRUCTION[REG_IR]);
}