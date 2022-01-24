#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_30__   TYPE_9__ ;
typedef  struct TYPE_29__   TYPE_8__ ;
typedef  struct TYPE_28__   TYPE_7__ ;
typedef  struct TYPE_27__   TYPE_6__ ;
typedef  struct TYPE_26__   TYPE_5__ ;
typedef  struct TYPE_25__   TYPE_4__ ;
typedef  struct TYPE_24__   TYPE_3__ ;
typedef  struct TYPE_23__   TYPE_2__ ;
typedef  struct TYPE_22__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  UINT ;
typedef  int /*<<< orphan*/  UCHAR ;
struct TYPE_30__ {int ServerAdmin; TYPE_3__* Rpc; TYPE_6__* Server; } ;
struct TYPE_29__ {scalar_t__ Type; int /*<<< orphan*/  CurrentVersion; int /*<<< orphan*/  lock; int /*<<< orphan*/  SecurePassword; int /*<<< orphan*/  HashedPassword; TYPE_4__* Option; } ;
struct TYPE_26__ {int /*<<< orphan*/  NoEnum; int /*<<< orphan*/  MaxSession; } ;
struct TYPE_28__ {scalar_t__ HubType; char* AdminPasswordPlainText; scalar_t__ Online; int /*<<< orphan*/ * SecurePassword; int /*<<< orphan*/ * HashedPassword; TYPE_5__ HubOption; int /*<<< orphan*/  HubName; } ;
struct TYPE_27__ {scalar_t__ ServerType; int /*<<< orphan*/ * Cedar; } ;
struct TYPE_25__ {int /*<<< orphan*/  NoEnum; int /*<<< orphan*/  MaxSession; } ;
struct TYPE_24__ {TYPE_2__* Sock; } ;
struct TYPE_22__ {int* addr; } ;
struct TYPE_23__ {TYPE_1__ RemoteIP; } ;
typedef  TYPE_6__ SERVER ;
typedef  TYPE_7__ RPC_CREATE_HUB ;
typedef  TYPE_8__ HUB ;
typedef  int /*<<< orphan*/  CEDAR ;
typedef  TYPE_9__ ADMIN ;

/* Variables and functions */
 int /*<<< orphan*/  ADMINISTRATOR_USERNAME ; 
 int /*<<< orphan*/  FUNC0 (TYPE_9__*,TYPE_8__*,char*) ; 
 int /*<<< orphan*/  CHECK_RIGHT ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  ERR_HUB_NOT_FOUND ; 
 int /*<<< orphan*/  ERR_INVALID_PARAMETER ; 
 int /*<<< orphan*/  ERR_NOT_ENOUGH_RIGHT ; 
 int /*<<< orphan*/  ERR_NOT_FARM_CONTROLLER ; 
 int /*<<< orphan*/  ERR_NOT_SUPPORTED ; 
 int /*<<< orphan*/  ERR_NO_ERROR ; 
 int /*<<< orphan*/  FUNC3 (TYPE_8__*,int) ; 
 TYPE_8__* FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (TYPE_8__*,char*) ; 
 scalar_t__ HUB_TYPE_FARM_STATIC ; 
 scalar_t__ HUB_TYPE_STANDALONE ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_6__*) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ) ; 
 int FUNC9 (int /*<<< orphan*/ ) ; 
 int FUNC10 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  NO_SUPPORT_FOR_BRIDGE ; 
 int /*<<< orphan*/  FUNC13 (TYPE_8__*) ; 
 scalar_t__ SERVER_TYPE_FARM_CONTROLLER ; 
 scalar_t__ SERVER_TYPE_FARM_MEMBER ; 
 scalar_t__ SERVER_TYPE_STANDALONE ; 
 int SHA1_SIZE ; 
 int /*<<< orphan*/  FUNC14 (TYPE_8__*) ; 
 int /*<<< orphan*/  FUNC15 (TYPE_8__*) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *,char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC17 (TYPE_8__*) ; 
 scalar_t__ FUNC18 (char*) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ *) ; 

UINT FUNC21(ADMIN *a, RPC_CREATE_HUB *t)
{
	SERVER *s = a->Server;
	CEDAR *c = s->Cedar;
	HUB *h;
	UINT ret = ERR_NO_ERROR;

	if (s->ServerType == SERVER_TYPE_FARM_MEMBER)
	{
		return ERR_NOT_FARM_CONTROLLER;
	}

	if (FUNC8(t->HubName) || FUNC9(t->HubName) == false)
	{
		return ERR_INVALID_PARAMETER;
	}


	CHECK_RIGHT;
	NO_SUPPORT_FOR_BRIDGE;

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

	if (s->ServerType == SERVER_TYPE_FARM_CONTROLLER)
	{
		if (t->HubType == HUB_TYPE_STANDALONE)
		{
			return ERR_INVALID_PARAMETER;
		}
	}

	FUNC12(c);
	{
		h = FUNC4(c, t->HubName);
	}
	FUNC20(c);

	if (h == NULL)
	{
		return ERR_HUB_NOT_FOUND;
	}

	if (h->Type != t->HubType)
	{
		FUNC13(h);
		return ERR_NOT_SUPPORTED;
	}

	// For JSON-RPC
	if (FUNC18(t->AdminPasswordPlainText) != 0)
	{
		FUNC16(t->HashedPassword, t->AdminPasswordPlainText, FUNC18(t->AdminPasswordPlainText));
		FUNC6(t->SecurePassword, ADMINISTRATOR_USERNAME, t->AdminPasswordPlainText);
	}

	if (FUNC10(t->HashedPassword, sizeof(t->HashedPassword)) == false &&
		FUNC10(t->SecurePassword, sizeof(t->SecurePassword)) == false)
	{
		if (a->ServerAdmin == false && FUNC5(h, "no_change_admin_password") != 0)
		{
			FUNC13(h);
			return ERR_NOT_ENOUGH_RIGHT;
		}
	}

	// Is the password to be set blank
	{
		UCHAR hash1[SHA1_SIZE], hash2[SHA1_SIZE];
		FUNC6(hash1, ADMINISTRATOR_USERNAME, "");
		FUNC16(hash2, "", 0);

		if (FUNC1(t->HashedPassword, hash2, SHA1_SIZE) == 0 || FUNC1(t->SecurePassword, hash1, SHA1_SIZE) == 0)
		{
			if (a->ServerAdmin == false && a->Rpc->Sock->RemoteIP.addr[0] != 127)
			{
				// Refuse to set a blank password to hub admin from remote host
				FUNC13(h);
				return ERR_INVALID_PARAMETER;
			}
		}
	}

	FUNC11(h->lock);
	{
		if (a->ServerAdmin == false && h->Type != t->HubType)
		{
			ret = ERR_NOT_ENOUGH_RIGHT;
		}
		else
		{
			h->Type = t->HubType;
			h->Option->MaxSession = t->HubOption.MaxSession;
			h->Option->NoEnum = t->HubOption.NoEnum;
			if (FUNC10(t->HashedPassword, sizeof(t->HashedPassword)) == false &&
				FUNC10(t->SecurePassword, sizeof(t->SecurePassword)) == false)
			{
				FUNC2(h->HashedPassword, t->HashedPassword, SHA1_SIZE);
				FUNC2(h->SecurePassword, t->SecurePassword, SHA1_SIZE);
			}
		}
	}
	FUNC19(h->lock);

	if (t->Online)
	{
		if (a->ServerAdmin || FUNC5(h, "no_online") == 0)
		{
			FUNC15(h);
		}
	}
	else
	{
		if (a->ServerAdmin || FUNC5(h, "no_offline") == 0)
		{
			FUNC14(h);
		}
	}

	if (h->Type == HUB_TYPE_FARM_STATIC)
	{
		FUNC3(h, false);
	}

	h->CurrentVersion++;
	FUNC17(h);

	FUNC7(s);

	FUNC0(a, h, "LA_SET_HUB");

	FUNC13(h);

	return ret;
}