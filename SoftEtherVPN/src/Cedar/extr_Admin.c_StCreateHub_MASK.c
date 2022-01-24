#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_30__   TYPE_7__ ;
typedef  struct TYPE_29__   TYPE_6__ ;
typedef  struct TYPE_28__   TYPE_5__ ;
typedef  struct TYPE_27__   TYPE_4__ ;
typedef  struct TYPE_26__   TYPE_3__ ;
typedef  struct TYPE_25__   TYPE_2__ ;
typedef  struct TYPE_24__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  o ;
typedef  scalar_t__ UINT ;
struct TYPE_30__ {TYPE_2__* Server; } ;
struct TYPE_29__ {int /*<<< orphan*/  HubList; } ;
struct TYPE_28__ {scalar_t__ Type; int Offline; int /*<<< orphan*/  CreatedTime; int /*<<< orphan*/  SecurePassword; int /*<<< orphan*/  HashedPassword; } ;
struct TYPE_27__ {int /*<<< orphan*/  NoEnum; int /*<<< orphan*/  MaxSession; } ;
struct TYPE_24__ {int /*<<< orphan*/  NoEnum; int /*<<< orphan*/  MaxSession; } ;
struct TYPE_26__ {scalar_t__ HubType; scalar_t__ Online; int /*<<< orphan*/  SecurePassword; int /*<<< orphan*/  HashedPassword; int /*<<< orphan*/  HubName; int /*<<< orphan*/  AdminPasswordPlainText; TYPE_1__ HubOption; } ;
struct TYPE_25__ {scalar_t__ ServerType; TYPE_6__* Cedar; } ;
typedef  TYPE_2__ SERVER ;
typedef  TYPE_3__ RPC_CREATE_HUB ;
typedef  TYPE_4__ HUB_OPTION ;
typedef  TYPE_5__ HUB ;
typedef  TYPE_6__ CEDAR ;
typedef  TYPE_7__ ADMIN ;

/* Variables and functions */
 int /*<<< orphan*/  ADMINISTRATOR_USERNAME ; 
 int /*<<< orphan*/  FUNC0 (TYPE_7__*,int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_6__*,TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ ERR_HUB_ALREADY_EXISTS ; 
 scalar_t__ ERR_INVALID_PARAMETER ; 
 scalar_t__ ERR_NOT_FARM_CONTROLLER ; 
 scalar_t__ ERR_NO_ERROR ; 
 scalar_t__ ERR_TOO_MANY_HUBS ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC4 (TYPE_2__*,char*) ; 
 scalar_t__ HUB_TYPE_FARM_DYNAMIC ; 
 scalar_t__ HUB_TYPE_FARM_STATIC ; 
 scalar_t__ HUB_TYPE_STANDALONE ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ) ; 
 int FUNC8 (TYPE_6__*,int /*<<< orphan*/ ) ; 
 int FUNC9 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  NO_SUPPORT_FOR_BRIDGE ; 
 TYPE_5__* FUNC13 (TYPE_6__*,int /*<<< orphan*/ ,TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC14 (TYPE_5__*) ; 
 int /*<<< orphan*/  SERVER_ADMIN_ONLY ; 
 scalar_t__ SERVER_TYPE_FARM_MEMBER ; 
 scalar_t__ SERVER_TYPE_STANDALONE ; 
 int /*<<< orphan*/  SHA1_SIZE ; 
 int /*<<< orphan*/  FUNC15 (TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC16 (TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC18 (TYPE_4__*) ; 
 scalar_t__ FUNC19 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC20 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC21 () ; 
 int /*<<< orphan*/  FUNC22 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC23 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC24 (TYPE_4__*,int) ; 

UINT FUNC25(ADMIN *a, RPC_CREATE_HUB *t)
{
	SERVER *s = a->Server;
	CEDAR *c = s->Cedar;
	HUB *h;
	HUB_OPTION o;
	UINT current_hub_num;
	bool b;

	if (s->ServerType == SERVER_TYPE_FARM_MEMBER)
	{
		return ERR_NOT_FARM_CONTROLLER;
	}



	if (FUNC7(t->HubName) || FUNC9(t->HubName) == false)
	{
		return ERR_INVALID_PARAMETER;
	}

	NO_SUPPORT_FOR_BRIDGE;

	if (s->ServerType == SERVER_TYPE_FARM_MEMBER)
	{
		return ERR_NOT_FARM_CONTROLLER;
	}

	SERVER_ADMIN_ONLY;

	FUNC22(t->HubName);
	if (FUNC20(t->HubName) == 0)
	{
		return ERR_INVALID_PARAMETER;
	}
	if (FUNC19(t->HubName, ".") || FUNC3(t->HubName, "."))
	{
		return ERR_INVALID_PARAMETER;
	}

	if (s->ServerType == SERVER_TYPE_FARM_MEMBER)
	{
		return ERR_NOT_FARM_CONTROLLER;
	}

	if (s->ServerType == SERVER_TYPE_STANDALONE)
	{
		if (t->HubType != HUB_TYPE_STANDALONE)
		{
			return ERR_INVALID_PARAMETER;
		}
	}
	else if (t->HubType != HUB_TYPE_FARM_DYNAMIC && t->HubType != HUB_TYPE_FARM_STATIC)
	{
		return ERR_INVALID_PARAMETER;
	}

	// Create a hub object
	FUNC24(&o, sizeof(o));
	o.MaxSession = t->HubOption.MaxSession;
	o.NoEnum = t->HubOption.NoEnum;

	// Default setting for hub admin options
	FUNC18(&o);

	FUNC12(c->HubList);
	{
		current_hub_num = FUNC11(c->HubList);
	}
	FUNC23(c->HubList);

	if (current_hub_num > FUNC4(a->Server, "i_max_hubs"))
	{
		return ERR_TOO_MANY_HUBS;
	}

	FUNC12(c->HubList);
	{
		b = FUNC8(c, t->HubName);
	}
	FUNC23(c->HubList);

	if (b)
	{
		return ERR_HUB_ALREADY_EXISTS;
	}

	FUNC0(a, NULL, "LA_CREATE_HUB", t->HubName);

	// For JSON-RPC
	if ((FUNC10(t->HashedPassword, sizeof(t->HashedPassword)) &&
		FUNC10(t->SecurePassword, sizeof(t->SecurePassword))) ||
		FUNC20(t->AdminPasswordPlainText) != 0)
	{
		FUNC17(t->HashedPassword, t->AdminPasswordPlainText, FUNC20(t->AdminPasswordPlainText));
		FUNC5(t->SecurePassword, ADMINISTRATOR_USERNAME, t->AdminPasswordPlainText);
	}

	h = FUNC13(c, t->HubName, &o);
	FUNC2(h->HashedPassword, t->HashedPassword, SHA1_SIZE);
	FUNC2(h->SecurePassword, t->SecurePassword, SHA1_SIZE);

	h->Type = t->HubType;

	FUNC1(c, h);

	if (t->Online)
	{
		h->Offline = true;
		FUNC16(h);
	}
	else
	{
		h->Offline = false;
		FUNC15(h);
	}

	h->CreatedTime = FUNC21();

	FUNC14(h);

	FUNC6(s);

	return ERR_NO_ERROR;
}