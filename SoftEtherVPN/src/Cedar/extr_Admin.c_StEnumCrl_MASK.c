#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_18__   TYPE_6__ ;
typedef  struct TYPE_17__   TYPE_5__ ;
typedef  struct TYPE_16__   TYPE_4__ ;
typedef  struct TYPE_15__   TYPE_3__ ;
typedef  struct TYPE_14__   TYPE_2__ ;
typedef  struct TYPE_13__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  wchar_t ;
typedef  int /*<<< orphan*/  hubname ;
typedef  size_t UINT ;
struct TYPE_18__ {int /*<<< orphan*/  Key; int /*<<< orphan*/  CrlInfo; } ;
struct TYPE_17__ {TYPE_2__* Server; } ;
struct TYPE_16__ {TYPE_1__* HubDb; } ;
struct TYPE_15__ {char* HubName; size_t NumItem; TYPE_6__* Items; } ;
struct TYPE_14__ {scalar_t__ ServerType; int /*<<< orphan*/ * Cedar; } ;
struct TYPE_13__ {int /*<<< orphan*/  CrlList; } ;
typedef  TYPE_2__ SERVER ;
typedef  int /*<<< orphan*/  RPC_ENUM_CRL_ITEM ;
typedef  TYPE_3__ RPC_ENUM_CRL ;
typedef  TYPE_4__ HUB ;
typedef  int /*<<< orphan*/  CRL ;
typedef  int /*<<< orphan*/  CEDAR ;
typedef  TYPE_5__ ADMIN ;

/* Variables and functions */
 int /*<<< orphan*/  CHECK_RIGHT ; 
 size_t ERR_HUB_NOT_FOUND ; 
 size_t ERR_NOT_SUPPORTED ; 
 size_t ERR_NO_ERROR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *) ; 
 TYPE_4__* FUNC3 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ ,size_t) ; 
 size_t FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  MAX_HUBNAME_LEN ; 
 int /*<<< orphan*/  NO_SUPPORT_FOR_BRIDGE ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_4__*) ; 
 scalar_t__ SERVER_TYPE_FARM_MEMBER ; 
 int /*<<< orphan*/  FUNC9 (char*,int,char*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_3__*,int) ; 
 TYPE_6__* FUNC13 (int) ; 

UINT FUNC14(ADMIN *a, RPC_ENUM_CRL *t)
{
	SERVER *s = a->Server;
	CEDAR *c = s->Cedar;
	HUB *h;
	UINT ret = ERR_NO_ERROR;
	char hubname[MAX_HUBNAME_LEN + 1];

	CHECK_RIGHT;
	NO_SUPPORT_FOR_BRIDGE;
	if (s->ServerType == SERVER_TYPE_FARM_MEMBER)
	{
		return ERR_NOT_SUPPORTED;
	}

	FUNC9(hubname, sizeof(hubname), t->HubName);
	FUNC1(t);
	FUNC12(t, sizeof(RPC_ENUM_CRL));

	FUNC9(t->HubName, sizeof(t->HubName), hubname);

	h = FUNC3(c, hubname);

	if (h == NULL)
	{
		ret = ERR_HUB_NOT_FOUND;
	}
	else
	{
		if (h->HubDb == NULL)
		{
			ret = ERR_NOT_SUPPORTED;
		}
		else
		{
			FUNC6(h->HubDb->CrlList);
			{
				UINT i;

				t->NumItem = FUNC5(h->HubDb->CrlList);
				t->Items = FUNC13(sizeof(RPC_ENUM_CRL_ITEM) * t->NumItem);

				for (i = 0;i < FUNC5(h->HubDb->CrlList);i++)
				{
					CRL *crl = FUNC4(h->HubDb->CrlList, i);
					wchar_t *info = FUNC2(crl);

					FUNC10(t->Items[i].CrlInfo, sizeof(t->Items[i].CrlInfo), info);
					FUNC0(info);

					t->Items[i].Key = FUNC7(crl);
				}
			}
			FUNC11(h->HubDb->CrlList);
		}

		FUNC8(h);
	}

	return ret;
}