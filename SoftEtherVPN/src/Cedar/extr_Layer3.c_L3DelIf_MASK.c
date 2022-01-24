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
struct TYPE_4__ {int Active; int /*<<< orphan*/  lock; int /*<<< orphan*/  IfList; } ;
typedef  TYPE_1__ L3SW ;
typedef  int /*<<< orphan*/  L3IF ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (TYPE_1__*,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

bool FUNC5(L3SW *s, char *hubname)
{
	L3IF *f;
	bool ret = false;
	// Validate arguments
	if (s == NULL || hubname == NULL)
	{
		return false;
	}

	FUNC3(s->lock);
	{
		if (s->Active == false)
		{
			f = FUNC2(s, hubname);

			if (f != NULL)
			{
				// Remove
				FUNC0(s->IfList, f);
				FUNC1(f);

				ret = true;
			}
		}
	}
	FUNC4(s->lock);

	return ret;
}