#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_20__   TYPE_6__ ;
typedef  struct TYPE_19__   TYPE_5__ ;
typedef  struct TYPE_18__   TYPE_4__ ;
typedef  struct TYPE_17__   TYPE_3__ ;
typedef  struct TYPE_16__   TYPE_2__ ;
typedef  struct TYPE_15__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  name ;
typedef  size_t UINT ;
struct TYPE_20__ {TYPE_1__* Server; } ;
struct TYPE_19__ {char* HubName; int /*<<< orphan*/  SubnetMask; int /*<<< orphan*/  IpAddress; } ;
struct TYPE_18__ {char* Name; int /*<<< orphan*/  lock; int /*<<< orphan*/  IfList; } ;
struct TYPE_17__ {char* Name; int NumItem; TYPE_2__* Items; } ;
struct TYPE_16__ {char* Name; char* HubName; int /*<<< orphan*/  SubnetMask; int /*<<< orphan*/  IpAddress; } ;
struct TYPE_15__ {int /*<<< orphan*/ * Cedar; } ;
typedef  TYPE_1__ SERVER ;
typedef  TYPE_2__ RPC_L3IF ;
typedef  TYPE_3__ RPC_ENUM_L3IF ;
typedef  TYPE_4__ L3SW ;
typedef  TYPE_5__ L3IF ;
typedef  int /*<<< orphan*/  CEDAR ;
typedef  TYPE_6__ ADMIN ;

/* Variables and functions */
 size_t ERR_LAYER3_SW_NOT_FOUND ; 
 size_t ERR_NO_ERROR ; 
 int /*<<< orphan*/  FUNC0 (TYPE_3__*) ; 
 TYPE_4__* FUNC1 (int /*<<< orphan*/ *,char*) ; 
 TYPE_5__* FUNC2 (int /*<<< orphan*/ ,size_t) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  MAX_HUBNAME_LEN ; 
 int /*<<< orphan*/  NO_SUPPORT_FOR_BRIDGE ; 
 int /*<<< orphan*/  FUNC5 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC6 (char*,int,char*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_3__*,int) ; 
 TYPE_2__* FUNC9 (int) ; 

UINT FUNC10(ADMIN *a, RPC_ENUM_L3IF *t)
{
	SERVER *s = a->Server;
	CEDAR *c = s->Cedar;
	UINT ret = ERR_NO_ERROR;
	L3SW *sw;
	char name[MAX_HUBNAME_LEN + 1];

	NO_SUPPORT_FOR_BRIDGE;

	FUNC6(name, sizeof(name), t->Name);

	FUNC0(t);
	FUNC8(t, sizeof(RPC_ENUM_L3IF));

	FUNC6(t->Name, sizeof(t->Name), name);

	sw = FUNC1(c, t->Name);

	if (sw == NULL)
	{
		ret = ERR_LAYER3_SW_NOT_FOUND;
	}
	else
	{
		FUNC4(sw->lock);
		{
			UINT i;

			t->NumItem = FUNC3(sw->IfList);
			t->Items = FUNC9(sizeof(RPC_L3IF) * t->NumItem);

			for (i = 0;i < t->NumItem;i++)
			{
				L3IF *f = FUNC2(sw->IfList, i);
				RPC_L3IF *e = &t->Items[i];

				FUNC6(e->Name, sizeof(e->Name), sw->Name);
				FUNC6(e->HubName, sizeof(e->HubName), f->HubName);
				e->IpAddress = f->IpAddress;
				e->SubnetMask = f->SubnetMask;
			}
		}
		FUNC7(sw->lock);

		FUNC5(sw);
	}

	return ret;
}