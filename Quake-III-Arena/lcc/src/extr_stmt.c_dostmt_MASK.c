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
 char WHILE ; 
 int /*<<< orphan*/  FUNC0 (char) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (char) ; 
 TYPE_1__* FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 double refinc ; 
 int /*<<< orphan*/  FUNC6 (int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  t ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC8(int lab, Swtch swp, int lev) {
	refinc *= 10.0;
	t = FUNC5();
	FUNC1(lab);
	FUNC6(lab, swp, lev);
	FUNC1(lab + 1);
	FUNC3(WHILE);
	FUNC3('(');
	FUNC2(NULL);
	FUNC7(FUNC0(')'), lab, 0);
	if (FUNC4(lab + 2)->ref)
		FUNC1(lab + 2);
}