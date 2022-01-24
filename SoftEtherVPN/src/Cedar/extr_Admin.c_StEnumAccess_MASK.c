#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_18__   TYPE_5__ ;
typedef  struct TYPE_17__   TYPE_4__ ;
typedef  struct TYPE_16__   TYPE_3__ ;
typedef  struct TYPE_15__   TYPE_2__ ;
typedef  struct TYPE_14__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  hubname ;
typedef  size_t UINT ;
struct TYPE_18__ {int /*<<< orphan*/  UniqueId; } ;
struct TYPE_17__ {TYPE_1__* Server; } ;
struct TYPE_16__ {int /*<<< orphan*/  AccessList; } ;
struct TYPE_15__ {char* HubName; size_t NumAccess; TYPE_5__* Accesses; } ;
struct TYPE_14__ {scalar_t__ ServerType; int /*<<< orphan*/ * Cedar; } ;
typedef  TYPE_1__ SERVER ;
typedef  TYPE_2__ RPC_ENUM_ACCESS_LIST ;
typedef  TYPE_3__ HUB ;
typedef  int /*<<< orphan*/  CEDAR ;
typedef  TYPE_4__ ADMIN ;
typedef  TYPE_5__ ACCESS ;

/* Variables and functions */
 int /*<<< orphan*/  CHECK_RIGHT ; 
 int /*<<< orphan*/  FUNC0 (TYPE_5__*,int /*<<< orphan*/ ,int) ; 
 size_t ERR_HUB_NOT_FOUND ; 
 size_t ERR_NOT_SUPPORTED ; 
 size_t ERR_NO_ERROR ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 TYPE_3__* FUNC2 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,size_t) ; 
 size_t FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  MAX_HUBNAME_LEN ; 
 int /*<<< orphan*/  NO_SUPPORT_FOR_BRIDGE ; 
 int /*<<< orphan*/  FUNC8 (TYPE_3__*) ; 
 scalar_t__ SERVER_TYPE_FARM_MEMBER ; 
 int /*<<< orphan*/  FUNC9 (char*,int,char*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_2__*,int) ; 
 TYPE_5__* FUNC13 (int) ; 

UINT FUNC14(ADMIN *a, RPC_ENUM_ACCESS_LIST *t)
{
	SERVER *s = a->Server;
	CEDAR *c = s->Cedar;
	HUB *h;
	UINT i;
	char hubname[MAX_HUBNAME_LEN + 1];

	CHECK_RIGHT;
	NO_SUPPORT_FOR_BRIDGE;
	if (s->ServerType == SERVER_TYPE_FARM_MEMBER)
	{
		return ERR_NOT_SUPPORTED;
	}

	FUNC6(c);
	{
		h = FUNC2(c, t->HubName);
	}
	FUNC10(c);

	if (h == NULL)
	{
		return ERR_HUB_NOT_FOUND;
	}

	FUNC9(hubname, sizeof(hubname), t->HubName);
	FUNC1(t);
	FUNC12(t, sizeof(RPC_ENUM_ACCESS_LIST));
	FUNC9(t->HubName, sizeof(t->HubName), hubname);

	FUNC7(h->AccessList);
	{
		t->NumAccess = FUNC5(h->AccessList);
		t->Accesses = FUNC13(sizeof(ACCESS) * t->NumAccess);

		for (i = 0;i < FUNC5(h->AccessList);i++)
		{
			ACCESS *a = &t->Accesses[i];
			FUNC0(a, FUNC4(h->AccessList, i), sizeof(ACCESS));
			a->UniqueId = FUNC3(FUNC4(h->AccessList, i));
		}
	}
	FUNC11(h->AccessList);

	FUNC8(h);

	return ERR_NO_ERROR;
}