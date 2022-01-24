#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  t ;
struct TYPE_9__ {int /*<<< orphan*/  L3SwList; } ;
struct TYPE_8__ {int /*<<< orphan*/  ref; int /*<<< orphan*/  Name; } ;
typedef  TYPE_1__ L3SW ;
typedef  TYPE_2__ CEDAR ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC2 (int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,int) ; 

L3SW *FUNC6(CEDAR *c, char *name)
{
	L3SW t, *s;
	// Validate arguments
	if (c == NULL || name == NULL)
	{
		return NULL;
	}

	FUNC5(&t, sizeof(t));
	FUNC3(t.Name, sizeof(t.Name), name);

	FUNC1(c->L3SwList);
	{
		s = FUNC2(c->L3SwList, &t);
	}
	FUNC4(c->L3SwList);

	if (s != NULL)
	{
		FUNC0(s->ref);
	}

	return s;
}