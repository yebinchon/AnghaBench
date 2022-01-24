#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int nuids; int /*<<< orphan*/  nlabels; int /*<<< orphan*/  items; int /*<<< orphan*/  interfaces; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (scalar_t__) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,int,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 TYPE_1__* pickle ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  rcsid ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  stdout ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC8 (scalar_t__,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC10(void) {
	FUNC3(NULL);
	{
		int n = FUNC2(pickle->interfaces) + FUNC0(pickle->items);
		if (n != pickle->nuids - 1)
			FUNC4(stderr, "?bogus uid count: have %d should have %d\n",
				n, pickle->nuids-1);
	}
	pickle->nlabels = FUNC5(0);
	FUNC9((int)(100*(FUNC1(FUNC7(rcsid, ",v")), FUNC8(FUNC7(rcsid, ",v")+2, NULL))
), stdout);
	FUNC6(pickle, stdout);
}