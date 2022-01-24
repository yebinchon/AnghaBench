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
struct TYPE_3__ {int /*<<< orphan*/  lock; int /*<<< orphan*/  Traffic; } ;
typedef  TYPE_1__ USER ;
typedef  int /*<<< orphan*/  TRAFFIC ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int) ; 

void FUNC4(USER *u, TRAFFIC *t)
{
	// Validate arguments
	if (u == NULL)
	{
		return;
	}

	FUNC1(u->lock);
	{
		if (t != NULL)
		{
			FUNC0(u->Traffic, t, sizeof(TRAFFIC));
		}
		else
		{
			FUNC3(u->Traffic, sizeof(TRAFFIC));
		}
	}
	FUNC2(u->lock);
}