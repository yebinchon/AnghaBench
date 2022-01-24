#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {scalar_t__ RadiusServerPort; scalar_t__ RadiusRetryInterval; int RadiusConvertAllMsChapv2AuthRequestToEap; int RadiusUsePeapInsteadOfEap; int HubIsOnlineButHalting; scalar_t__ Type; scalar_t__ NumLogin; int /*<<< orphan*/  CreatedTime; int /*<<< orphan*/  LastLoginTime; int /*<<< orphan*/  LastCommTime; int /*<<< orphan*/  HubDb; TYPE_1__* Cedar; int /*<<< orphan*/  LogSetting; int /*<<< orphan*/  Msg; int /*<<< orphan*/  Option; int /*<<< orphan*/  Traffic; scalar_t__ Offline; int /*<<< orphan*/  SecurePassword; int /*<<< orphan*/  HashedPassword; int /*<<< orphan*/  RadiusOptionLock; int /*<<< orphan*/ * RadiusRealm; int /*<<< orphan*/ * RadiusSuffixFilter; int /*<<< orphan*/  RadiusSecret; int /*<<< orphan*/ * RadiusServerName; } ;
struct TYPE_8__ {int Bridge; int /*<<< orphan*/  Server; } ;
typedef  TYPE_2__ HUB ;
typedef  int /*<<< orphan*/  FOLDER ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC7 (int /*<<< orphan*/ *,char*) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ HUB_TYPE_FARM_STATIC ; 
 scalar_t__ HUB_TYPE_STANDALONE ; 
 int FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (TYPE_2__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ ) ; 

void FUNC20(FOLDER *f, HUB *h)
{
	// Validate arguments
	if (f == NULL || h == NULL)
	{
		return;
	}

	// Radius server name
	FUNC10(h->RadiusOptionLock);
	{
		if (h->RadiusServerName != NULL)
		{
			FUNC5(f, "RadiusServerName", h->RadiusServerName);
			FUNC1(f, "RadiusSecret", h->RadiusSecret);
		}
		FUNC3(f, "RadiusServerPort", h->RadiusServerPort);
		FUNC3(f, "RadiusRetryInterval", h->RadiusRetryInterval);
		FUNC5(f, "RadiusSuffixFilter", h->RadiusSuffixFilter);
		FUNC5(f, "RadiusRealm", h->RadiusRealm);

		FUNC0(f, "RadiusConvertAllMsChapv2AuthRequestToEap", h->RadiusConvertAllMsChapv2AuthRequestToEap);
		FUNC0(f, "RadiusUsePeapInsteadOfEap", h->RadiusUsePeapInsteadOfEap);
	}
	FUNC19(h->RadiusOptionLock);

	// Password
	FUNC2(f, "HashedPassword", h->HashedPassword, sizeof(h->HashedPassword));
	FUNC2(f, "SecurePassword", h->SecurePassword, sizeof(h->SecurePassword));

	// Online / Offline flag
	if (h->Cedar->Bridge == false)
	{
		FUNC0(f, "Online", (h->Offline && (h->HubIsOnlineButHalting == false)) ? false : true);
	}

	// Traffic information
	FUNC18(f, "Traffic", h->Traffic);

	// HUB options
	FUNC16(FUNC7(f, "Option"), h->Option);

	// Message
	{
		FOLDER *folder = FUNC7(f, "Message");

		if (FUNC9(h->Msg) == false)
		{
			FUNC6(folder, "MessageText", h->Msg);
		}
	}

	// HUB_LOG
	FUNC15(FUNC7(f, "LogSetting"), &h->LogSetting);

	if (h->Type == HUB_TYPE_STANDALONE)
	{
		// Link list
		FUNC14(FUNC7(f, "CascadeList"), h);
	}

	if (h->Type != HUB_TYPE_FARM_STATIC)
	{
		if (FUNC8(h->Cedar->Server, "b_support_securenat"))
		{
			// SecureNAT
			FUNC17(h, FUNC7(f, "SecureNAT"));
		}
	}

	// Access list
	FUNC11(FUNC7(f, "AccessList"), h);

	// Administration options
	FUNC12(FUNC7(f, "AdminOption"), h);

	// Type of HUB
	FUNC3(f, "Type", h->Type);

	// Database
	if (h->Cedar->Bridge == false)
	{
		FUNC13(FUNC7(f, "SecurityAccountDatabase"), h->HubDb,
			false
			);
	}

	// Usage status
	FUNC4(f, "LastCommTime", h->LastCommTime);
	FUNC4(f, "LastLoginTime", h->LastLoginTime);
	FUNC4(f, "CreatedTime", h->CreatedTime);
	FUNC3(f, "NumLogin", h->NumLogin);
}