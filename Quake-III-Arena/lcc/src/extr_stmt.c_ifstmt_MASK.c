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
struct TYPE_2__ {scalar_t__ ref; } ;
typedef  int /*<<< orphan*/  Swtch ;

/* Variables and functions */
 scalar_t__ ELSE ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (char) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (char) ; 
 TYPE_1__* FUNC5 (int) ; 
 scalar_t__ FUNC6 () ; 
 double refinc ; 
 int /*<<< orphan*/  FUNC7 (int,int /*<<< orphan*/ ,int) ; 
 scalar_t__ t ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC9(int lab, int loop, Swtch swp, int lev) {
	t = FUNC6();
	FUNC4('(');
	FUNC3(NULL);
	FUNC8(FUNC1(')'), 0, lab);
	refinc /= 2.0;
	FUNC7(loop, swp, lev);
	if (t == ELSE) {
		FUNC0(lab + 1);
		t = FUNC6();
		FUNC2(lab);
		FUNC7(loop, swp, lev);
		if (FUNC5(lab + 1)->ref)
			FUNC2(lab + 1);
	} else
		FUNC2(lab);
}