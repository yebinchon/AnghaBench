#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_23__   TYPE_4__ ;
typedef  struct TYPE_22__   TYPE_2__ ;
typedef  struct TYPE_21__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  t ;
typedef  int /*<<< orphan*/  machine_name2 ;
typedef  int /*<<< orphan*/  machine_name ;
typedef  int /*<<< orphan*/  key ;
typedef  int /*<<< orphan*/  UCHAR ;
struct TYPE_23__ {int Bridge; } ;
struct TYPE_22__ {char* ProxyHostName; char* ProxyUsername; char* CustomHttpHeader; int /*<<< orphan*/  ProxyPassword; void* ProxyPort; void* ProxyType; } ;
struct TYPE_21__ {scalar_t__ ServerType; void* IPsecMessageDisplayed; TYPE_4__* Cedar; void* DDnsClient; void* ConfigRevision; } ;
typedef  TYPE_1__ SERVER ;
typedef  TYPE_2__ INTERNET_SETTING ;
typedef  int /*<<< orphan*/  HUB ;
typedef  int /*<<< orphan*/  FOLDER ;
typedef  int /*<<< orphan*/  BUF ;

/* Variables and functions */
 void* FUNC0 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *,char*) ; 
 int FUNC2 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *,char*) ; 
 void* FUNC4 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char*,char*,int) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *,char*) ; 
 char* FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_4__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC10 (char*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC12 (TYPE_4__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (char*,int) ; 
 scalar_t__ FUNC14 (TYPE_1__*,char*) ; 
 int /*<<< orphan*/  FUNC15 () ; 
 int /*<<< orphan*/  FUNC16 (TYPE_4__*) ; 
 int MAX_SIZE ; 
 void* FUNC17 (TYPE_4__*,int /*<<< orphan*/ *,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ *) ; 
 scalar_t__ SERVER_TYPE_FARM_MEMBER ; 
 int SHA1_SIZE ; 
 int /*<<< orphan*/  FUNC19 (TYPE_4__*,char*) ; 
 int /*<<< orphan*/  FUNC20 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC21 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC22 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC23 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC24 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC25 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC26 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC27 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC28 (char*,char*) ; 
 int /*<<< orphan*/  FUNC29 (int /*<<< orphan*/ ,int,char*) ; 
 int /*<<< orphan*/  FUNC30 (TYPE_4__*) ; 
 int /*<<< orphan*/  VG_HUBNAME ; 
 int /*<<< orphan*/  FUNC31 (int) ; 
 int /*<<< orphan*/  FUNC32 (TYPE_2__*,int) ; 

bool FUNC33(SERVER *s, FOLDER *root)
{
	FOLDER *f1, *f2, *f3, *f4, *f5, *f6, *f7, *f8, *f;
	// Validate arguments
	if (s == NULL || root == NULL)
	{
		return false;
	}

	f = NULL;


	f1 = FUNC3(root, "ServerConfiguration");
	f2 = FUNC3(root, "VirtualHUB");
	f3 = FUNC3(root, "ListenerList");
	f4 = FUNC3(root, "LocalBridgeList");
	f5 = FUNC3(root, "VirtualLayer3SwitchList");
	f6 = FUNC3(root, "LicenseManager");
	f7 = FUNC3(root, "IPsec");
	f8 = FUNC3(root, "DDnsClient");

	if (f1 == NULL)
	{
		FUNC19(s->Cedar, "LS_BAD_CONFIG");
		return false;
	}

#ifdef	OS_WIN32
	if (f4 != NULL)
	{
		// Read the flag of using the SeLow driver
		bool b = true;

		if (CfgIsItem(f4, "EnableSoftEtherKernelModeDriver"))
		{
			b = CfgGetBool(f4, "EnableSoftEtherKernelModeDriver");
		}

		Win32SetEnableSeLow(b);
	}
#endif	// OS_WIN32

	// Ethernet initialization
	FUNC15();

	s->ConfigRevision = FUNC4(root, "ConfigRevision");

	if (s->Cedar->Bridge == false && f6 != NULL)
	{
		if (FUNC14(s, "b_support_license"))
		{
			FUNC23(s, f6);
		}
	}

	FUNC9(s);

	FUNC26(s, f1);

	if (s->ServerType != SERVER_TYPE_FARM_MEMBER)
	{
		FUNC20(s, f2);
	}

	FUNC24(s, f3);

	if (f4 != NULL)
	{
		FUNC25(s, f4);
	}

	if (s->Cedar->Bridge == false && f5 != NULL)
	{
		FUNC22(s, f5);
	}

	if (f7 != NULL && FUNC14(s, "b_support_ipsec"))
	{
		FUNC21(s, f7);
	}

	if (s->Cedar->Bridge == false)
	{
		if (f8 == NULL)
		{
			// Create a DDNS client with a new key
			s->DDnsClient = FUNC17(s->Cedar, NULL, NULL);
		}
		else
		{
			// Create by reading the setting of the DDNS client
			UCHAR key[SHA1_SIZE];
			if (FUNC0(f8, "Disabled"))
			{
				// Disabled
			}
			else
			{
				char machine_name[MAX_SIZE];
				char machine_name2[MAX_SIZE];
				INTERNET_SETTING t;
				BUF *pw;

				// Proxy Setting
				FUNC32(&t, sizeof(t));
				t.ProxyType = FUNC4(f8, "ProxyType");
				FUNC5(f8, "ProxyHostName", t.ProxyHostName, sizeof(t.ProxyHostName));
				t.ProxyPort = FUNC4(f8, "ProxyPort");
				FUNC5(f8, "ProxyUsername", t.ProxyUsername, sizeof(t.ProxyUsername));
				pw = FUNC1(f8, "ProxyPassword");
				if (pw != NULL)
				{
					char *pw_str = FUNC7(pw);
					FUNC29(t.ProxyPassword, sizeof(t.ProxyPassword), pw_str);

					FUNC10(pw_str);
					FUNC11(pw);
				}

				FUNC5(f8, "CustomHttpHeader", t.CustomHttpHeader, sizeof(t.CustomHttpHeader));

				FUNC13(machine_name, sizeof(machine_name));

				FUNC5(f8, "LocalHostname", machine_name2, sizeof(machine_name2));

				if (FUNC2(f8, "Key", key, sizeof(key)) != sizeof(key) || FUNC28(machine_name, machine_name2) != 0)
				{
					// Create a DDNS client with a new key
					s->DDnsClient = FUNC17(s->Cedar, NULL, &t);
				}
				else
				{
					// Create the DDNS client with stored key
					s->DDnsClient = FUNC17(s->Cedar, key, &t);
				}
			}
		}
	}


	{
		HUB *h = NULL;

		// Remove the virtual HUB "VPNGATE" when VGS disabled
		FUNC16(s->Cedar);
		{
			h = FUNC12(s->Cedar, VG_HUBNAME);
		}
		FUNC30(s->Cedar);

		if (h != NULL)
		{
			FUNC27(h);
			FUNC8(s->Cedar, h);
			FUNC18(h);
		}
	}

	s->IPsecMessageDisplayed = FUNC0(root, "IPsecMessageDisplayed");


	return true;
}