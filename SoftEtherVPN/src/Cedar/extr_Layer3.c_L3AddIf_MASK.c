#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  int UINT ;
struct TYPE_10__ {int IpAddress; int SubnetMask; int /*<<< orphan*/  HubName; TYPE_2__* Switch; } ;
struct TYPE_9__ {int Active; int /*<<< orphan*/  lock; int /*<<< orphan*/  IfList; TYPE_1__* Cedar; int /*<<< orphan*/  TableList; } ;
struct TYPE_8__ {int /*<<< orphan*/  Server; } ;
typedef  TYPE_2__ L3SW ;
typedef  TYPE_3__ L3IF ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,TYPE_3__*) ; 
 int FUNC2 (char*) ; 
 int /*<<< orphan*/ * FUNC3 (TYPE_2__*,char*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int,char*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 TYPE_3__* FUNC8 (int) ; 

bool FUNC9(L3SW *s, char *hubname, UINT ip, UINT subnet)
{
	L3IF *f;
	bool ret = false;
	// Validate arguments
	if (s == NULL || hubname == NULL || FUNC2(hubname) == false ||
		ip == 0 || ip == 0xffffffff)
	{
		return false;
	}

	FUNC5(s->lock);
	{
		if (FUNC4(s->TableList) >= FUNC0(s->Cedar->Server, "i_max_l3_if"))
		{
			// Too many
		}
		else
		{
			if (s->Active == false)
			{
				// Examine whether the interface is already in the same Virtual HUB
				if (FUNC3(s, hubname) == NULL)
				{
					// Add
					f = FUNC8(sizeof(L3IF));

					f->Switch = s;
					FUNC6(f->HubName, sizeof(f->HubName), hubname);
					f->IpAddress = ip;
					f->SubnetMask = subnet;

					FUNC1(s->IfList, f);

					ret = true;
				}
			}
		}
	}
	FUNC7(s->lock);

	return ret;
}