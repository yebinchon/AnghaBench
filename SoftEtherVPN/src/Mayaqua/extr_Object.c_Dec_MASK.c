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
typedef  scalar_t__ UINT ;
struct TYPE_3__ {int Ready; scalar_t__ c; int /*<<< orphan*/  lock; } ;
typedef  TYPE_1__ COUNTER ;

/* Variables and functions */
 int /*<<< orphan*/  KS_CURRENT_COUNT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  KS_DEC_COUNT ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

UINT FUNC4(COUNTER *c)
{
	UINT ret;
	// Validate arguments
	if (c == NULL)
	{
		return 0;
	}
	if (c->Ready == false)
	{
		return 0;
	}

	FUNC2(c->lock);
	{
		if (c->c != 0)
		{
			c->c--;
			ret = c->c;
		}
		else
		{
			ret = 0;
		}
	}
	FUNC3(c->lock);

	// KS
	FUNC1(KS_DEC_COUNT);
	FUNC0(KS_CURRENT_COUNT);

	return ret;
}