#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
struct TYPE_12__ {int /*<<< orphan*/  L3SwList; } ;
struct TYPE_11__ {int /*<<< orphan*/  ref; } ;
typedef  TYPE_1__ L3SW ;
typedef  TYPE_2__ CEDAR ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,TYPE_1__*) ; 
 TYPE_1__* FUNC2 (TYPE_2__*,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC4 (TYPE_2__*,char*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 

L3SW *FUNC7(CEDAR *c, char *name)
{
	L3SW *s = NULL;
	// Validate arguments
	if (c == NULL || name == NULL)
	{
		return NULL;
	}

	FUNC3(c->L3SwList);
	{
		s = FUNC2(c, name);

		if (s == NULL)
		{
			s = FUNC4(c, name);

			FUNC1(c->L3SwList, s);

			FUNC0(s->ref);
		}
		else
		{
			FUNC5(s);
			s = NULL;
		}
	}
	FUNC6(c->L3SwList);

	return s;
}