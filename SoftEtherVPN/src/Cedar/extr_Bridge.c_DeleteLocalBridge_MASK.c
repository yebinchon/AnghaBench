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
struct TYPE_8__ {int /*<<< orphan*/  HubList; int /*<<< orphan*/  LocalBridgeList; } ;
struct TYPE_7__ {int /*<<< orphan*/ * Bridge; int /*<<< orphan*/  DeviceName; int /*<<< orphan*/  HubName; } ;
typedef  TYPE_1__ LOCALBRIDGE ;
typedef  TYPE_2__ CEDAR ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 TYPE_1__* FUNC3 (int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 

bool FUNC8(CEDAR *c, char *hubname, char *devicename)
{
	bool ret = false;
	// Validate arguments
	if (c == NULL || hubname == NULL || devicename == NULL)
	{
		return false;
	}

	FUNC5(c->HubList);
	{
		FUNC5(c->LocalBridgeList);
		{
			UINT i;

			for (i = 0;i < FUNC4(c->LocalBridgeList);i++)
			{
				LOCALBRIDGE *br = FUNC3(c->LocalBridgeList, i);

				if (FUNC6(br->HubName, hubname) == 0)
				{
					if (FUNC6(br->DeviceName, devicename) == 0)
					{
						if (br->Bridge != NULL)
						{
							FUNC0(br->Bridge);
							br->Bridge = NULL;
						}

						FUNC1(c->LocalBridgeList, br);
						FUNC2(br);

						ret = true;
						break;
					}
				}
			}
		}
		FUNC7(c->LocalBridgeList);
	}
	FUNC7(c->HubList);

	return ret;
}