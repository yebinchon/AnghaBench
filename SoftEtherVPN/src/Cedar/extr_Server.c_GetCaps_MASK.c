#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ UINT ;
struct TYPE_7__ {int /*<<< orphan*/  Name; } ;
struct TYPE_6__ {int /*<<< orphan*/  CapsList; } ;
typedef  TYPE_1__ CAPSLIST ;
typedef  TYPE_2__ CAPS ;

/* Variables and functions */
 TYPE_2__* FUNC0 (int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,char*) ; 

CAPS *FUNC3(CAPSLIST *caps, char *name)
{
	UINT i;
	// Validate arguments
	if (caps == NULL || name == NULL)
	{
		return NULL;
	}

	for (i = 0;i < FUNC1(caps->CapsList);i++)
	{
		CAPS *c = FUNC0(caps->CapsList, i);

		if (FUNC2(c->Name, name) == 0)
		{
			return c;
		}
	}

	return NULL;
}