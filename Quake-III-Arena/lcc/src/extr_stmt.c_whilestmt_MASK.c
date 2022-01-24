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
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  conditional ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (char) ; 
 TYPE_1__* FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 double refinc ; 
 int /*<<< orphan*/  src ; 
 int /*<<< orphan*/  FUNC6 (int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  t ; 
 int /*<<< orphan*/ * FUNC7 (int /*<<< orphan*/ ,char,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC9(int lab, Swtch swp, int lev) {
	Coordinate pt;
	Tree e;

	refinc *= 10.0;
	t = FUNC5();
	FUNC3('(');
	FUNC8(NULL, 0, 0);
	pt = src;
	e = FUNC7(conditional, ')', FUNC);
	FUNC0(lab + 1);
	FUNC1(lab);
	FUNC6(lab, swp, lev);
	FUNC1(lab + 1);
	FUNC2(&pt);
	FUNC8(e, lab, 0);
	if (FUNC4(lab + 2)->ref)
		FUNC1(lab + 2);
}