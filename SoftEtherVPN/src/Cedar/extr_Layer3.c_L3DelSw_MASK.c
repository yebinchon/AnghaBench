#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  L3SwList; } ;
typedef  int /*<<< orphan*/  L3SW ;
typedef  TYPE_1__ CEDAR ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (TYPE_1__*,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 

bool FUNC6(CEDAR *c, char *name)
{
	L3SW *s;
	bool ret = false;
	// Validate arguments
	if (c == NULL || name == NULL)
	{
		return false;
	}

	FUNC3(c->L3SwList);
	{
		s = FUNC1(c, name);

		if (s != NULL)
		{
			// Stop and delete
			FUNC2(s);
			FUNC0(c->L3SwList, s);
			FUNC4(s);
			FUNC4(s);

			ret = true;
		}
	}
	FUNC5(c->L3SwList);

	return ret;
}