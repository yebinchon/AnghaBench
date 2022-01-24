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
struct TYPE_8__ {int /*<<< orphan*/  HubList; } ;
struct TYPE_7__ {scalar_t__ RadiusConvertAllMsChapv2AuthRequestToEap; } ;
typedef  TYPE_1__ HUB ;
typedef  TYPE_2__ CEDAR ;

/* Variables and functions */
 TYPE_1__* FUNC0 (int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*) ; 

bool FUNC4(CEDAR *c)
{
	bool ret = false;
	UINT i;
	if (c == NULL)
	{
		return false;
	}

	FUNC2(c);
	{
		for (i = 0;i < FUNC1(c->HubList);i++)
		{
			HUB *hub = FUNC0(c->HubList, i);

			if (hub->RadiusConvertAllMsChapv2AuthRequestToEap)
			{
				ret = true;
				break;
			}
		}
	}
	FUNC3(c);

	return ret;
}