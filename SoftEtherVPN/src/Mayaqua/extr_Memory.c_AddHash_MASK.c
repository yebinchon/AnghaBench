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
struct TYPE_4__ {int /*<<< orphan*/  NumItems; int /*<<< orphan*/ * AllList; int /*<<< orphan*/ ** Entries; int /*<<< orphan*/  CompareProc; } ;
typedef  TYPE_1__ HASH_LIST ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,void*) ; 
 size_t FUNC1 (TYPE_1__*,void*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,void*) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ ) ; 

void FUNC4(HASH_LIST *h, void *p)
{
	UINT r;
	// Validate arguments
	if (h == NULL || p == NULL)
	{
		return;
	}

	r = FUNC1(h, p);

	if (h->Entries[r] == NULL)
	{
		h->Entries[r] = FUNC3(h->CompareProc);
	}

	FUNC2(h->Entries[r], p);

	if (h->AllList != NULL)
	{
		FUNC0(h->AllList, p);
	}

	h->NumItems++;
}