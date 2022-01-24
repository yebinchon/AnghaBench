#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_18__   TYPE_2__ ;
typedef  struct TYPE_17__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  csh ;
typedef  int /*<<< orphan*/  cs_mode ;
struct TYPE_18__ {TYPE_1__* detail; } ;
typedef  TYPE_2__ cs_insn ;
typedef  int cs_arch ;
struct TYPE_17__ {int groups_count; int /*<<< orphan*/ * groups; } ;

/* Variables and functions */
#define  CS_ARCH_ARM 140 
#define  CS_ARCH_ARM64 139 
#define  CS_ARCH_EVM 138 
#define  CS_ARCH_M680X 137 
#define  CS_ARCH_M68K 136 
#define  CS_ARCH_MIPS 135 
#define  CS_ARCH_MOS65XX 134 
#define  CS_ARCH_PPC 133 
#define  CS_ARCH_SPARC 132 
#define  CS_ARCH_SYSZ 131 
#define  CS_ARCH_TMS320C64X 130 
#define  CS_ARCH_X86 129 
#define  CS_ARCH_XCORE 128 
 char* FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC14 (char*,...) ; 

__attribute__((used)) static void FUNC15(csh handle, cs_arch arch, cs_mode md, cs_insn *ins)
{
	switch(arch) {
		case CS_ARCH_X86:
			FUNC12(handle, md, ins);
			break;
		case CS_ARCH_ARM:
			FUNC1(handle, ins);
			break;
		case CS_ARCH_ARM64:
			FUNC2(handle, ins);
			break;
		case CS_ARCH_MIPS:
			FUNC6(handle, ins);
			break;
		case CS_ARCH_PPC:
			FUNC8(handle, ins);
			break;
		case CS_ARCH_SPARC:
			FUNC9(handle, ins);
			break;
		case CS_ARCH_SYSZ:
			FUNC10(handle, ins);
			break;
		case CS_ARCH_XCORE:
			FUNC13(handle, ins);
			break;
		case CS_ARCH_M68K:
			FUNC5(handle, ins);
			break;
		case CS_ARCH_TMS320C64X:
			FUNC11(handle, ins);
			break;
		case CS_ARCH_M680X:
			FUNC4(handle, ins);
			break;
		case CS_ARCH_EVM:
			FUNC3(handle, ins);
			break;
		case CS_ARCH_MOS65XX:
			FUNC7(handle, ins);
			break;
		default: break;
	}

	if (ins->detail->groups_count) {
		int j;

		FUNC14("\tGroups: ");
		for(j = 0; j < ins->detail->groups_count; j++) {
			FUNC14("%s ", FUNC0(handle, ins->detail->groups[j]));
		}
		FUNC14("\n");
	}

	FUNC14("\n");
}