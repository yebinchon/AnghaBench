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
 int SYMBOL_AUTO ; 
 int SYMBOL_CHANGED ; 
 int SYMBOL_CHECK ; 
 int SYMBOL_CHOICE ; 
 int SYMBOL_CHOICEVAL ; 
 int SYMBOL_CONST ; 
 int SYMBOL_OPTIONAL ; 
 int SYMBOL_VALID ; 
 int SYMBOL_WRITE ; 
 int /*<<< orphan*/  FUNC0 (char*,int) ; 
 int /*<<< orphan*/  FUNC1 (char*,char*) ; 
 int FUNC2 (char*) ; 

const char *FUNC3(int val)
{
	static char buf[256];

	FUNC0(buf, 256);

	if (val & SYMBOL_CONST)
		FUNC1(buf, "const/");
	if (val & SYMBOL_CHECK)
		FUNC1(buf, "check/");
	if (val & SYMBOL_CHOICE)
		FUNC1(buf, "choice/");
	if (val & SYMBOL_CHOICEVAL)
		FUNC1(buf, "choiceval/");
	if (val & SYMBOL_VALID)
		FUNC1(buf, "valid/");
	if (val & SYMBOL_OPTIONAL)
		FUNC1(buf, "optional/");
	if (val & SYMBOL_WRITE)
		FUNC1(buf, "write/");
	if (val & SYMBOL_CHANGED)
		FUNC1(buf, "changed/");
	if (val & SYMBOL_AUTO)
		FUNC1(buf, "auto/");

	buf[FUNC2(buf) - 1] = '\0';

	return buf;
}