#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int StartupAccount; int CheckServerCert; int RetryOnServerCert; int /*<<< orphan*/  ShortcutKey; void* LastConnectDateTime; void* UpdateDateTime; void* CreateDateTime; void* ClientAuth; void* ClientOption; int /*<<< orphan*/  ServerCert; int /*<<< orphan*/  AccountName; } ;
typedef  TYPE_1__ RPC_CLIENT_GET_ACCOUNT ;
typedef  int /*<<< orphan*/  PACK ;
typedef  int /*<<< orphan*/  CLIENT_OPTION ;
typedef  int /*<<< orphan*/  CLIENT_AUTH ;
typedef  int /*<<< orphan*/  BUF ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (void*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (void*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *,char*) ; 
 void* FUNC7 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  SHA1_SIZE ; 
 int /*<<< orphan*/  FUNC9 (TYPE_1__*,int) ; 
 void* FUNC10 (int) ; 

void FUNC11(RPC_CLIENT_GET_ACCOUNT *c, PACK *p)
{
	BUF *b;
	// Validate arguments
	if (c == NULL || p == NULL)
	{
		return;
	}

	FUNC9(c, sizeof(RPC_CLIENT_GET_ACCOUNT));

	c->ClientOption = FUNC10(sizeof(CLIENT_OPTION));
	c->ClientAuth = FUNC10(sizeof(CLIENT_AUTH));

	FUNC8(p, "AccountName", c->AccountName, sizeof(c->AccountName));
	c->StartupAccount = FUNC6(p, "StartupAccount") ? true : false;
	c->CheckServerCert = FUNC6(p, "CheckServerCert") ? true : false;
	c->RetryOnServerCert = FUNC6(p, "RetryOnServerCert") ? true : false;
	b = FUNC4(p, "ServerCert");
	if (b != NULL)
	{
		c->ServerCert = FUNC0(b, false);
		FUNC1(b);
	}

	FUNC3(c->ClientOption, p);
	FUNC2(c->ClientAuth, p);

	c->CreateDateTime = FUNC7(p, "CreateDateTime");
	c->UpdateDateTime = FUNC7(p, "UpdateDateTime");
	c->LastConnectDateTime = FUNC7(p, "LastConnectDateTime");

	FUNC5(p, "ShortcutKey", c->ShortcutKey, SHA1_SIZE);
}