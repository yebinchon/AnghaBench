#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ UINT ;
struct TYPE_6__ {int /*<<< orphan*/ * L3SwList; } ;
struct TYPE_5__ {int /*<<< orphan*/  Name; } ;
typedef  int /*<<< orphan*/  LIST ;
typedef  TYPE_1__ L3SW ;
typedef  TYPE_2__ CEDAR ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,char*) ; 
 void* FUNC4 (int /*<<< orphan*/ *,scalar_t__) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 

void FUNC10(CEDAR *c)
{
	LIST *o;
	UINT i;
	// Validate arguments
	if (c == NULL)
	{
		return;
	}

	o = FUNC7(NULL);

	FUNC6(c->L3SwList);
	{
		for (i = 0;i < FUNC5(c->L3SwList);i++)
		{
			L3SW *s = FUNC4(c->L3SwList, i);
			FUNC2(o, FUNC0(s->Name));
		}

		for (i = 0;i < FUNC5(o);i++)
		{
			char *name = FUNC4(o, i);

			FUNC3(c, name);

			FUNC1(name);
		}

		FUNC8(o);
	}
	FUNC9(c->L3SwList);
}