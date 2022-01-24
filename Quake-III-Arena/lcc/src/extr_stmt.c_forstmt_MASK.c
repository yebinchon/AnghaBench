#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/ * Tree ;
struct TYPE_2__ {scalar_t__ ref; } ;
typedef  int /*<<< orphan*/  Swtch ;
typedef  int /*<<< orphan*/  Coordinate ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC ; 
#define  ID 129 
#define  IF 128 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  conditional ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (char) ; 
 int /*<<< orphan*/  expr0 ; 
 TYPE_1__* FUNC4 (int) ; 
 int FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 size_t FUNC6 () ; 
 scalar_t__* kind ; 
 double refinc ; 
 int /*<<< orphan*/  src ; 
 int /*<<< orphan*/  FUNC7 (int,int /*<<< orphan*/ ,int) ; 
 size_t t ; 
 int /*<<< orphan*/  FUNC8 (char,char*) ; 
 int /*<<< orphan*/ * FUNC9 (int /*<<< orphan*/ ,char,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC11(int lab, Swtch swp, int lev) {
	int once = 0;
	Tree e1 = NULL, e2 = NULL, e3 = NULL;
	Coordinate pt2, pt3;
	
	t = FUNC6();
	FUNC3('(');
	FUNC2(NULL);
	if (kind[t] == ID)
		e1 = FUNC9(expr0, ';', FUNC);
	else
		FUNC3(';');
	FUNC10(e1, 0, 0);
	pt2 = src;
	refinc *= 10.0;
	if (kind[t] == ID)
		e2 = FUNC9(conditional, ';', FUNC);
	else
		FUNC3(';');
	pt3 = src;
	if (kind[t] == ID)
		e3 = FUNC9(expr0, ')', FUNC);
	else {
		static char stop[] = { IF, ID, '}', 0 };
		FUNC8(')', stop);
	}
	if (e2) {
		once = FUNC5(e1, e2);
		if (!once)
			FUNC0(lab + 3);
	}
	FUNC1(lab);
	FUNC7(lab, swp, lev);
	FUNC1(lab + 1);
	FUNC2(&pt3);
	if (e3)
		FUNC10(e3, 0, 0);
	if (e2) {
		if (!once)
			FUNC1(lab + 3);
		FUNC2(&pt2);
		FUNC10(e2, lab, 0);
	} else {
		FUNC2(&pt2);
		FUNC0(lab);
	}
	if (FUNC4(lab + 2)->ref)
		FUNC1(lab + 2);
}