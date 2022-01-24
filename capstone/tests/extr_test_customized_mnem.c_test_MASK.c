#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  csh ;
struct TYPE_2__ {char* member_1; int /*<<< orphan*/  member_0; } ;
typedef  TYPE_1__ cs_opt_mnem ;
typedef  int cs_err ;

/* Variables and functions */
 int /*<<< orphan*/  CS_ARCH_X86 ; 
 int /*<<< orphan*/  CS_MODE_32 ; 
 int /*<<< orphan*/  CS_OPT_MNEMONIC ; 
 int /*<<< orphan*/  X86_INS_JNE ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,size_t) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char*,...) ; 

__attribute__((used)) static void FUNC6()
{
	csh handle;
	cs_err err;
	// Customize mnemonic JNE to "jnz"
	cs_opt_mnem my_mnem = { X86_INS_JNE, "jnz" };
	// Set .mnemonic to NULL to reset to default mnemonic
	cs_opt_mnem default_mnem = { X86_INS_JNE, NULL };

	err = FUNC2(CS_ARCH_X86, CS_MODE_32, &handle);
	if (err) {
		FUNC5("Failed on cs_open() with error returned: %u\n", err);
		FUNC0();
	}

	// 1. Print out the instruction in default setup.
	FUNC5("Disassemble X86 code with default instruction mnemonic\n");
	FUNC4(handle);

	// Customized mnemonic JNE to JNZ using CS_OPT_MNEMONIC option
	FUNC5("\nNow customize engine to change mnemonic from 'JNE' to 'JNZ'\n");
	FUNC3(handle, CS_OPT_MNEMONIC, (size_t)&my_mnem);

	// 2. Now print out the instruction in newly customized setup.
	FUNC4(handle);

	// Reset engine to use the default mnemonic of JNE
	FUNC5("\nReset engine to use the default mnemonic\n");
	FUNC3(handle, CS_OPT_MNEMONIC, (size_t)&default_mnem);

	// 3. Now print out the instruction in default setup.
	FUNC4(handle);

	// Done
	FUNC1(&handle);
}