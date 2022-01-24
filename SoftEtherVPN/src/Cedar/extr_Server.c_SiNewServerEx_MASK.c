#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_21__   TYPE_3__ ;
typedef  struct TYPE_20__   TYPE_2__ ;
typedef  struct TYPE_19__   TYPE_1__ ;

/* Type definitions */
struct TYPE_21__ {int CheckExpires; int Bridge; TYPE_1__* Server; int /*<<< orphan*/  BuildInfo; int /*<<< orphan*/  VerString; int /*<<< orphan*/  ServerStr; } ;
struct TYPE_20__ {int Me; int /*<<< orphan*/  Weight; void* HubList; int /*<<< orphan*/  hostname; TYPE_3__* Cedar; } ;
struct TYPE_19__ {int NoHighPriorityProcess; scalar_t__ ServerType; int FarmControllerInited; int DisableNatTraversal; TYPE_3__* Cedar; int /*<<< orphan*/  EnableVpnOverDns; void* DynListenerDns; int /*<<< orphan*/  EnableVpnOverIcmp; void* DynListenerIcmp; int /*<<< orphan*/  NatTGlobalUdpPort; int /*<<< orphan*/ * AzureClient; void* FarmMemberList; TYPE_2__* Me; int /*<<< orphan*/  Weight; int /*<<< orphan*/  FarmController; void* SyslogLock; int /*<<< orphan*/  ListenIP; int /*<<< orphan*/  Syslog; int /*<<< orphan*/  Logger; int /*<<< orphan*/  Keep; void* TasksFromFarmControllerLock; int /*<<< orphan*/  StartTime; void* ServerListenerList; int /*<<< orphan*/  AzureServer; int /*<<< orphan*/  IsInVm; int /*<<< orphan*/  ref; void* SaveCfgLock; void* OpenVpnSstpConfigLock; void* lock; int /*<<< orphan*/  MyRandomKey; } ;
typedef  TYPE_1__ SERVER ;
typedef  int /*<<< orphan*/  LISTENER ;
typedef  TYPE_2__ FARM_MEMBER ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (void*,TYPE_2__*) ; 
 int /*<<< orphan*/  BRIDGE_LOG_DIR_NAME ; 
 int /*<<< orphan*/ * CompareHubList ; 
 int /*<<< orphan*/ * CompareServerListener ; 
 int /*<<< orphan*/  DEFAULT_GETIP_THREAD_MAX_NUM ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 scalar_t__ FUNC4 (char*) ; 
 int FUNC5 () ; 
 int /*<<< orphan*/  LISTENER_DNS ; 
 int /*<<< orphan*/  LISTENER_ICMP ; 
 int /*<<< orphan*/  LISTENER_INPROC ; 
 int /*<<< orphan*/  LISTENER_REVERSE ; 
 int /*<<< orphan*/  LISTENER_RUDP ; 
 int /*<<< orphan*/  LOG_SWITCH_DAY ; 
 int /*<<< orphan*/  MEM_FIFO_REALLOC_MEM_SIZE ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (TYPE_3__*) ; 
 TYPE_3__* FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 void* FUNC10 (TYPE_3__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 void* FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC12 (TYPE_3__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC13 (TYPE_3__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 void* FUNC14 () ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 () ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC18 () ; 
 int /*<<< orphan*/  RAND_PORT_ID_SERVER_LISTEN ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC20 () ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  SERVER_LOG_DIR_NAME ; 
 int /*<<< orphan*/  SERVER_LOG_PERFIX ; 
 scalar_t__ SERVER_TYPE_FARM_CONTROLLER ; 
 scalar_t__ SERVER_TYPE_FARM_MEMBER ; 
 int /*<<< orphan*/  FUNC22 (TYPE_3__*,char*,...) ; 
 int /*<<< orphan*/  FUNC23 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC24 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC25 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC26 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC27 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC28 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC29 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC30 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC31 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC32 (TYPE_3__*,char*,int) ; 
 int /*<<< orphan*/  FUNC33 (int) ; 
 int /*<<< orphan*/  FUNC34 () ; 
 int /*<<< orphan*/  FUNC35 () ; 
 int /*<<< orphan*/  TCPAcceptedThread ; 
 int /*<<< orphan*/  FUNC36 () ; 
 int /*<<< orphan*/  FUNC37 () ; 
 void* FUNC38 (int) ; 

SERVER *FUNC39(bool bridge, bool in_client_inner_server, bool relay_server)
{
	SERVER *s;
	LISTENER *inproc;
	LISTENER *azure;
	LISTENER *rudp;

	FUNC26(DEFAULT_GETIP_THREAD_MAX_NUM);

	s = FUNC38(sizeof(SERVER));

	FUNC24(0);

	FUNC29(s);

	FUNC3(s);

	FUNC19(s->MyRandomKey, sizeof(s->MyRandomKey));

	s->lock = FUNC14();


	s->OpenVpnSstpConfigLock = FUNC14();
	s->SaveCfgLock = FUNC14();
	s->ref = FUNC16();
	s->Cedar = FUNC9(NULL, NULL);
	s->Cedar->Server = s;


#ifdef	OS_WIN32
	s->IsInVm = MsIsInVm();
#else	// OS_WIN32
	s->IsInVm = FUNC36();
#endif	// OS_WIN32

#ifdef	ENABLE_AZURE_SERVER
	if (IsFileExists("@azureserver.config"))
	{
		DisableRDUPServerGlobally();
		s->AzureServer = NewAzureServer(s->Cedar);

		SleepThread(500);
	}
#endif	// ENABLE_AZURE_SERVER

	s->Cedar->CheckExpires = true;
	s->ServerListenerList = FUNC11(CompareServerListener);
	s->StartTime = FUNC35();
	s->TasksFromFarmControllerLock = FUNC14();

	if (bridge)
	{
		FUNC23(s->Cedar);
	}

#ifdef OS_WIN32
	if (IsHamMode() == false)
	{
		RegistWindowsFirewallAll();
	}
#endif

	s->Keep = FUNC34();

	// Log related
	FUNC6(bridge == false ? SERVER_LOG_DIR_NAME : BRIDGE_LOG_DIR_NAME);
	s->Logger = FUNC15(bridge == false ? SERVER_LOG_DIR_NAME : BRIDGE_LOG_DIR_NAME, SERVER_LOG_PERFIX, LOG_SWITCH_DAY);

	FUNC22(s->Cedar, "L_LINE");
	FUNC22(s->Cedar, "LS_START_2", s->Cedar->ServerStr, s->Cedar->VerString);
	FUNC22(s->Cedar, "LS_START_3", s->Cedar->BuildInfo);
	FUNC22(s->Cedar, "LS_START_UTF8");
	FUNC22(s->Cedar, "LS_START_1");



	// Initialize the configuration
	FUNC27(s);

	s->Syslog = FUNC17(NULL, 0, &s->Cedar->Server->ListenIP);
	s->SyslogLock = FUNC14();

	FUNC25(MEM_FIFO_REALLOC_MEM_SIZE);


	// Raise the priority
	if (s->NoHighPriorityProcess == false)
	{
		FUNC18();
	}

#ifdef	OS_UNIX
	UnixSetHighOomScore();
#endif	// OS_UNIX

	if (s->ServerType == SERVER_TYPE_FARM_MEMBER)
	{
		// Start a connection to the controller
		s->FarmController = FUNC30(s);
	}
	else if (s->ServerType == SERVER_TYPE_FARM_CONTROLLER)
	{
		FARM_MEMBER *f;
		// Start operating as a controller
		s->FarmMemberList = FUNC11(NULL);

		f = FUNC38(sizeof(FARM_MEMBER));
		f->Cedar = s->Cedar;
		FUNC2(f->hostname, sizeof(f->hostname));
		f->Me = true;
		f->HubList = FUNC11(CompareHubList);
		f->Weight = s->Weight;

		s->Me = f;

		FUNC0(s->FarmMemberList, f);

		FUNC31(s);

		s->FarmControllerInited = true;
	}

	// Start a in-processlistener 
	inproc = FUNC12(s->Cedar, LISTENER_INPROC, 0);
	FUNC21(inproc);

	// Start a listener for Azure
	if (s->AzureClient != NULL)
	{
		azure = FUNC12(s->Cedar, LISTENER_REVERSE, 0);
		FUNC21(azure);
	}

	// Start a R-UDP listener
	if (s->DisableNatTraversal == false && s->Cedar->Bridge == false)
	{
		rudp = FUNC13(s->Cedar, LISTENER_RUDP, 0, TCPAcceptedThread, NULL, false, false,
			&s->NatTGlobalUdpPort, RAND_PORT_ID_SERVER_LISTEN);
		FUNC21(rudp);
	}

	// Start a VPN-over-ICMP listener
	s->DynListenerIcmp = FUNC10(s->Cedar, &s->EnableVpnOverIcmp, LISTENER_ICMP, 0);

	// Start a VPN-over-DNS listener
	s->DynListenerDns = FUNC10(s->Cedar, &s->EnableVpnOverDns, LISTENER_DNS, 53);


	FUNC28(s);

	FUNC32(s->Cedar, "", true);

	return s;
}