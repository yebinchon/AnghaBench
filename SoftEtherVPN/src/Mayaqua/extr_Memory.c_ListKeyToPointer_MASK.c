#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  scalar_t__ UINT ;
typedef  int /*<<< orphan*/  LIST ;

/* Variables and functions */
 void* FUNC0 (int /*<<< orphan*/ *,scalar_t__) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (void*) ; 

void *FUNC3(LIST *o, UINT key)
{
	UINT i;
	// Validate arguments
	if (o == NULL || key == 0)
	{
		return NULL;
	}

	for (i = 0;i < FUNC1(o);i++)
	{
		void *p = FUNC0(o, i);

		if (FUNC2(p) == key)
		{
			return p;
		}
	}

	return NULL;
}