#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_26__   TYPE_4__ ;
typedef  struct TYPE_25__   TYPE_3__ ;
typedef  struct TYPE_24__   TYPE_2__ ;
typedef  struct TYPE_23__   TYPE_1__ ;
typedef  struct TYPE_22__   TYPE_18__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  wchar_t ;
typedef  int /*<<< orphan*/  secret_str ;
typedef  int /*<<< orphan*/  o ;
typedef  int /*<<< orphan*/  name ;
typedef  int /*<<< orphan*/  g ;
typedef  scalar_t__ UINT ;
struct TYPE_26__ {int Size; int /*<<< orphan*/  Buf; } ;
struct TYPE_25__ {char* RadiusSuffixFilter; char* RadiusRealm; scalar_t__ Type; int CurrentVersion; int LastVersion; scalar_t__ LastCommTime; scalar_t__ LastLoginTime; int Offline; int /*<<< orphan*/  PacketLogger; int /*<<< orphan*/  SecurityLogger; void* NumLogin; void* CreatedTime; TYPE_1__* Cedar; int /*<<< orphan*/  SecureNATOption; int /*<<< orphan*/  Traffic; int /*<<< orphan*/  SecurePassword; int /*<<< orphan*/  HashedPassword; int /*<<< orphan*/  RadiusOptionLock; void* RadiusUsePeapInsteadOfEap; void* RadiusConvertAllMsChapv2AuthRequestToEap; } ;
struct TYPE_24__ {scalar_t__ ServerType; int /*<<< orphan*/ * Cedar; } ;
struct TYPE_23__ {int Bridge; TYPE_18__* Server; } ;
struct TYPE_22__ {scalar_t__ ServerType; } ;
typedef  TYPE_2__ SERVER ;
typedef  char HUB_OPTION ;
typedef  char HUB_LOG ;
typedef  TYPE_3__ HUB ;
typedef  int /*<<< orphan*/  FOLDER ;
typedef  int /*<<< orphan*/  CEDAR ;
typedef  TYPE_4__ BUF ;

/* Variables and functions */
 int /*<<< orphan*/  ADMINISTRATOR_USERNAME ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,TYPE_3__*) ; 
 void* FUNC1 (int /*<<< orphan*/ *,char*) ; 
 TYPE_4__* FUNC2 (int /*<<< orphan*/ *,char*) ; 
 int FUNC3 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ *,char*) ; 
 void* FUNC5 (int /*<<< orphan*/ *,char*) ; 
 void* FUNC6 (int /*<<< orphan*/ *,char*) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *,char*,char*,int) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC9 (char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_4__*) ; 
 scalar_t__ FUNC12 (TYPE_18__*,char*) ; 
 int HUB_MAXMSG_LEN ; 
 scalar_t__ HUB_TYPE_FARM_DYNAMIC ; 
 scalar_t__ HUB_TYPE_STANDALONE ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ) ; 
 int MAX_SIZE ; 
 int /*<<< orphan*/ * FUNC15 (int) ; 
 TYPE_3__* FUNC16 (int /*<<< orphan*/ *,char*,char*) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ,int) ; 
 scalar_t__ RADIUS_RETRY_INTERVAL ; 
 int /*<<< orphan*/  FUNC18 (TYPE_3__*) ; 
 scalar_t__ SERVER_TYPE_FARM_CONTROLLER ; 
 scalar_t__ SERVER_TYPE_STANDALONE ; 
 int /*<<< orphan*/  FUNC19 (TYPE_3__*,char*) ; 
 int /*<<< orphan*/  FUNC20 (TYPE_3__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC21 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC22 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC23 (TYPE_3__*,char*,scalar_t__,char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC24 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC25 (TYPE_3__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC26 (TYPE_3__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC27 (TYPE_3__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC28 (TYPE_3__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC29 (char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC30 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC31 (TYPE_3__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC32 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 void* FUNC33 () ; 
 int /*<<< orphan*/  FUNC34 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC35 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC36 (char*,int) ; 

void FUNC37(SERVER *s, FOLDER *f, char *name)
{
	HUB *h;
	CEDAR *c;
	HUB_OPTION o;
	bool online;
	UINT hub_old_type = 0;
	// Validate arguments
	if (s == NULL || f == NULL || name == NULL)
	{
		return;
	}

	c = s->Cedar;

	// Get the option
	FUNC36(&o, sizeof(o));
	FUNC30(FUNC4(f, "Option"), &o);

	// Create a HUB
	h = FUNC16(c, name, &o);
	if (h != NULL)
	{
		HUB_LOG g;
		// Radius server settings
		FUNC14(h->RadiusOptionLock);
		{
			char name[MAX_SIZE];
			BUF *secret;
			UINT port;
			UINT interval;

			port = FUNC5(f, "RadiusServerPort");
			interval = FUNC5(f, "RadiusRetryInterval");

			FUNC7(f, "RadiusSuffixFilter", h->RadiusSuffixFilter, sizeof(h->RadiusSuffixFilter));
			FUNC7(f, "RadiusRealm", h->RadiusRealm, sizeof(h->RadiusRealm));

			h->RadiusConvertAllMsChapv2AuthRequestToEap = FUNC1(f, "RadiusConvertAllMsChapv2AuthRequestToEap");
			h->RadiusUsePeapInsteadOfEap = FUNC1(f, "RadiusUsePeapInsteadOfEap");

			if (interval == 0)
			{
				interval = RADIUS_RETRY_INTERVAL;
			}

			if (port != 0 && FUNC7(f, "RadiusServerName", name, sizeof(name)))
			{
				secret = FUNC2(f, "RadiusSecret");
				if (secret != NULL)
				{
					char secret_str[MAX_SIZE];
					FUNC36(secret_str, sizeof(secret_str));
					if (secret->Size < sizeof(secret_str))
					{
						FUNC9(secret_str, secret->Buf, secret->Size);
					}
					secret_str[sizeof(secret_str) - 1] = 0;
					//SetRadiusServer(h, name, port, secret_str);
					FUNC23(h, name, port, secret_str, interval);
					FUNC11(secret);
				}
			}
		}
		FUNC34(h->RadiusOptionLock);

		// Password
		if (FUNC3(f, "HashedPassword", h->HashedPassword, sizeof(h->HashedPassword)) != sizeof(h->HashedPassword))
		{
			FUNC24(h->HashedPassword, "", 0);
		}
		if (FUNC3(f, "SecurePassword", h->SecurePassword, sizeof(h->SecurePassword)) != sizeof(h->SecurePassword))
		{
			FUNC13(h->SecurePassword, ADMINISTRATOR_USERNAME, "");
		}

		// Log Settings
		FUNC36(&g, sizeof(g));
		FUNC29(&g, FUNC4(f, "LogSetting"));
		FUNC19(h, &g);

		// Online / Offline flag
		if (h->Cedar->Bridge == false)
		{
			online = FUNC1(f, "Online");
		}
		else
		{
			online = true;
		}

		// Traffic information
		FUNC32(f, "Traffic", h->Traffic);

		// Access list
		FUNC25(h, FUNC4(f, "AccessList"));

		// Type of HUB
		hub_old_type = h->Type = FUNC5(f, "Type");

		if (s->ServerType == SERVER_TYPE_STANDALONE)
		{
			if (h->Type != HUB_TYPE_STANDALONE)
			{
				// Change the type of all HUB to a stand-alone if the server is a stand-alone
				h->Type = HUB_TYPE_STANDALONE;
			}
		}
		else
		{
			if (h->Type == HUB_TYPE_STANDALONE)
			{
				// If the server is a farm controller, change the type of HUB to the farm supported types
				h->Type = HUB_TYPE_FARM_DYNAMIC;
			}
		}

		if (h->Type == HUB_TYPE_FARM_DYNAMIC)
		{
			h->CurrentVersion = h->LastVersion = 1;
		}

		// Message
		{
			FOLDER *folder = FUNC4(f, "Message");
			if (folder != NULL)
			{
				wchar_t *tmp = FUNC15(sizeof(wchar_t) * (HUB_MAXMSG_LEN + 1));
				if (FUNC8(folder, "MessageText", tmp, sizeof(wchar_t) * (HUB_MAXMSG_LEN + 1)))
				{
					FUNC20(h, tmp);
				}
				FUNC10(tmp);
			}
		}

		// Link list
		if (h->Type == HUB_TYPE_STANDALONE)
		{
			// The link list is used only on stand-alone HUB
			// In VPN Gate hubs, don't load this
			{
				FUNC28(h, FUNC4(f, "CascadeList"));
			}
		}

		// SecureNAT
		if (FUNC12(h->Cedar->Server, "b_support_securenat"))
		{
			if (h->Type == HUB_TYPE_STANDALONE || h->Type == HUB_TYPE_FARM_DYNAMIC)
			{
				// SecureNAT is used only in the case of dynamic HUB or standalone HUB
				FUNC31(h, FUNC4(f, "SecureNAT"));

				if (h->Type != HUB_TYPE_STANDALONE && h->Cedar != NULL && h->Cedar->Server != NULL &&
					h->Cedar->Server->ServerType == SERVER_TYPE_FARM_CONTROLLER)
				{
					FUNC17(h->SecureNATOption,
						hub_old_type == HUB_TYPE_STANDALONE);
				}

			}
		}

		// Administration options
		FUNC26(h, FUNC4(f, "AdminOption"));

		// Database
		if (h->Cedar->Bridge == false)
		{
			FUNC27(h, FUNC4(f, "SecurityAccountDatabase"));
		}

		// Usage status
		h->LastCommTime = FUNC6(f, "LastCommTime");
		if (h->LastCommTime == 0)
		{
			h->LastCommTime = FUNC33();
		}
		h->LastLoginTime = FUNC6(f, "LastLoginTime");
		if (h->LastLoginTime == 0)
		{
			h->LastLoginTime = FUNC33();
		}
		h->CreatedTime = FUNC6(f, "CreatedTime");
		h->NumLogin = FUNC5(f, "NumLogin");

		// Start the operation of the HUB
		FUNC0(c, h);

		if (online)
		{
			h->Offline = true;
			FUNC22(h);
		}
		else
		{
			h->Offline = false;
			FUNC21(h);
		}

		FUNC35(h->SecurityLogger);
		FUNC35(h->PacketLogger);

		FUNC18(h);
	}
}