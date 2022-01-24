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
typedef  int /*<<< orphan*/  tmp ;
struct TYPE_3__ {int /*<<< orphan*/  ShortcutKey; int /*<<< orphan*/ * ServerCert; int /*<<< orphan*/  LastConnectDateTime; int /*<<< orphan*/  UpdateDateTime; int /*<<< orphan*/  CreateDateTime; int /*<<< orphan*/  RetryOnServerCert; int /*<<< orphan*/  CheckServerCert; int /*<<< orphan*/  StartupAccount; int /*<<< orphan*/  ClientAuth; int /*<<< orphan*/  ClientOption; } ;
typedef  int /*<<< orphan*/  FOLDER ;
typedef  int /*<<< orphan*/  BUF ;
typedef  TYPE_1__ ACCOUNT ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*,char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SHA1_SIZE ; 
 int /*<<< orphan*/ * FUNC10 (int /*<<< orphan*/ *,int) ; 

void FUNC11(FOLDER *f, ACCOUNT *a)
{
	// Validate arguments
	if (f == NULL || a == NULL)
	{
		return;
	}

	// Client Option
	FUNC7(FUNC5(f, "ClientOption"), a->ClientOption);

	// Client authentication data
	FUNC6(FUNC5(f, "ClientAuth"), a->ClientAuth);

	// Startup account
	FUNC1(f, "StartupAccount", a->StartupAccount);

	// Server certificate check flag
	FUNC1(f, "CheckServerCert", a->CheckServerCert);

	// Retry on invalid server certificate flag
	FUNC1(f, "RetryOnServerCert", a->RetryOnServerCert);

	// Date and time
	FUNC3(f, "CreateDateTime", a->CreateDateTime);
	FUNC3(f, "UpdateDateTime", a->UpdateDateTime);
	FUNC3(f, "LastConnectDateTime", a->LastConnectDateTime);

	// Server certificate body
	if (a->ServerCert != NULL)
	{
		BUF *b = FUNC10(a->ServerCert, false);
		if (b != NULL)
		{
			FUNC2(f, "ServerCert", b);
			FUNC8(b);
		}
	}

	// Shortcut Key
	if (FUNC9(a->ShortcutKey, SHA1_SIZE) == false)
	{
		char tmp[64];
		FUNC0(tmp, sizeof(tmp), a->ShortcutKey, SHA1_SIZE);
		FUNC4(f, "ShortcutKey", tmp);
	}
}