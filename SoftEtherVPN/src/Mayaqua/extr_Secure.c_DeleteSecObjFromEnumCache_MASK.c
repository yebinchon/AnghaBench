#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ UINT ;
struct TYPE_8__ {int /*<<< orphan*/ * EnumCache; } ;
struct TYPE_7__ {scalar_t__ Type; int /*<<< orphan*/  Name; } ;
typedef  TYPE_1__ SEC_OBJ ;
typedef  TYPE_2__ SECURE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 TYPE_1__* FUNC2 (int /*<<< orphan*/ *,scalar_t__) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,char*) ; 

void FUNC5(SECURE *sec, char *name, UINT type)
{
	UINT i;
	// Validate arguments
	if (sec == NULL || name == NULL || sec->EnumCache == NULL)
	{
		return;
	}

	for (i = 0;i < FUNC3(sec->EnumCache);i++)
	{
		SEC_OBJ *obj = FUNC2(sec->EnumCache, i);

		if (FUNC4(obj->Name, name) == 0)
		{
			if (obj->Type == type)
			{
				FUNC0(sec->EnumCache, obj);
				FUNC1(obj);
				break;
			}
		}
	}
}