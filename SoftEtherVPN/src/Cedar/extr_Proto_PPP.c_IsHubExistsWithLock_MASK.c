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
struct TYPE_4__ {int /*<<< orphan*/  HubList; } ;
typedef  TYPE_1__ CEDAR ;

/* Variables and functions */
 int FUNC0 (TYPE_1__*,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

bool FUNC3(CEDAR *cedar, char *hubname)
{
	bool ret = false;
	// Validate arguments
	if (cedar == NULL || hubname == NULL)
	{
		return false;
	}

	FUNC1(cedar->HubList);
	{
		ret = FUNC0(cedar, hubname);
	}
	FUNC2(cedar->HubList);

	return ret;
}