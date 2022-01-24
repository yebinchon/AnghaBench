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
typedef  size_t UINT ;
struct TYPE_4__ {int /*<<< orphan*/ * AllList; int /*<<< orphan*/ ** Entries; int /*<<< orphan*/  NumItems; } ;
typedef  TYPE_1__ HASH_LIST ;

/* Variables and functions */
 size_t FUNC0 (TYPE_1__*,void*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,void*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

bool FUNC4(HASH_LIST *h, void *p)
{
	UINT r;
	bool ret = false;
	// Validate arguments
	if (h == NULL || p == NULL)
	{
		return false;
	}

	r = FUNC0(h, p);

	if (h->Entries[r] != NULL)
	{
		if (FUNC1(h->Entries[r], p))
		{
			ret = true;
			h->NumItems--;
		}

		if (FUNC2(h->Entries[r]) == 0)
		{
			FUNC3(h->Entries[r]);
			h->Entries[r] = NULL;
		}
	}

	if (ret)
	{
		if (h->AllList != NULL)
		{
			FUNC1(h->AllList, p);
		}
	}

	return ret;
}