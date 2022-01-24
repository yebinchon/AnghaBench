#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  tmp ;
struct TYPE_10__ {int /*<<< orphan*/  ShortcutKey; int /*<<< orphan*/  ServerCert; void* LastConnectDateTime; void* UpdateDateTime; void* CreateDateTime; void* RetryOnServerCert; void* CheckServerCert; void* StartupAccount; int /*<<< orphan*/  ClientAuth; int /*<<< orphan*/  ClientOption; int /*<<< orphan*/  lock; } ;
struct TYPE_9__ {scalar_t__ Size; int /*<<< orphan*/  Buf; } ;
typedef  int /*<<< orphan*/  FOLDER ;
typedef  TYPE_1__ BUF ;
typedef  TYPE_2__ ACCOUNT ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int) ; 
 void* FUNC1 (int /*<<< orphan*/ *,char*) ; 
 TYPE_1__* FUNC2 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *,char*) ; 
 void* FUNC4 (int /*<<< orphan*/ *,char*) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *,char*,char*,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_1__*) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC11 () ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ SHA1_SIZE ; 
 TYPE_1__* FUNC13 (char*) ; 
 TYPE_2__* FUNC14 (int) ; 

ACCOUNT *FUNC15(FOLDER *f)
{
	ACCOUNT *a;
	FOLDER *client_option_folder, *client_auth_folder;
	BUF *b;
	char tmp[64];
	// Validate arguments
	if (f == NULL)
	{
		return NULL;
	}

	client_option_folder = FUNC3(f, "ClientOption");

	if (client_option_folder != NULL)
	{
		// Compare whether it matches to the account name that is already registered
	}

	client_auth_folder = FUNC3(f, "ClientAuth");

	if (client_option_folder == NULL || client_auth_folder == NULL)
	{
		return NULL;
	}

	a = FUNC14(sizeof(ACCOUNT));
	a->lock = FUNC11();

	a->ClientOption = FUNC7(client_option_folder);
	a->ClientAuth = FUNC6(client_auth_folder);

	a->StartupAccount = FUNC1(f, "StartupAccount");
	a->CheckServerCert = FUNC1(f, "CheckServerCert");
	a->RetryOnServerCert = FUNC1(f, "RetryOnServerCert");
	a->CreateDateTime = FUNC4(f, "CreateDateTime");
	a->UpdateDateTime = FUNC4(f, "UpdateDateTime");
	a->LastConnectDateTime = FUNC4(f, "LastConnectDateTime");

	b = FUNC2(f, "ServerCert");
	if (b != NULL)
	{
		a->ServerCert = FUNC0(b, false);
		FUNC9(b);
	}

	if (FUNC5(f, "ShortcutKey", tmp, sizeof(tmp)))
	{
		BUF *b = FUNC13(tmp);
		if (b->Size == SHA1_SIZE)
		{
			FUNC8(a->ShortcutKey, b->Buf, SHA1_SIZE);
		}
		FUNC9(b);
	}

	if (FUNC10(a->ShortcutKey, SHA1_SIZE))
	{
		FUNC12(a->ShortcutKey, SHA1_SIZE);
	}

	return a;
}