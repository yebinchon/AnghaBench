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
struct TYPE_4__ {scalar_t__ AuthType; int /*<<< orphan*/  lock; } ;
typedef  TYPE_1__ USER ;
typedef  int /*<<< orphan*/  HUB ;

/* Variables and functions */
 scalar_t__ AUTHTYPE_ANONYMOUS ; 
 TYPE_1__* FUNC0 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 

bool FUNC6(HUB *h, char *username)
{
	bool b = false;
	// Validate arguments
	if (h == NULL || username == NULL)
	{
		return false;
	}

	FUNC1(h);
	{
		USER *u = FUNC0(h, username);
		if (u)
		{
			FUNC3(u->lock);
			{
				if (u->AuthType == AUTHTYPE_ANONYMOUS)
				{
					b = true;
				}
			}
			FUNC5(u->lock);
		}
		FUNC4(u);
	}
	FUNC2(h);

	return b;
}