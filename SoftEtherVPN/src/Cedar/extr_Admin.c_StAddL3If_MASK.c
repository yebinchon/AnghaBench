#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_16__   TYPE_4__ ;
typedef  struct TYPE_15__   TYPE_3__ ;
typedef  struct TYPE_14__   TYPE_2__ ;
typedef  struct TYPE_13__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  UINT ;
struct TYPE_16__ {TYPE_1__* Server; } ;
struct TYPE_15__ {int /*<<< orphan*/  lock; } ;
struct TYPE_14__ {int SubnetMask; int IpAddress; int /*<<< orphan*/  Name; int /*<<< orphan*/  HubName; } ;
struct TYPE_13__ {int /*<<< orphan*/ * Cedar; } ;
typedef  TYPE_1__ SERVER ;
typedef  TYPE_2__ RPC_L3IF ;
typedef  TYPE_3__ L3SW ;
typedef  int /*<<< orphan*/  CEDAR ;
typedef  TYPE_4__ ADMIN ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_4__*,int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ERR_INVALID_PARAMETER ; 
 int /*<<< orphan*/  ERR_LAYER3_IF_ADD_FAILED ; 
 int /*<<< orphan*/  ERR_LAYER3_IF_EXISTS ; 
 int /*<<< orphan*/  ERR_LAYER3_SW_NOT_FOUND ; 
 int /*<<< orphan*/  ERR_NO_ERROR ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int FUNC2 (int) ; 
 int FUNC3 (int) ; 
 int FUNC4 (TYPE_3__*,int /*<<< orphan*/ ,int,int) ; 
 TYPE_3__* FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC6 (TYPE_3__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  NO_SUPPORT_FOR_BRIDGE ; 
 int /*<<< orphan*/  FUNC8 (TYPE_3__*) ; 
 int /*<<< orphan*/  SERVER_ADMIN_ONLY ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 

UINT FUNC10(ADMIN *a, RPC_L3IF *t)
{
	SERVER *s = a->Server;
	CEDAR *c = s->Cedar;
	UINT ret = ERR_NO_ERROR;
	L3SW *sw;


	if (FUNC3(t->SubnetMask) == false || FUNC2(t->IpAddress) == false)
	{
		return ERR_INVALID_PARAMETER;
	}
	if ((t->IpAddress & (~t->SubnetMask)) == 0)
	{
		return ERR_INVALID_PARAMETER;
	}

	NO_SUPPORT_FOR_BRIDGE;

	SERVER_ADMIN_ONLY;

	sw = FUNC5(c, t->Name);

	if (sw == NULL)
	{
		ret = ERR_LAYER3_SW_NOT_FOUND;
	}
	else
	{
		FUNC7(sw->lock);
		{
			if (FUNC6(sw, t->HubName) != NULL)
			{
				// Already exists
				ret = ERR_LAYER3_IF_EXISTS;
			}
			else
			{
				if (FUNC4(sw, t->HubName, t->IpAddress, t->SubnetMask) == false)
				{
					ret = ERR_LAYER3_IF_ADD_FAILED;
				}
				else
				{
					FUNC0(a, NULL, "LA_ADD_L3_IF", t->HubName, t->Name);

					FUNC1(s);
				}
			}
		}
		FUNC9(sw->lock);
		FUNC8(sw);
	}

	return ret;
}