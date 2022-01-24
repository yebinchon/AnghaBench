#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_21__   TYPE_4__ ;
typedef  struct TYPE_20__   TYPE_3__ ;
typedef  struct TYPE_19__   TYPE_2__ ;
typedef  struct TYPE_18__   TYPE_1__ ;
typedef  struct TYPE_17__   TYPE_14__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  UINT ;
struct TYPE_21__ {int ServerAdmin; TYPE_1__* Server; } ;
struct TYPE_20__ {int /*<<< orphan*/  CurrentVersion; int /*<<< orphan*/  AccessList; } ;
struct TYPE_17__ {int /*<<< orphan*/  DestUsername; int /*<<< orphan*/  SrcUsername; scalar_t__ Loss; scalar_t__ Delay; scalar_t__ Jitter; } ;
struct TYPE_19__ {TYPE_14__ Access; int /*<<< orphan*/  HubName; } ;
struct TYPE_18__ {scalar_t__ ServerType; int /*<<< orphan*/ * Cedar; } ;
typedef  TYPE_1__ SERVER ;
typedef  TYPE_2__ RPC_ADD_ACCESS ;
typedef  TYPE_3__ HUB ;
typedef  int /*<<< orphan*/  CEDAR ;
typedef  TYPE_4__ ADMIN ;

/* Variables and functions */
 int /*<<< orphan*/  ACCESS_LIST_EXCLUDED_PREFIX ; 
 int /*<<< orphan*/  ACCESS_LIST_INCLUDED_PREFIX ; 
 int /*<<< orphan*/  FUNC0 (TYPE_4__*,TYPE_3__*,char*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*,TYPE_14__*) ; 
 int /*<<< orphan*/  CHECK_RIGHT ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  ERR_HUB_NOT_FOUND ; 
 int /*<<< orphan*/  ERR_NOT_ENOUGH_RIGHT ; 
 int /*<<< orphan*/  ERR_NOT_SUPPORTED ; 
 int /*<<< orphan*/  ERR_NO_ERROR ; 
 int /*<<< orphan*/  ERR_TOO_MANY_ACCESS_LIST ; 
 TYPE_3__* FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC4 (TYPE_3__*,char*) ; 
 int FUNC5 (TYPE_1__*,char*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*) ; 
 int FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  NO_SUPPORT_FOR_BRIDGE ; 
 int /*<<< orphan*/  FUNC9 (TYPE_3__*) ; 
 scalar_t__ SERVER_TYPE_FARM_MEMBER ; 
 int /*<<< orphan*/  FUNC10 (TYPE_3__*) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 

UINT FUNC13(ADMIN *a, RPC_ADD_ACCESS *t)
{
	SERVER *s = a->Server;
	CEDAR *c = s->Cedar;
	HUB *h;
	bool no_jitter = false;
	bool no_include = false;


	NO_SUPPORT_FOR_BRIDGE;
	if (s->ServerType == SERVER_TYPE_FARM_MEMBER)
	{
		return ERR_NOT_SUPPORTED;
	}

	CHECK_RIGHT;

	FUNC8(c);
	{
		h = FUNC3(c, t->HubName);
	}
	FUNC12(c);

	if (h == NULL)
	{
		return ERR_HUB_NOT_FOUND;
	}

	no_jitter = FUNC4(h, "no_delay_jitter_packet_loss");
	no_include = FUNC4(h, "no_access_list_include_file");

	if (a->ServerAdmin == false && FUNC4(h, "no_change_access_list") != 0)
	{
		FUNC9(h);
		return ERR_NOT_ENOUGH_RIGHT;
	}

	if ((FUNC7(h->AccessList) >= FUNC5(a->Server, "i_max_access_lists") ||
		(FUNC4(h, "max_accesslists") != 0) && (FUNC7(h->AccessList) >= FUNC4(h, "max_accesslists"))))
	{
		FUNC9(h);
		return ERR_TOO_MANY_ACCESS_LIST;
	}

	FUNC0(a, h, "LA_ADD_ACCESS");

	if (no_jitter)
	{
		t->Access.Jitter = t->Access.Delay = t->Access.Loss = 0;
	}

	if (no_include)
	{
		if (FUNC11(t->Access.SrcUsername, ACCESS_LIST_INCLUDED_PREFIX) ||
			FUNC11(t->Access.SrcUsername, ACCESS_LIST_EXCLUDED_PREFIX))
		{
			FUNC2(t->Access.SrcUsername, sizeof(t->Access.SrcUsername));
		}

		if (FUNC11(t->Access.DestUsername, ACCESS_LIST_INCLUDED_PREFIX) ||
			FUNC11(t->Access.DestUsername, ACCESS_LIST_EXCLUDED_PREFIX))
		{
			FUNC2(t->Access.DestUsername, sizeof(t->Access.DestUsername));
		}
	}

	FUNC1(h, &t->Access);

	h->CurrentVersion++;
	FUNC10(h);

	FUNC9(h);

	FUNC6(s);

	return ERR_NO_ERROR;
}