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
typedef  struct TYPE_15__   TYPE_2__ ;
typedef  struct TYPE_14__   TYPE_1__ ;
typedef  struct TYPE_13__   TYPE_12__ ;

/* Type definitions */
struct TYPE_16__ {int Bridge; } ;
struct TYPE_15__ {int AutoSaveConfigSpan; int BackupConfigOnlyWhenModified; int NoLinuxArpFilter; int AutoSaveConfigSpanSaved; scalar_t__ ServerType; int /*<<< orphan*/  SaveThread; int /*<<< orphan*/  SaveHaltEvent; TYPE_6__* Cedar; int /*<<< orphan*/  EnableVpnAzure; int /*<<< orphan*/  AzureClient; int /*<<< orphan*/ * DDnsClient; scalar_t__ DisableDosProtection; int /*<<< orphan*/  DontBackupConfig; TYPE_1__* CfgRw; int /*<<< orphan*/  OpenVpnServerUdp; int /*<<< orphan*/  IPsecServer; } ;
struct TYPE_14__ {int /*<<< orphan*/  DontBackup; } ;
struct TYPE_13__ {scalar_t__ OsType; } ;
typedef  TYPE_2__ SERVER ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 TYPE_12__* FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  MEM_FIFO_REALLOC_MEM_SIZE ; 
 int FUNC5 (int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (TYPE_6__*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 (TYPE_6__*) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_6__*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,TYPE_2__*) ; 
 scalar_t__ OSTYPE_LINUX ; 
 int SERVER_FILE_SAVE_INTERVAL_DEFAULT ; 
 int /*<<< orphan*/  SERVER_FILE_SAVE_INTERVAL_USERMODE ; 
 scalar_t__ SERVER_TYPE_STANDALONE ; 
 int /*<<< orphan*/  FUNC12 (TYPE_6__*,char*,...) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 () ; 
 int FUNC15 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC16 (TYPE_2__*) ; 
 int /*<<< orphan*/  SiSaverThread ; 
 int server_reset_setting ; 

void FUNC17(SERVER *s)
{
	// Validate arguments
	if (s == NULL)
	{
		return;
	}

	s->AutoSaveConfigSpan = SERVER_FILE_SAVE_INTERVAL_DEFAULT;
	s->BackupConfigOnlyWhenModified = true;

	// IPsec server
	if (s->Cedar->Bridge == false)
	{
		s->IPsecServer = FUNC9(s->Cedar);
	}

	// OpenVPN server (UDP)
	if (s->Cedar->Bridge == false)
	{
		s->OpenVpnServerUdp = FUNC10(s->Cedar);
	}

	FUNC12(s->Cedar, "LS_LOAD_CONFIG_1");
	if (FUNC15(s) == false)
	{
		// Ethernet initialization
		FUNC4();

		FUNC12(s->Cedar, "LS_LOAD_CONFIG_3");
		FUNC16(s);

		FUNC13(MEM_FIFO_REALLOC_MEM_SIZE);

		server_reset_setting = false;
	}
	else
	{
		FUNC12(s->Cedar, "LS_LOAD_CONFIG_2");
	}

	s->CfgRw->DontBackup = s->DontBackupConfig;

	// The arp_filter in Linux
	if (FUNC3()->OsType == OSTYPE_LINUX)
	{
		if (s->NoLinuxArpFilter == false)
		{
			FUNC14();
		}
	}

	if (s->DisableDosProtection)
	{
		FUNC1();
	}
	else
	{
		FUNC2();
	}

	s->AutoSaveConfigSpanSaved = s->AutoSaveConfigSpan;

	// Create a VPN Azure client
	if (s->DDnsClient != NULL && s->Cedar->Bridge == false && s->ServerType == SERVER_TYPE_STANDALONE)
	{
		s->AzureClient = FUNC7(s->Cedar, s);

		FUNC0(s->AzureClient, s->EnableVpnAzure);
	}

	// Reduce the storage interval in the case of user mode
#ifdef	OS_WIN32
	if (MsIsUserMode())
	{
		s->AutoSaveConfigSpan = MIN(s->AutoSaveConfigSpan, SERVER_FILE_SAVE_INTERVAL_USERMODE);
	}
#endif	//OS_WIN32

	// Create a saving thread
	FUNC12(s->Cedar, "LS_INIT_SAVE_THREAD", s->AutoSaveConfigSpan / 1000);
	s->SaveHaltEvent = FUNC8();
	s->SaveThread = FUNC11(SiSaverThread, s);
}