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
struct TYPE_4__ {int /*<<< orphan*/  CapsCacheLock; int /*<<< orphan*/ * CapsListCache; } ;
typedef  TYPE_1__ SERVER ;
typedef  int /*<<< orphan*/  CAPSLIST ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC4 (int) ; 

void FUNC5(SERVER *s, CAPSLIST *t)
{
	// Validate arguments
	if (s == NULL || t == NULL)
	{
		return;
	}

	FUNC2(s->CapsCacheLock);
	{

		if (s->CapsListCache == NULL)
		{
			s->CapsListCache = FUNC4(sizeof(CAPSLIST));
			FUNC1(s, s->CapsListCache);
		}

		FUNC0(t, s->CapsListCache, sizeof(CAPSLIST));
	}
	FUNC3(s->CapsCacheLock);
}