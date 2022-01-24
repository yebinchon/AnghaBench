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
typedef  int /*<<< orphan*/  s ;
typedef  int /*<<< orphan*/  prompt ;
typedef  int UWORD ;
typedef  int /*<<< orphan*/  UBYTE ;
typedef  int SWORD ;

/* Variables and functions */
 int FALSE ; 
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int,int) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 char** instr6502 ; 
 int /*<<< orphan*/  FUNC3 (char*,int*) ; 
 int /*<<< orphan*/  FUNC4 (char*,...) ; 
 int /*<<< orphan*/  FUNC5 (char*,int,char*) ; 
 int /*<<< orphan*/  FUNC6 (char*,int,char*,int) ; 
 int /*<<< orphan*/ * FUNC7 (char*,char) ; 
 scalar_t__ FUNC8 (char*,char*) ; 

__attribute__((used)) static UWORD FUNC9(UWORD addr)
{
	FUNC4("Simple assembler (enter empty line to exit)\n");
	for (;;) {
		char s[128];  /* input string */
		char c[128];  /* converted input */
		char *sp;     /* input pointer */
		char *cp;     /* converted input pointer */
		char *vp;     /* value pointer (the value is stored in s) */
		char *tp;     /* type pointer (points at type character '0', '1' or '2' in converted input) */
		int i;
		int isa;      /* the operand is "A" */
		UWORD value = 0;

		char prompt[7];
		FUNC6(prompt, sizeof(prompt), "%04X: ", (int) addr);
		FUNC5(s, sizeof(s), prompt);
		if (s[0] == '\0')
			return addr;

		FUNC2(s);

		sp = s;
		cp = c;
		/* copy first three characters */
		for (i = 0; i < 3 && *sp != '\0'; i++)
			*cp++ = *sp++;
		/* insert space before operands */
		*cp++ = ' ';

		tp = NULL;
		isa = FALSE;

		/* convert input to format of instr6502[] table */
		while (*sp != '\0') {
			switch (*sp) {
			case ' ':
			case '\t':
			case '$':
			case '@':
				sp++;
				break;
			case '#':
			case '(':
			case ')':
			case ',':
				isa = FALSE;
				*cp++ = *sp++;
				break;
			default:
				if (tp != NULL) {
					if (*sp == 'X' || *sp == 'Y') {
						*cp++ = *sp++;
						break;
					}
					goto invalid_instr;
				}
				vp = s;
				do
					*vp++ = *sp++;
				while (FUNC7(" \t$@#(),", *sp) == NULL && *sp != '\0');
				/* If *sp=='\0', strchr() should return non-NULL,
				   but we do an extra check to be on safe side. */
				*vp++ = '\0';
				tp = cp++;
				*tp = '0';
				isa = (s[0] == 'A' && s[1] == '\0');
				break;
			}
		}
		if (cp[-1] == ' ')
			cp--;    /* no arguments (e.g. NOP or ASL @) */
		*cp = '\0';

		/* if there's an operand, get its value */
		if (tp != NULL && !FUNC3(s, &value)) {
			FUNC4("Invalid operand!\n");
			continue;
		}

		for (;;) {
			/* search table for instruction */
			for (i = 0; i < 256; i++) {
				if (FUNC8(instr6502[i], c) == 0) {
					if (tp == NULL) {
						FUNC0(addr, (UBYTE) i);
						addr++;
					}
					else if (*tp == '0') {
						value -= (addr + 2);
						if ((SWORD) value < -128 || (SWORD) value > 127)
							FUNC4("Branch out of range!\n");
						else {
							FUNC0(addr, (UBYTE) i);
							addr++;
							FUNC0(addr, (UBYTE) value);
							addr++;
						}
					}
					else if (*tp == '1') {
						c[3] = '\0';
						if (isa && (FUNC8(c, "ASL") == 0 || FUNC8(c, "LSR") == 0 ||
						            FUNC8(c, "ROL") == 0 || FUNC8(c, "ROR") == 0)) {
							FUNC4("\"%s A\" is ambiguous.\n"
							       "Use \"%s\" for accumulator mode or \"%s 0A\" for zeropage mode.\n", c, c, c);
						}
						else {
							FUNC0(addr, (UBYTE) i);
							addr++;
							FUNC0(addr, (UBYTE) value);
							addr++;
						}
					}
					else { /* *tp == '2' */
						FUNC0(addr, (UBYTE) i);
						addr++;
						FUNC1(addr, value);
						addr += 2;
					}
					goto next_instr;
				}
			}
			/* not found */
			if (tp == NULL || *tp == '2')
				break;
			if (++*tp == '1' && value > 0xff)
				*tp = '2';
		}
	invalid_instr:
		FUNC4("Invalid instruction!\n");
	next_instr:
		;
	}
}