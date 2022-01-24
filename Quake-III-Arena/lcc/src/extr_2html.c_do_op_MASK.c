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
 int FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 

__attribute__((used)) static void FUNC2(int x) {
	static char *opnames[] = {
		"",
		"CNST",
		"ARG",
		"ASGN",
		"INDIR",
		"CVC",
		"CVD",
		"CVF",
		"CVI",
		"CVP",
		"CVS",
		"CVU",
		"NEG",
		"CALL",
		"*LOAD*",
		"RET",
		"ADDRG",
		"ADDRF",
		"ADDRL",
		"ADD",
		"SUB",
		"LSH",
		"MOD",
		"RSH",
		"BAND",
		"BCOM",
		"BOR",
		"BXOR",
		"DIV",
		"MUL",
		"EQ",
		"GE",
		"GT",
		"LE",
		"LT",
		"NE",
		"JUMP",
		"LABEL",
		"AND",
		"NOT",
		"OR",
		"COND",
		"RIGHT",
		"FIELD"
	};
	int op = FUNC0(x);
	if (op < 1 || op >= sizeof opnames/sizeof opnames[0])
		FUNC1("%d", x);
	else
		FUNC1("%s", opnames[op]);
}