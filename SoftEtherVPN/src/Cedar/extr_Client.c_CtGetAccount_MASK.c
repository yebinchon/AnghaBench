#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_15__   TYPE_6__ ;
typedef  struct TYPE_14__   TYPE_3__ ;
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
struct TYPE_15__ {int /*<<< orphan*/  AccountName; } ;
struct TYPE_14__ {int /*<<< orphan*/  lock; int /*<<< orphan*/  UpdateDateTime; int /*<<< orphan*/  LastConnectDateTime; int /*<<< orphan*/  CreateDateTime; TYPE_6__* ShortcutKey; int /*<<< orphan*/ * ServerCert; int /*<<< orphan*/  RetryOnServerCert; int /*<<< orphan*/  CheckServerCert; int /*<<< orphan*/  StartupAccount; int /*<<< orphan*/  ClientAuth; TYPE_6__* ClientOption; } ;
struct TYPE_13__ {int /*<<< orphan*/  AccountList; } ;
struct TYPE_12__ {int /*<<< orphan*/  UpdateDateTime; int /*<<< orphan*/  LastConnectDateTime; int /*<<< orphan*/  CreateDateTime; TYPE_6__* ShortcutKey; int /*<<< orphan*/ * ServerCert; int /*<<< orphan*/  RetryOnServerCert; int /*<<< orphan*/  CheckServerCert; int /*<<< orphan*/  StartupAccount; int /*<<< orphan*/ * ClientAuth; TYPE_6__* ClientOption; int /*<<< orphan*/  AccountName; } ;
typedef  TYPE_1__ RPC_CLIENT_GET_ACCOUNT ;
typedef  int /*<<< orphan*/  CLIENT_OPTION ;
typedef  TYPE_2__ CLIENT ;
typedef  TYPE_3__ ACCOUNT ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_6__*,TYPE_6__*,int) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ERR_ACCOUNT_NOT_FOUND ; 
 int /*<<< orphan*/  FUNC5 (TYPE_6__*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int SHA1_SIZE ; 
 TYPE_3__* FUNC8 (int /*<<< orphan*/ ,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 void* FUNC12 (int) ; 

bool FUNC13(CLIENT *c, RPC_CLIENT_GET_ACCOUNT *a)
{
	// Validate arguments
	if (c == NULL || a == NULL)
	{
		return false;
	}

	FUNC7(c->AccountList);
	{
		ACCOUNT t, *r;

		// Search for account
		t.ClientOption = FUNC12(sizeof(CLIENT_OPTION));
		FUNC9(t.ClientOption->AccountName, sizeof(t.ClientOption->AccountName), a->AccountName);

		r = FUNC8(c->AccountList, &t);
		if (r == NULL)
		{
			// Specified account can not be found
			FUNC11(c->AccountList);

			FUNC5(t.ClientOption);
			FUNC1(c, ERR_ACCOUNT_NOT_FOUND);
			return false;
		}

		FUNC5(t.ClientOption);

		FUNC6(r->lock);
		{
			// Copy the client option
			if (a->ClientOption != NULL)
			{
				FUNC5(a->ClientOption);
			}
			a->ClientOption = FUNC12(sizeof(CLIENT_OPTION));
			FUNC3(a->ClientOption, r->ClientOption, sizeof(CLIENT_OPTION));

			// Copy the authentication data
			if (a->ClientAuth != NULL)
			{
				FUNC0(a->ClientAuth);
			}
			a->ClientAuth = FUNC4(r->ClientAuth);

			a->StartupAccount = r->StartupAccount;

			a->CheckServerCert = r->CheckServerCert;
			a->RetryOnServerCert = r->RetryOnServerCert;
			a->ServerCert = NULL;
			if (r->ServerCert != NULL)
			{
				a->ServerCert = FUNC2(r->ServerCert);
			}

			// Shortcut Key
			FUNC3(a->ShortcutKey, r->ShortcutKey, SHA1_SIZE);

			a->CreateDateTime = r->CreateDateTime;
			a->LastConnectDateTime = r->LastConnectDateTime;
			a->UpdateDateTime = r->UpdateDateTime;
		}
		FUNC10(r->lock);

	}
	FUNC11(c->AccountList);

	return true;
}