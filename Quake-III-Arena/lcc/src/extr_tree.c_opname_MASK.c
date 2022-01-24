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
 scalar_t__ AND ; 
 scalar_t__ FIELD ; 
 size_t FUNC0 (char**) ; 
 scalar_t__ FUNC1 (int) ; 
 size_t FUNC2 (int) ; 
 size_t FUNC3 (int) ; 
 size_t FUNC4 (int) ; 
 char* FUNC5 (size_t) ; 
 char* FUNC6 (char*,char*,char*,char*) ; 

char *FUNC7(int op) {
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
	}, *suffixes[] = {
		"0", "F", "D", "C", "S", "I", "U", "P", "V", "B",
		"10","11","12","13","14","15"
	};

	if (FUNC1(op) >= AND && FUNC1(op) <= FIELD && FUNC3(op) == 0)
		return opnames[FUNC2(op)];
	return FUNC6("%s%s%s",
		FUNC2(op) > 0 && FUNC2(op) < FUNC0(opnames) ?
			opnames[FUNC2(op)] : FUNC5(FUNC2(op)),
		suffixes[FUNC4(op)], FUNC3(op) > 0 ? FUNC5(FUNC3(op)) : "");
}