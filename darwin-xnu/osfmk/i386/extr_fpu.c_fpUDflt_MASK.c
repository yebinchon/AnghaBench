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
typedef  scalar_t__ user_addr_t ;
typedef  int uint8_t ;
typedef  int /*<<< orphan*/  boolean_t ;

/* Variables and functions */
 scalar_t__ AVX512 ; 
 scalar_t__ AVX_XMASK ; 
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int /*<<< orphan*/  FALSE ; 
 scalar_t__ MAX_X86_INSN_LENGTH ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  XCR0 ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 scalar_t__ FUNC2 (scalar_t__,char*,int) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 scalar_t__ fpu_capability ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ) ; 

void
FUNC7(user_addr_t rip)
{
	uint8_t		instruction_prefix;
	boolean_t	is_AVX512_instruction = FALSE;
	user_addr_t	original_rip = rip;
	do {
		/* TODO: as an optimisation, copy up to the lesser of the
		 * next page boundary or maximal prefix length in one pass
		 * rather than issue multiple copyins
		 */
		if (FUNC2(rip, (char *) &instruction_prefix, 1)) {
			return;
		}
		FUNC0("fpUDflt(0x%016llx) prefix: 0x%x\n",
			rip, instruction_prefix);
		/* TODO: determine more specifically which prefixes
		 * are sane possibilities for AVX512 insns
		 */
		switch (instruction_prefix) {
		    case 0x2E:	/* CS segment override */
		    case 0x36:	/* SS segment override */
		    case 0x3E:	/* DS segment override */
		    case 0x26:	/* ES segment override */
		    case 0x64:	/* FS segment override */
		    case 0x65:	/* GS segment override */
		    case 0x66:  /* Operand-size override */
		    case 0x67:	/* address-size override */
			/* Skip optional prefixes */
			rip++;
			if ((rip - original_rip) > MAX_X86_INSN_LENGTH) {
				return;
			}
			break;
		    case 0x62:  /* EVEX */
		    case 0xC5:	/* VEX 2-byte */
		    case 0xC4:	/* VEX 3-byte */
			is_AVX512_instruction = TRUE;
			break;
		    default:
			return;
		}
	} while (!is_AVX512_instruction);

	/* Here if we detect attempted execution of an AVX512 instruction */

	/*
	 * Fail if this machine doesn't support AVX512
	 */
	if (fpu_capability != AVX512)
		return;

	FUNC1(FUNC6(XCR0) == AVX_XMASK);

	FUNC0("fpUDflt() switching xstate to AVX512\n");
	(void) FUNC4(FUNC3());

	FUNC5();
	/* NOT REACHED */
}