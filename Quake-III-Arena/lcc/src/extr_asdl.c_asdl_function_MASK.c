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
typedef  int /*<<< orphan*/  list_ty ;
typedef  int /*<<< orphan*/ * Symbol ;

/* Variables and functions */
 int /*<<< orphan*/  CODE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ **,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  interfaces ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC11(Symbol f, Symbol caller[], Symbol callee[], int ncalls) {
	list_ty codelist = FUNC1(0), save, calleelist = FUNC1(0), callerlist = FUNC1(0);
	int i;

	FUNC4(f);
	for (i = 0; caller[i] != NULL; i++) {
		FUNC2(caller[i]);
		FUNC0(callerlist, FUNC10(FUNC9(caller[i])));
	}
	for (i = 0; callee[i] != NULL; i++) {
		FUNC2(callee[i]);
		FUNC0(calleelist, FUNC10(FUNC9(callee[i])));
	}
	save = interfaces;
	interfaces = codelist;
	FUNC6(caller, callee);
	FUNC3(CODE);
	FUNC5();
	interfaces = save;
	FUNC7(FUNC8(FUNC9(f), callerlist, calleelist, ncalls, codelist));
}