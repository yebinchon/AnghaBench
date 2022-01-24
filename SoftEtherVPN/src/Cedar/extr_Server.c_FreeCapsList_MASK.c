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
struct TYPE_4__ {int /*<<< orphan*/  CapsList; } ;
typedef  TYPE_1__ CAPSLIST ;
typedef  int /*<<< orphan*/  CAPS ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

void FUNC5(CAPSLIST *caps)
{
	UINT i;
	// Validate arguments
	if (caps == NULL)
	{
		return;
	}

	for (i = 0;i < FUNC3(caps->CapsList);i++)
	{
		CAPS *c = FUNC2(caps->CapsList, i);

		FUNC1(c);
	}

	FUNC4(caps->CapsList);
	FUNC0(caps);
}