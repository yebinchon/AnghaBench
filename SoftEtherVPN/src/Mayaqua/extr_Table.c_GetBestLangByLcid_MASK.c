#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ UINT ;
struct TYPE_5__ {int /*<<< orphan*/  LcidList; } ;
typedef  int /*<<< orphan*/  LIST ;
typedef  TYPE_1__ LANGLIST ;

/* Variables and functions */
 TYPE_1__* FUNC0 (int /*<<< orphan*/ *,char*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,scalar_t__) ; 
 TYPE_1__* FUNC2 (int /*<<< orphan*/ *,scalar_t__) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 

LANGLIST *FUNC4(LIST *o, UINT lcid)
{
	LANGLIST *ret;
	UINT i;
	// Validate arguments
	if (o == NULL)
	{
		return NULL;
	}

	for (i = 0;i < FUNC3(o);i++)
	{
		LANGLIST *e = FUNC2(o, i);

		if (FUNC1(e->LcidList, lcid))
		{
			return e;
		}
	}

	ret = FUNC0(o, "en");

	return ret;
}