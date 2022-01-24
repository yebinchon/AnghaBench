#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_19__   TYPE_6__ ;
typedef  struct TYPE_18__   TYPE_5__ ;
typedef  struct TYPE_17__   TYPE_4__ ;
typedef  struct TYPE_16__   TYPE_3__ ;
typedef  struct TYPE_15__   TYPE_2__ ;
typedef  struct TYPE_14__   TYPE_1__ ;

/* Type definitions */
typedef  size_t UINT ;
struct TYPE_19__ {int /*<<< orphan*/  MacHashTable; } ;
struct TYPE_18__ {int /*<<< orphan*/  VlanId; int /*<<< orphan*/  UpdatedTime; int /*<<< orphan*/  CreatedTime; int /*<<< orphan*/  MacAddress; TYPE_1__* Session; } ;
struct TYPE_17__ {int NumMacTable; TYPE_3__* MacTables; int /*<<< orphan*/  HubName; } ;
struct TYPE_16__ {int /*<<< orphan*/  RemoteHostname; int /*<<< orphan*/  VlanId; void* UpdatedTime; void* CreatedTime; int /*<<< orphan*/  MacAddress; int /*<<< orphan*/  SessionName; int /*<<< orphan*/  Key; } ;
struct TYPE_15__ {int /*<<< orphan*/ * Cedar; } ;
struct TYPE_14__ {char* Name; } ;
typedef  TYPE_2__ SERVER ;
typedef  TYPE_3__ RPC_ENUM_MAC_TABLE_ITEM ;
typedef  TYPE_4__ RPC_ENUM_MAC_TABLE ;
typedef  TYPE_5__ MAC_TABLE_ENTRY ;
typedef  TYPE_6__ HUB ;
typedef  int /*<<< orphan*/  CEDAR ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 size_t ERR_HUB_NOT_FOUND ; 
 size_t ERR_INTERNAL_ERROR ; 
 size_t ERR_NO_ERROR ; 
 int /*<<< orphan*/  FUNC1 (TYPE_5__**) ; 
 TYPE_6__* FUNC2 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_6__*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int,char*) ; 
 void* FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 TYPE_3__* FUNC13 (int) ; 

UINT FUNC14(SERVER *s, char *hubname, RPC_ENUM_MAC_TABLE *t)
{
	CEDAR *c;
	UINT i;
	HUB *h = NULL;
	// Validate arguments
	if (s == NULL || hubname == NULL || t == NULL)
	{
		return ERR_INTERNAL_ERROR;
	}

	c = s->Cedar;

	FUNC6(c);
	{
		h = FUNC2(c, hubname);
	}
	FUNC12(c);

	if (h == NULL)
	{
		return ERR_HUB_NOT_FOUND;
	}

	FUNC9(t->HubName, sizeof(t->HubName), hubname);

	FUNC5(h->MacHashTable);
	{
		MAC_TABLE_ENTRY **pp = (MAC_TABLE_ENTRY **)FUNC4(h->MacHashTable, &t->NumMacTable);
		t->MacTables = FUNC13(sizeof(RPC_ENUM_MAC_TABLE_ITEM) * t->NumMacTable);

		for (i = 0;i < t->NumMacTable;i++)
		{
			RPC_ENUM_MAC_TABLE_ITEM *e = &t->MacTables[i];
			MAC_TABLE_ENTRY *mac = pp[i];

			e->Key = FUNC7(mac);
			FUNC9(e->SessionName, sizeof(e->SessionName), mac->Session->Name);
			FUNC0(e->MacAddress, mac->MacAddress, sizeof(e->MacAddress));
			e->CreatedTime = FUNC10(mac->CreatedTime);
			e->UpdatedTime = FUNC10(mac->UpdatedTime);
			e->VlanId = mac->VlanId;

			FUNC3(e->RemoteHostname, sizeof(e->RemoteHostname));
		}

		FUNC1(pp);
	}
	FUNC11(h->MacHashTable);

	FUNC8(h);

	return ERR_NO_ERROR;
}