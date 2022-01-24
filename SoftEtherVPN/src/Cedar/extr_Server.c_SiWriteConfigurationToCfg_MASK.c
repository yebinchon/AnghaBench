#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_17__   TYPE_3__ ;
typedef  struct TYPE_16__   TYPE_2__ ;
typedef  struct TYPE_15__   TYPE_1__ ;
typedef  struct TYPE_14__   TYPE_12__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  region ;
typedef  int /*<<< orphan*/  machine_name ;
struct TYPE_17__ {char* ProxyHostName; char* ProxyUsername; char* CustomHttpHeader; int /*<<< orphan*/  ProxyPassword; int /*<<< orphan*/  ProxyPort; int /*<<< orphan*/  ProxyType; } ;
struct TYPE_16__ {scalar_t__ UpdatedServerType; int LedSpecial; int IPsecMessageDisplayed; TYPE_1__* DDnsClient; TYPE_12__* Cedar; scalar_t__ Led; int /*<<< orphan*/  ConfigRevision; } ;
struct TYPE_15__ {TYPE_3__ InternetSetting; int /*<<< orphan*/  Key; } ;
struct TYPE_14__ {int Bridge; } ;
typedef  TYPE_2__ SERVER ;
typedef  TYPE_3__ INTERNET_SETTING ;
typedef  int /*<<< orphan*/  FOLDER ;
typedef  int /*<<< orphan*/  BUF ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*,char*) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (char*,int) ; 
 scalar_t__ FUNC9 (TYPE_2__*,char*) ; 
 int FUNC10 (int /*<<< orphan*/ ) ; 
 int MAX_SIZE ; 
 scalar_t__ SERVER_TYPE_FARM_MEMBER ; 
 int /*<<< orphan*/  SHA1_SIZE ; 
 int /*<<< orphan*/  FUNC11 (TYPE_12__*,char*,int) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ *,TYPE_2__*) ; 
 char* TAG_ROOT ; 

FOLDER *FUNC19(SERVER *s)
{
	FOLDER *root;
	char region[128];
	// Validate arguments
	if (s == NULL)
	{
		return NULL;
	}

	root = FUNC5(NULL, TAG_ROOT);

	FUNC11(s->Cedar, region, sizeof(region));

	FUNC4(root, "Region", region);

	FUNC3(root, "ConfigRevision", s->ConfigRevision);

	FUNC16(FUNC5(root, "ListenerList"), s);

	FUNC17(FUNC5(root, "LocalBridgeList"), s);

	FUNC18(FUNC5(root, "ServerConfiguration"), s);


	if (s->UpdatedServerType != SERVER_TYPE_FARM_MEMBER)
	{
		FUNC12(FUNC5(root, "VirtualHUB"), s);
	}

	if (s->Cedar->Bridge == false)
	{
		FUNC14(FUNC5(root, "VirtualLayer3SwitchList"), s);

		if (FUNC9(s, "b_support_license"))
		{
			FUNC15(FUNC5(root, "LicenseManager"), s);
		}
	}

	if (s->Led)
	{
		FUNC0(root, "Led", true);
		FUNC0(root, "LedSpecial", s->LedSpecial);
	}

	if (FUNC9(s, "b_support_ipsec"))
	{
		FUNC13(FUNC5(root, "IPsec"), s);
	}

	if (s->Cedar->Bridge == false)
	{
		FOLDER *ddns_folder = FUNC5(root, "DDnsClient");

		if (s->DDnsClient == NULL)
		{
			// Disabled
			FUNC0(ddns_folder, "Disabled", true);
		}
		else
		{
			char machine_name[MAX_SIZE];
			BUF *pw;
			INTERNET_SETTING *t;
			// Enabled
			FUNC0(ddns_folder, "Disabled", false);
			FUNC2(ddns_folder, "Key", s->DDnsClient->Key, SHA1_SIZE);

			FUNC8(machine_name, sizeof(machine_name));
			FUNC4(ddns_folder, "LocalHostname", machine_name);

			t = &s->DDnsClient->InternetSetting;

			FUNC3(ddns_folder, "ProxyType", t->ProxyType);
			FUNC4(ddns_folder, "ProxyHostName", t->ProxyHostName);
			FUNC3(ddns_folder, "ProxyPort", t->ProxyPort);
			FUNC4(ddns_folder, "ProxyUsername", t->ProxyUsername);

			if (FUNC10(t->ProxyPassword) == false)
			{
				pw = FUNC6(t->ProxyPassword);

				FUNC1(ddns_folder, "ProxyPassword", pw);

				FUNC7(pw);
			}

			FUNC4(ddns_folder, "CustomHttpHeader", t->CustomHttpHeader);
		}
	}

	FUNC0(root, "IPsecMessageDisplayed", s->IPsecMessageDisplayed);


	return root;
}