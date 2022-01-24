#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_24__   TYPE_5__ ;
typedef  struct TYPE_23__   TYPE_4__ ;
typedef  struct TYPE_22__   TYPE_3__ ;
typedef  struct TYPE_21__   TYPE_2__ ;
typedef  struct TYPE_20__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ UINT ;
struct TYPE_24__ {scalar_t__ Jitter; scalar_t__ Loss; scalar_t__ Delay; int /*<<< orphan*/  DestUsername; int /*<<< orphan*/  SrcUsername; int /*<<< orphan*/  RedirectUrl; scalar_t__ IsIPv6; } ;
struct TYPE_23__ {int ServerAdmin; int ClientBuild; TYPE_1__* Server; } ;
struct TYPE_22__ {int /*<<< orphan*/  AccessList; int /*<<< orphan*/  CurrentVersion; } ;
struct TYPE_21__ {int NumAccess; TYPE_5__* Accesses; int /*<<< orphan*/  HubName; } ;
struct TYPE_20__ {scalar_t__ ServerType; int /*<<< orphan*/ * Cedar; } ;
typedef  TYPE_1__ SERVER ;
typedef  TYPE_2__ RPC_ENUM_ACCESS_LIST ;
typedef  TYPE_3__ HUB ;
typedef  int /*<<< orphan*/  CEDAR ;
typedef  TYPE_4__ ADMIN ;
typedef  TYPE_5__ ACCESS ;

/* Variables and functions */
 int /*<<< orphan*/  ACCESS_LIST_EXCLUDED_PREFIX ; 
 int /*<<< orphan*/  ACCESS_LIST_INCLUDED_PREFIX ; 
 int /*<<< orphan*/  FUNC0 (TYPE_4__*,TYPE_3__*,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*,TYPE_5__*,int,int) ; 
 int /*<<< orphan*/  CHECK_RIGHT ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ ERR_HUB_NOT_FOUND ; 
 scalar_t__ ERR_NOT_ENOUGH_RIGHT ; 
 scalar_t__ ERR_NOT_SUPPORTED ; 
 scalar_t__ ERR_NO_ERROR ; 
 scalar_t__ ERR_TOO_MANY_ACCESS_LIST ; 
 scalar_t__ ERR_VERSION_INVALID ; 
 int /*<<< orphan*/  FUNC4 (TYPE_5__*) ; 
 TYPE_3__* FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC6 (TYPE_3__*,char*) ; 
 int FUNC7 (TYPE_1__*,char*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*) ; 
 int FUNC9 (int /*<<< orphan*/ ) ; 
 TYPE_5__* FUNC10 (int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  NO_SUPPORT_FOR_BRIDGE ; 
 int /*<<< orphan*/  FUNC14 (TYPE_3__*) ; 
 scalar_t__ SERVER_TYPE_FARM_MEMBER ; 
 int /*<<< orphan*/  FUNC15 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC17 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ ) ; 

UINT FUNC20(ADMIN *a, RPC_ENUM_ACCESS_LIST *t)
{
	SERVER *s = a->Server;
	CEDAR *c = s->Cedar;
	HUB *h;
	UINT i;
	bool no_jitter = false;
	bool no_include = false;
	UINT ret = ERR_NO_ERROR;


	NO_SUPPORT_FOR_BRIDGE;
	if (s->ServerType == SERVER_TYPE_FARM_MEMBER)
	{
		return ERR_NOT_SUPPORTED;
	}

	CHECK_RIGHT;

	if (t->NumAccess > FUNC7(a->Server, "i_max_access_lists"))
	{
		return ERR_TOO_MANY_ACCESS_LIST;
	}

	FUNC12(c);
	{
		h = FUNC5(c, t->HubName);
	}
	FUNC18(c);

	if (h == NULL)
	{
		return ERR_HUB_NOT_FOUND;
	}

	no_jitter = FUNC6(h, "no_delay_jitter_packet_loss");
	no_include = FUNC6(h, "no_access_list_include_file");

	if (a->ServerAdmin == false && FUNC6(h, "no_change_access_list") != 0)
	{
		FUNC14(h);
		return ERR_NOT_ENOUGH_RIGHT;
	}

	if (a->ServerAdmin == false && FUNC6(h, "max_accesslists") != 0 &&
		t->NumAccess > FUNC6(h, "max_accesslists"))
	{
		FUNC14(h);
		return ERR_TOO_MANY_ACCESS_LIST;
	}

	FUNC13(h->AccessList);
	{
		UINT i;

		if (a->ClientBuild != 0)
		{
			// Confirm whether the access list of form which cannot handle by the old client already exists
			if (a->ClientBuild < 6560)
			{
				for (i = 0;i < FUNC11(h->AccessList);i++)
				{
					ACCESS *access = FUNC10(h->AccessList, i);
					if (access->IsIPv6 ||
						access->Jitter != 0 || access->Loss != 0 || access->Delay != 0)
					{
						ret = ERR_VERSION_INVALID;
						break;
					}
				}
			}

			if (a->ClientBuild < 8234)
			{
				for (i = 0;i < FUNC11(h->AccessList);i++)
				{
					ACCESS *access = FUNC10(h->AccessList, i);

					if (FUNC9(access->RedirectUrl) == false)
					{
						ret = ERR_VERSION_INVALID;
						break;
					}
				}
			}
		}

		if (ret == ERR_NO_ERROR)
		{
			// Delete whole access list
			for (i = 0;i < FUNC11(h->AccessList);i++)
			{
				ACCESS *access = FUNC10(h->AccessList, i);
				FUNC4(access);
			}

			FUNC3(h->AccessList);
		}
	}

	if (ret == ERR_NO_ERROR)
	{
		FUNC0(a, h, "LA_SET_ACCESS_LIST", t->NumAccess);

		// Add whole access list
		for (i = 0;i < t->NumAccess;i++)
		{
			ACCESS *a = &t->Accesses[i];

			if (no_jitter)
			{
				a->Jitter = a->Loss = a->Delay = 0;
			}

			if (no_include)
			{
				if (FUNC17(a->SrcUsername, ACCESS_LIST_INCLUDED_PREFIX) ||
					FUNC17(a->SrcUsername, ACCESS_LIST_EXCLUDED_PREFIX))
				{
					FUNC2(a->SrcUsername, sizeof(a->SrcUsername));
				}

				if (FUNC17(a->DestUsername, ACCESS_LIST_INCLUDED_PREFIX) ||
					FUNC17(a->DestUsername, ACCESS_LIST_EXCLUDED_PREFIX))
				{
					FUNC2(a->DestUsername, sizeof(a->DestUsername));
				}
			}

			if (i == (t->NumAccess - 1))
			{
				FUNC16(h->AccessList);
			}

			FUNC1(h, a, ((i != (t->NumAccess - 1)) ? true : false), ((i != (t->NumAccess - 1)) ? true : false));
		}

		FUNC19(h->AccessList);

		FUNC8(s);

		h->CurrentVersion++;
		FUNC15(h);
	}
	else
	{
		FUNC19(h->AccessList);
	}

	FUNC14(h);

	return ret;
}