#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_16__   TYPE_6__ ;
typedef  struct TYPE_15__   TYPE_5__ ;
typedef  struct TYPE_14__   TYPE_4__ ;
typedef  struct TYPE_13__   TYPE_3__ ;
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
struct TYPE_16__ {scalar_t__ OsType; } ;
struct TYPE_13__ {int /*<<< orphan*/  CustomHttpHeader; int /*<<< orphan*/  ProxyPassword; int /*<<< orphan*/  ProxyUsername; int /*<<< orphan*/  ProxyPort; int /*<<< orphan*/  ProxyHostName; int /*<<< orphan*/  ProxyType; } ;
struct TYPE_15__ {TYPE_4__* CmSetting; TYPE_2__* Cedar; int /*<<< orphan*/  DontSavePassword; int /*<<< orphan*/  UseSecureDeviceId; int /*<<< orphan*/  PasswordRemoteOnly; int /*<<< orphan*/  EncryptedPassword; TYPE_3__ CommonProxySetting; TYPE_1__* Eraser; int /*<<< orphan*/  Config; } ;
struct TYPE_14__ {int /*<<< orphan*/  HashedPassword; int /*<<< orphan*/  LockMode; int /*<<< orphan*/  EasyMode; } ;
struct TYPE_12__ {int /*<<< orphan*/  HttpUserAgent; } ;
struct TYPE_11__ {int /*<<< orphan*/  MinFreeSpace; } ;
typedef  TYPE_3__ INTERNET_SETTING ;
typedef  int /*<<< orphan*/  FOLDER ;
typedef  TYPE_4__ CM_SETTING ;
typedef  TYPE_5__ CLIENT ;
typedef  int /*<<< orphan*/  BUF ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_5__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_5__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_5__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 TYPE_6__* FUNC13 () ; 
 int FUNC14 (int /*<<< orphan*/ ) ; 
 int FUNC15 (int /*<<< orphan*/ ,int) ; 
 scalar_t__ OSTYPE_MACOS_X ; 
 scalar_t__ FUNC16 (scalar_t__) ; 
 int SHA1_SIZE ; 

void FUNC17(CLIENT *c, FOLDER *root)
{
	FOLDER *cc;
	FOLDER *account_database;
	FOLDER *ca;
	FOLDER *vlan;
	FOLDER *cmsetting;
	FOLDER *proxy;
	// Validate arguments
	if (c == NULL || root == NULL)
	{
		return;
	}

	cmsetting = FUNC6(root, "ClientManagerSetting");

	// CLIENT_CONFIG
	cc = FUNC6(root, "Config");
	FUNC9(cc, &c->Config);


	// Eraser
	FUNC4(cc, "AutoDeleteCheckDiskFreeSpaceMin", c->Eraser->MinFreeSpace);

	// Account Database
	account_database = FUNC6(root, "AccountDatabase");
	FUNC7(c, account_database);

	// Proxy
	proxy = FUNC6(root, "CommonProxySetting");
	if (proxy != NULL)
	{
		INTERNET_SETTING *t = &c->CommonProxySetting;
		BUF *pw;

		FUNC3(proxy, "ProxyType", t->ProxyType);
		FUNC5(proxy, "ProxyHostName", t->ProxyHostName);
		FUNC3(proxy, "ProxyPort", t->ProxyPort);
		FUNC5(proxy, "ProxyUsername", t->ProxyUsername);

		if (FUNC14(t->ProxyPassword) == false)
		{
			pw = FUNC11(t->ProxyPassword);

			FUNC1(proxy, "ProxyPassword", pw);

			FUNC12(pw);
		}

		FUNC5(proxy, "CustomHttpHeader", t->CustomHttpHeader);
	}

	// CA
	ca = FUNC6(root, "RootCA");
	FUNC8(c, ca);

	// VLAN
	if (FUNC16(FUNC13()->OsType)
#ifdef	NO_VLAN
	    && GetOsInfo()->OsType != OSTYPE_MACOS_X
#endif	// NO_VLAN
	    )
	{
		vlan = FUNC6(root, "UnixVLan");
		FUNC10(c, vlan);
	}

	// Password
	FUNC2(root, "EncryptedPassword", c->EncryptedPassword, SHA1_SIZE);
	FUNC0(root, "PasswordRemoteOnly", c->PasswordRemoteOnly);

	// UseSecureDeviceId
	FUNC3(root, "UseSecureDeviceId", c->UseSecureDeviceId);

	// DontSavePassword
	FUNC0(root, "DontSavePassword", c->DontSavePassword);

	// UserAgent
	if (c->Cedar != NULL)
	{
		FUNC5(root, "UserAgent", c->Cedar->HttpUserAgent);
	}

	if (cmsetting != NULL)
	{
		CM_SETTING *s = c->CmSetting;

		FUNC0(cmsetting, "EasyMode", s->EasyMode);
		FUNC0(cmsetting, "LockMode", s->LockMode);

		if (FUNC15(s->HashedPassword, sizeof(s->HashedPassword)) == false)
		{
			FUNC2(cmsetting, "HashedPassword", s->HashedPassword, sizeof(s->HashedPassword));
		}
	}
}