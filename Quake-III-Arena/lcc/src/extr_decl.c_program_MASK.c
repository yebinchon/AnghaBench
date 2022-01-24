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
 scalar_t__ CHAR ; 
 size_t EOI ; 
 int /*<<< orphan*/  FUNC ; 
 int /*<<< orphan*/  GLOBAL ; 
 size_t ID ; 
 scalar_t__ STATIC ; 
 int /*<<< orphan*/  STMT ; 
 int /*<<< orphan*/  dclglobal ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 size_t FUNC3 () ; 
 int glevel ; 
 scalar_t__* kind ; 
 int /*<<< orphan*/  level ; 
 size_t t ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 scalar_t__ xref ; 

void FUNC5(void) {
	int n;
	
	level = GLOBAL;
	for (n = 0; t != EOI; n++)
		if (kind[t] == CHAR || kind[t] == STATIC
		|| t == ID || t == '*' || t == '(') {
			FUNC1(dclglobal);
			FUNC0(STMT);
			if (!(glevel >= 3 || xref))
			FUNC0(FUNC);
		} else if (t == ';') {
			FUNC4("empty declaration\n");
			t = FUNC3();
		} else {
			FUNC2("unrecognized declaration\n");
			t = FUNC3();
		}
	if (n == 0)
		FUNC4("empty input file\n");
}