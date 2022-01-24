#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_16__   TYPE_5__ ;
typedef  struct TYPE_15__   TYPE_4__ ;
typedef  struct TYPE_14__   TYPE_3__ ;
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  hubname ;
typedef  int /*<<< orphan*/  UINT ;
struct TYPE_16__ {TYPE_2__* Server; } ;
struct TYPE_15__ {TYPE_1__* HubDb; } ;
struct TYPE_14__ {char* HubName; int /*<<< orphan*/  Crl; int /*<<< orphan*/  Key; } ;
struct TYPE_13__ {scalar_t__ ServerType; int /*<<< orphan*/ * Cedar; } ;
struct TYPE_12__ {int /*<<< orphan*/  CrlList; } ;
typedef  TYPE_2__ SERVER ;
typedef  TYPE_3__ RPC_CRL ;
typedef  TYPE_4__ HUB ;
typedef  int /*<<< orphan*/  CRL ;
typedef  int /*<<< orphan*/  CEDAR ;
typedef  TYPE_5__ ADMIN ;

/* Variables and functions */
 int /*<<< orphan*/  CHECK_RIGHT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  ERR_HUB_NOT_FOUND ; 
 int /*<<< orphan*/  ERR_NOT_SUPPORTED ; 
 int /*<<< orphan*/  ERR_NO_ERROR ; 
 int /*<<< orphan*/  ERR_OBJECT_NOT_FOUND ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*) ; 
 TYPE_4__* FUNC2 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  MAX_HUBNAME_LEN ; 
 int /*<<< orphan*/  NO_SUPPORT_FOR_BRIDGE ; 
 int /*<<< orphan*/  FUNC5 (TYPE_4__*) ; 
 scalar_t__ SERVER_TYPE_FARM_MEMBER ; 
 int /*<<< orphan*/  FUNC6 (char*,int,char*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_3__*,int) ; 

UINT FUNC9(ADMIN *a, RPC_CRL *t)
{
	SERVER *s = a->Server;
	CEDAR *c = s->Cedar;
	HUB *h;
	UINT ret = ERR_NO_ERROR;
	UINT key;
	char hubname[MAX_HUBNAME_LEN + 1];

	CHECK_RIGHT;
	NO_SUPPORT_FOR_BRIDGE;
	if (s->ServerType == SERVER_TYPE_FARM_MEMBER)
	{
		return ERR_NOT_SUPPORTED;
	}

	FUNC6(hubname, sizeof(hubname), t->HubName);
	key = t->Key;

	FUNC1(t);
	FUNC8(t, sizeof(RPC_CRL));
	FUNC6(t->HubName, sizeof(t->HubName), hubname);
	t->Key = key;

	h = FUNC2(c, hubname);

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
			FUNC4(h->HubDb->CrlList);
			{
				CRL *crl = FUNC3(h->HubDb->CrlList, t->Key);

				if (crl == NULL)
				{
					ret = ERR_OBJECT_NOT_FOUND;
				}
				else
				{
					t->Crl = FUNC0(crl);
				}
			}
			FUNC7(h->HubDb->CrlList);
		}

		FUNC5(h);
	}

	return ret;
}