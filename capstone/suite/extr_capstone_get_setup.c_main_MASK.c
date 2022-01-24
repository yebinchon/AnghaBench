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
 int /*<<< orphan*/  CS_SUPPORT_DIET ; 
 int /*<<< orphan*/  CS_SUPPORT_X86_REDUCE ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 

int FUNC2()
{
	if (FUNC0(CS_ARCH_X86)) {
		FUNC1("x86=1 ");
	}

	if (FUNC0(CS_ARCH_ARM)) {
		FUNC1("arm=1 ");
	}

	if (FUNC0(CS_ARCH_ARM64)) {
		FUNC1("arm64=1 ");
	}

	if (FUNC0(CS_ARCH_MIPS)) {
		FUNC1("mips=1 ");
	}

	if (FUNC0(CS_ARCH_PPC)) {
		FUNC1("ppc=1 ");
	}

	if (FUNC0(CS_ARCH_SPARC)) {
		FUNC1("sparc=1 ");
	}

	if (FUNC0(CS_ARCH_SYSZ)) {
		FUNC1("sysz=1 ");
	}

	if (FUNC0(CS_ARCH_XCORE)) {
		FUNC1("xcore=1 ");
	}

	if (FUNC0(CS_ARCH_M68K)) {
		FUNC1("m68k=1 ");
	}

	if (FUNC0(CS_ARCH_TMS320C64X)) {
		FUNC1("tms320c64x=1 ");
	}

	if (FUNC0(CS_ARCH_M680X)) {
		FUNC1("m680x=1 ");
	}

	if (FUNC0(CS_ARCH_EVM)) {
		FUNC1("evm=1 ");
	}

	if (FUNC0(CS_ARCH_MOS65XX)) {
		FUNC1("mos65xx=1 ");
	}

	if (FUNC0(CS_SUPPORT_DIET)) {
		FUNC1("diet=1 ");
	}

	if (FUNC0(CS_SUPPORT_X86_REDUCE)) {
		FUNC1("x86_reduce=1 ");
	}

	FUNC1("\n");

	return 0;
}