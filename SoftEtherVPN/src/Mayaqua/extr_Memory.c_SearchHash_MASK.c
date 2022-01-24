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
struct TYPE_4__ {int /*<<< orphan*/ ** Entries; } ;
typedef  int /*<<< orphan*/  LIST ;
typedef  TYPE_1__ HASH_LIST ;

/* Variables and functions */
 size_t FUNC0 (TYPE_1__*,void*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,void*) ; 

void *FUNC2(HASH_LIST *h, void *t)
{
	UINT r;
	void *ret = NULL;
	// Validate arguments
	if (h == NULL || t == NULL)
	{
		return NULL;
	}

	r = FUNC0(h, t);

	if (h->Entries[r] != NULL)
	{
		LIST *o = h->Entries[r];
		void *r = FUNC1(o, t);

		if (r != NULL)
		{
			ret = r;
		}
	}

	return ret;
}