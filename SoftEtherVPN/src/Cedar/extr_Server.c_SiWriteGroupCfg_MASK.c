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
struct TYPE_3__ {int /*<<< orphan*/  lock; int /*<<< orphan*/  Traffic; int /*<<< orphan*/ * Policy; int /*<<< orphan*/  Note; int /*<<< orphan*/  RealName; } ;
typedef  TYPE_1__ USERGROUP ;
typedef  int /*<<< orphan*/  FOLDER ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 

void FUNC6(FOLDER *f, USERGROUP *g)
{
	// Validate arguments
	if (f == NULL || g == NULL)
	{
		return;
	}

	FUNC2(g->lock);
	{
		FUNC0(f, "RealName", g->RealName);
		FUNC0(f, "Note", g->Note);
		if (g->Policy != NULL)
		{
			FUNC3(FUNC1(f, "Policy"), g->Policy, false);
		}
		FUNC4(f, "Traffic", g->Traffic);
	}
	FUNC5(g->lock);
}