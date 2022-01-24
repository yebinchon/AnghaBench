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
typedef  int /*<<< orphan*/  UINT ;
struct TYPE_18__ {int ServerAdmin; TYPE_2__* Server; } ;
struct TYPE_17__ {TYPE_1__* HubDb; } ;
struct TYPE_16__ {int /*<<< orphan*/  Crl; int /*<<< orphan*/  Key; int /*<<< orphan*/  HubName; } ;
struct TYPE_15__ {scalar_t__ ServerType; int /*<<< orphan*/ * Cedar; } ;
struct TYPE_14__ {int /*<<< orphan*/  CrlList; } ;
typedef  TYPE_2__ SERVER ;
typedef  TYPE_3__ RPC_CRL ;
typedef  TYPE_4__ HUB ;
typedef  int /*<<< orphan*/  CRL ;
typedef  int /*<<< orphan*/  CEDAR ;
typedef  TYPE_5__ ADMIN ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_5__*,TYPE_4__*,char*) ; 
 int /*<<< orphan*/  CHECK_RIGHT ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ERR_HUB_NOT_FOUND ; 
 int /*<<< orphan*/  ERR_NOT_ENOUGH_RIGHT ; 
 int /*<<< orphan*/  ERR_NOT_SUPPORTED ; 
 int /*<<< orphan*/  ERR_NO_ERROR ; 
 int /*<<< orphan*/  ERR_OBJECT_NOT_FOUND ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 TYPE_4__* FUNC3 (int /*<<< orphan*/ *,char*) ; 
 scalar_t__ FUNC4 (TYPE_4__*,char*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*) ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  MAX_HUBNAME_LEN ; 
 int /*<<< orphan*/  NO_SUPPORT_FOR_BRIDGE ; 
 int /*<<< orphan*/  FUNC8 (TYPE_4__*) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ SERVER_TYPE_FARM_MEMBER ; 
 int /*<<< orphan*/  FUNC10 (char*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 

UINT FUNC12(ADMIN *a, RPC_CRL *t)
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

	FUNC10(hubname, sizeof(hubname), t->HubName);
	key = t->Key;

	h = FUNC3(c, hubname);

	if (h == NULL)
	{
		ret = ERR_HUB_NOT_FOUND;
	}
	else
	{
		if (a->ServerAdmin == false && FUNC4(h, "no_change_crl_list") != 0)
		{
			ret = ERR_NOT_ENOUGH_RIGHT;
		}
		else
		{
			if (h->HubDb == NULL)
			{
				ret = ERR_NOT_SUPPORTED;
			}
			else
			{
				FUNC7(h->HubDb->CrlList);
				{
					CRL *crl = FUNC6(h->HubDb->CrlList, t->Key);

					if (crl == NULL)
					{
						ret = ERR_OBJECT_NOT_FOUND;
					}
					else
					{
						CRL *new_crl = FUNC1(t->Crl);
						if (FUNC9(h->HubDb->CrlList, crl, new_crl))
						{
							FUNC0(a, h, "LA_ADD_CRL");
							FUNC2(crl);

							FUNC5(s);
						}
					}
				}
				FUNC11(h->HubDb->CrlList);
			}
		}

		FUNC8(h);
	}

	return ret;
}