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
typedef  int /*<<< orphan*/  wchar_t ;
struct TYPE_4__ {int /*<<< orphan*/  Traffic; int /*<<< orphan*/ * Policy; void* Note; void* RealName; int /*<<< orphan*/  Name; int /*<<< orphan*/  ref; int /*<<< orphan*/  lock; } ;
typedef  TYPE_1__ USERGROUP ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 void* FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 TYPE_1__* FUNC5 (int) ; 

USERGROUP *FUNC6(char *name, wchar_t *realname, wchar_t *note)
{
	USERGROUP *g;
	// Validate arguments
	if (name == NULL || realname == NULL || note == NULL)
	{
		return NULL;
	}

	g = FUNC5(sizeof(USERGROUP));
	g->lock = FUNC2();
	g->ref = FUNC3();
	g->Name = FUNC0(name);
	g->RealName = FUNC1(realname);
	g->Note = FUNC1(note);
	g->Policy = NULL;
	g->Traffic = FUNC4();

	return g;
}