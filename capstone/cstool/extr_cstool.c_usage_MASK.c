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

/* Variables and functions */
 int /*<<< orphan*/  CS_ARCH_ARM ; 
 int /*<<< orphan*/  CS_ARCH_ARM64 ; 
 int /*<<< orphan*/  CS_ARCH_EVM ; 
 int /*<<< orphan*/  CS_ARCH_M680X ; 
 int /*<<< orphan*/  CS_ARCH_M68K ; 
 int /*<<< orphan*/  CS_ARCH_MIPS ; 
 int /*<<< orphan*/  CS_ARCH_MOS65XX ; 
 int /*<<< orphan*/  CS_ARCH_PPC ; 
 int /*<<< orphan*/  CS_ARCH_SPARC ; 
 int /*<<< orphan*/  CS_ARCH_SYSZ ; 
 int /*<<< orphan*/  CS_ARCH_TMS320C64X ; 
 int /*<<< orphan*/  CS_ARCH_X86 ; 
 int /*<<< orphan*/  CS_ARCH_XCORE ; 
 int CS_VERSION_EXTRA ; 
 int CS_VERSION_MAJOR ; 
 int CS_VERSION_MINOR ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 

__attribute__((used)) static void FUNC2(char *prog)
{
	FUNC1("Cstool for Capstone Disassembler Engine v%u.%u.%u\n\n", CS_VERSION_MAJOR, CS_VERSION_MINOR, CS_VERSION_EXTRA);
	FUNC1("Syntax: %s [-u|-d|-s|-v] <arch+mode> <assembly-hexstring> [start-address-in-hex-format]\n", prog);
	FUNC1("\nThe following <arch+mode> options are supported:\n");

	if (FUNC0(CS_ARCH_X86)) {
		FUNC1("        x16         16-bit mode (X86)\n");
		FUNC1("        x32         32-bit mode (X86)\n");
		FUNC1("        x64         64-bit mode (X86)\n");
		FUNC1("        x16att      16-bit mode (X86), syntax AT&T\n");
		FUNC1("        x32att      32-bit mode (X86), syntax AT&T\n");
		FUNC1("        x64att      64-bit mode (X86), syntax AT&T\n");
	}

	if (FUNC0(CS_ARCH_ARM)) {
		FUNC1("        arm         arm\n");
		FUNC1("        armbe       arm + big endian\n");
		FUNC1("        thumb       thumb mode\n");
		FUNC1("        thumbbe     thumb + big endian\n");
		FUNC1("        cortexm     thumb + cortex-m extensions\n");
	}

	if (FUNC0(CS_ARCH_ARM64)) {
		FUNC1("        arm64       aarch64 mode\n");
		FUNC1("        arm64be     aarch64 + big endian\n");
	}

	if (FUNC0(CS_ARCH_MIPS)) {
		FUNC1("        mips        mips32 + little endian\n");
		FUNC1("        mipsbe      mips32 + big endian\n");
		FUNC1("        mips64      mips64 + little endian\n");
		FUNC1("        mips64be    mips64 + big endian\n");
	}

	if (FUNC0(CS_ARCH_PPC)) {
		FUNC1("        ppc64       ppc64 + little endian\n");
		FUNC1("        ppc64be     ppc64 + big endian\n");
	}

	if (FUNC0(CS_ARCH_SPARC)) {
		FUNC1("        sparc       sparc\n");
	}

	if (FUNC0(CS_ARCH_SYSZ)) {
		FUNC1("        systemz     systemz (s390x)\n");
	}

	if (FUNC0(CS_ARCH_XCORE)) {
		FUNC1("        xcore       xcore\n");
	}

	if (FUNC0(CS_ARCH_M68K)) {
		FUNC1("        m68k        m68k + big endian\n");
		FUNC1("        m68k40      m68k_040\n");
	}

	if (FUNC0(CS_ARCH_TMS320C64X)) {
		FUNC1("        tms320c64x  TMS320C64x\n");
	}

	if (FUNC0(CS_ARCH_M680X)) {
		FUNC1("        m6800       M6800/2\n");
		FUNC1("        m6801       M6801/3\n");
		FUNC1("        m6805       M6805\n");
		FUNC1("        m6808       M68HC08\n");
		FUNC1("        m6809       M6809\n");
		FUNC1("        m6811       M68HC11\n");
		FUNC1("        cpu12       M68HC12/HCS12\n");
		FUNC1("        hd6301      HD6301/3\n");
		FUNC1("        hd6309      HD6309\n");
		FUNC1("        hcs08       HCS08\n");
	}

	if (FUNC0(CS_ARCH_EVM)) {
		FUNC1("        evm         Ethereum Virtual Machine\n");
	}

	if (FUNC0(CS_ARCH_MOS65XX)) {
		FUNC1("        mos65xx     MOS65XX family\n");
	}

	FUNC1("\nExtra options:\n");
	FUNC1("        -d show detailed information of the instructions\n");
	FUNC1("        -u show immediates as unsigned\n");
	FUNC1("        -s decode in SKIPDATA mode\n");
	FUNC1("        -v show version & Capstone core build info\n\n");
}