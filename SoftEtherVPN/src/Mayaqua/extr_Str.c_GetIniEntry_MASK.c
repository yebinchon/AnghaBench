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
typedef  scalar_t__ UINT ;
struct TYPE_4__ {int /*<<< orphan*/  Key; } ;
typedef  int /*<<< orphan*/  LIST ;
typedef  TYPE_1__ INI_ENTRY ;

/* Variables and functions */
 TYPE_1__* FUNC0 (int /*<<< orphan*/ *,scalar_t__) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,char*) ; 

INI_ENTRY *FUNC3(LIST *o, char *key)
{
	UINT i;
	// Validate arguments
	if (o == NULL || key == NULL)
	{
		return NULL;
	}

	for (i = 0;i < FUNC1(o);i++)
	{
		INI_ENTRY *e = FUNC0(o, i);

		if (FUNC2(e->Key, key) == 0)
		{
			return e;
		}
	}

	return NULL;
}