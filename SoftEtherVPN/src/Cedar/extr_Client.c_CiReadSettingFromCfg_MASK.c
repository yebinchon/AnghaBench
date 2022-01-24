#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_23__   TYPE_8__ ;
typedef  struct TYPE_22__   TYPE_5__ ;
typedef  struct TYPE_21__   TYPE_4__ ;
typedef  struct TYPE_20__   TYPE_3__ ;
typedef  struct TYPE_19__   TYPE_2__ ;
typedef  struct TYPE_18__   TYPE_1__ ;
typedef  struct TYPE_17__   TYPE_12__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  user_agent ;
typedef  int /*<<< orphan*/  t ;
struct TYPE_19__ {int Enabled; int /*<<< orphan*/  Name; } ;
typedef  TYPE_2__ UNIX_VLAN ;
typedef  scalar_t__ UINT ;
struct TYPE_23__ {scalar_t__ OsType; } ;
struct TYPE_17__ {int /*<<< orphan*/  NicDownOnDisconnect; } ;
struct TYPE_22__ {TYPE_4__* CmSetting; void* DontSavePassword; TYPE_1__* Cedar; void* UseSecureDeviceId; void* PasswordRemoteOnly; int /*<<< orphan*/  EncryptedPassword; int /*<<< orphan*/  UnixVLanList; TYPE_12__ Config; int /*<<< orphan*/  Logger; int /*<<< orphan*/  Eraser; int /*<<< orphan*/  CommonProxySetting; } ;
struct TYPE_21__ {int /*<<< orphan*/  HashedPassword; void* LockMode; void* EasyMode; } ;
struct TYPE_20__ {char* ProxyHostName; char* ProxyUsername; char* CustomHttpHeader; int /*<<< orphan*/  ProxyPassword; void* ProxyPort; void* ProxyType; } ;
struct TYPE_18__ {char* HttpUserAgent; } ;
typedef  TYPE_3__ INTERNET_SETTING ;
typedef  int /*<<< orphan*/  FOLDER ;
typedef  TYPE_4__ CM_SETTING ;
typedef  TYPE_5__ CLIENT ;
typedef  int /*<<< orphan*/  BUF ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ *) ; 
 char* CLIENT_MACOS_TAP_NAME ; 
 int /*<<< orphan*/  FUNC2 (TYPE_5__*,char*) ; 
 void* FUNC3 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ *,char*) ; 
 int FUNC5 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ *,char*) ; 
 void* FUNC7 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,char*) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ *,char*,char*,int) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_5__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_5__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_12__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_5__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *,TYPE_3__*,int) ; 
 char* FUNC15 (char*) ; 
 char* FUNC16 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC17 (char*) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ *) ; 
 TYPE_8__* FUNC19 () ; 
 int FUNC20 (char*) ; 
 int MAX_SIZE ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ OSTYPE_MACOS_X ; 
 scalar_t__ FUNC22 (scalar_t__) ; 
 scalar_t__ FUNC23 (scalar_t__) ; 
 int SHA1_SIZE ; 
 int /*<<< orphan*/  FUNC24 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC25 (int /*<<< orphan*/ ,int,char*) ; 
 int FUNC26 (char*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC27 (TYPE_3__*,int) ; 
 TYPE_2__* FUNC28 (int) ; 
 int /*<<< orphan*/  FUNC29 (int /*<<< orphan*/ ) ; 

bool FUNC30(CLIENT *c, FOLDER *root)
{
	FOLDER *config;
	FOLDER *cert;
	FOLDER *db;
	FOLDER *vlan;
	FOLDER *cmsetting;
	FOLDER *proxy;
	char user_agent[MAX_SIZE];
	// Validate arguments
	if (c == NULL || root == NULL)
	{
		return false;
	}

	// Initialize the setting if there isn't either of AccountDatabase and Config
	config = FUNC6(root, "Config");
	if (config == NULL)
	{
		return false;
	}

	db = FUNC6(root, "AccountDatabase");
	if (db == NULL)
	{
		return false;
	}

	cmsetting = FUNC6(root, "ClientManagerSetting");

	FUNC12(&c->Config, config);


	proxy = FUNC6(root, "CommonProxySetting");

	if (proxy != NULL)
	{
		INTERNET_SETTING t;
		BUF *pw;

		// Proxy Setting
		FUNC27(&t, sizeof(t));
		t.ProxyType = FUNC7(proxy, "ProxyType");
		FUNC9(proxy, "ProxyHostName", t.ProxyHostName, sizeof(t.ProxyHostName));
		t.ProxyPort = FUNC7(proxy, "ProxyPort");
		FUNC9(proxy, "ProxyUsername", t.ProxyUsername, sizeof(t.ProxyUsername));
		pw = FUNC4(proxy, "ProxyPassword");
		if (pw != NULL)
		{
			char *pw_str = FUNC16(pw);
			FUNC25(t.ProxyPassword, sizeof(t.ProxyPassword), pw_str);

			FUNC17(pw_str);
			FUNC18(pw);
		}

		FUNC9(proxy, "CustomHttpHeader", t.CustomHttpHeader, sizeof(t.CustomHttpHeader));

		FUNC14(&c->CommonProxySetting, &t, sizeof(INTERNET_SETTING));
	}

	// Eraser
	c->Eraser = FUNC21(c->Logger, FUNC8(config, "AutoDeleteCheckDiskFreeSpaceMin"));

	if (FUNC22(FUNC19()->OsType)
#ifdef	NO_VLAN
	    && GetOsInfo()->OsType != OSTYPE_MACOS_X
#endif	// NO_VLAN
	    )
	{
		// Read the UNIX version virtual LAN card list (except MacOS)
		vlan = FUNC6(root, "UnixVLan");
		if (vlan != NULL)
		{
			FUNC13(c, vlan);
		}
	}

#ifdef	NO_VLAN
	if (GetOsInfo()->OsType == OSTYPE_MACOS_X)
	{
#ifdef	OS_UNIX
		UNIX_VLAN *uv;

		// Create a Tap for MacOS X
		if (UnixVLanCreate(CLIENT_MACOS_TAP_NAME, NULL, !c->Config.NicDownOnDisconnect) == false)
		{
			// Fail (abort)
			CLog(c, "LC_TAP_NOT_FOUND");
			Alert("tun/tap driver not found.", NULL);
			exit(0);
		}

		uv = ZeroMalloc(sizeof(UNIX_VLAN));
		uv->Enabled = true;
		StrCpy(uv->Name, sizeof(uv->Name), CLIENT_MACOS_TAP_NAME);
		Add(c->UnixVLanList, uv);
#endif	// OS_UNIX
	}
#endif	// NO_VLAN
	FUNC10(c, db);

	if (FUNC5(root, "EncryptedPassword", c->EncryptedPassword, SHA1_SIZE) == false)
	{
		FUNC24(c->EncryptedPassword, "", 0);
	}

	c->PasswordRemoteOnly = FUNC3(root, "PasswordRemoteOnly");
	c->UseSecureDeviceId = FUNC7(root, "UseSecureDeviceId");

	if (FUNC9(root, "UserAgent", user_agent, sizeof(user_agent)))
	{
		if (FUNC20(user_agent) == false)
		{
			FUNC17(c->Cedar->HttpUserAgent);
			c->Cedar->HttpUserAgent = FUNC15(user_agent);
		}
	}

	cert = FUNC6(root, "RootCA");
	if (cert != NULL)
	{
		FUNC11(c, cert);
	}

	c->DontSavePassword = FUNC3(root, "DontSavePassword");

	if (cmsetting != NULL)
	{
		UINT ostype = FUNC19()->OsType;
		// CM_SETTING
		CM_SETTING *s = c->CmSetting;

		if (FUNC22(ostype) || FUNC23(ostype))
		{
			s->EasyMode = FUNC3(cmsetting, "EasyMode");
		}

		s->LockMode = FUNC3(cmsetting, "LockMode");
		FUNC5(cmsetting, "HashedPassword", s->HashedPassword, sizeof(s->HashedPassword));
	}

	return true;
}