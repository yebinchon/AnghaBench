#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/  LastConnectDateTime; int /*<<< orphan*/  UpdateDateTime; int /*<<< orphan*/  CreateDateTime; int /*<<< orphan*/  ShortcutKey; int /*<<< orphan*/  ClientAuth; int /*<<< orphan*/  ClientOption; int /*<<< orphan*/ * ServerCert; int /*<<< orphan*/  RetryOnServerCert; int /*<<< orphan*/  CheckServerCert; int /*<<< orphan*/  StartupAccount; int /*<<< orphan*/  AccountName; } ;
typedef  TYPE_1__ RPC_CLIENT_GET_ACCOUNT ;
typedef  int /*<<< orphan*/  PACK ;
typedef  int /*<<< orphan*/  BUF ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SHA1_SIZE ; 
 int /*<<< orphan*/ * FUNC8 (int /*<<< orphan*/ *,int) ; 

void FUNC9(PACK *p, RPC_CLIENT_GET_ACCOUNT *c)
{
	BUF *b;
	// Validate arguments
	if (c == NULL || p == NULL)
	{
		return;
	}

	FUNC7(p, "AccountName", c->AccountName);
	FUNC5(p, "StartupAccount", c->StartupAccount);
	FUNC5(p, "CheckServerCert", c->CheckServerCert);
	FUNC5(p, "RetryOnServerCert", c->RetryOnServerCert);

	if (c->ServerCert != NULL)
	{
		b = FUNC8(c->ServerCert, false);
		if (b != NULL)
		{
			FUNC3(p, "ServerCert", b);
			FUNC0(b);
		}
	}

	FUNC2(p, c->ClientOption);
	FUNC1(p, c->ClientAuth);

	FUNC4(p, "ShortcutKey", c->ShortcutKey, SHA1_SIZE);

	FUNC6(p, "CreateDateTime", c->CreateDateTime);
	FUNC6(p, "UpdateDateTime", c->UpdateDateTime);
	FUNC6(p, "LastConnectDateTime", c->LastConnectDateTime);
}