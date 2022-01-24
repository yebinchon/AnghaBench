#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  wchar_t ;
typedef  int /*<<< orphan*/  tmp ;
struct TYPE_12__ {int /*<<< orphan*/  BuildInfo; int /*<<< orphan*/  VerString; TYPE_1__* Client; } ;
struct TYPE_11__ {int NoSaveLog; TYPE_3__* Cedar; int /*<<< orphan*/  Logger; int /*<<< orphan*/  PulseRecvThread; int /*<<< orphan*/ * GlobalPulse; int /*<<< orphan*/  EncryptedPassword; int /*<<< orphan*/  NotifyCancelList; int /*<<< orphan*/  ref; void* lockForConnect; void* lock; int /*<<< orphan*/  SockList; void* CmSetting; int /*<<< orphan*/  MsSuspendHandler; } ;
typedef  int /*<<< orphan*/  CM_SETTING ;
typedef  TYPE_1__ CLIENT ;

/* Variables and functions */
 int /*<<< orphan*/  CEDAR_CLIENT_STR ; 
 int /*<<< orphan*/  CLIENT_GLOBAL_PULSE_NAME ; 
 int /*<<< orphan*/  CLIENT_LOG_DIR_NAME ; 
 int /*<<< orphan*/  CLIENT_LOG_PREFIX ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,char*,...) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 
 int /*<<< orphan*/  CiPulseRecvThread ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  LOG_SWITCH_DAY ; 
 int MAX_SIZE ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int FUNC8 () ; 
 scalar_t__ FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 () ; 
 int /*<<< orphan*/ * FUNC11 (int /*<<< orphan*/ ) ; 
 TYPE_3__* FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 void* FUNC14 () ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 () ; 
 int /*<<< orphan*/  FUNC17 () ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC19 () ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC22 (int) ; 
 void* FUNC23 (int) ; 
 int /*<<< orphan*/  FUNC24 (char*) ; 
 int /*<<< orphan*/  FUNC25 (char*) ; 
 int /*<<< orphan*/ * ci_active_sessions_lock ; 
 scalar_t__ ci_num_active_sessions ; 

CLIENT *FUNC26()
{
	CLIENT *c = FUNC23(sizeof(CLIENT));

//	StartCedarLog();

	if (ci_active_sessions_lock == NULL)
	{
		ci_active_sessions_lock = FUNC14();
		ci_num_active_sessions = 0;
	}

#ifdef	OS_WIN32
	if (MsIsWindows7())
	{
		c->MsSuspendHandler = MsNewSuspendHandler();
	}
#endif	// OS_WIN32


	c->CmSetting = FUNC23(sizeof(CM_SETTING));

	c->SockList = FUNC17();

	c->lock = FUNC14();
	c->lockForConnect = FUNC14();
	c->ref = FUNC16();

	c->Cedar = FUNC12(NULL, NULL);

	c->Cedar->Client = c;

	c->NotifyCancelList = FUNC13(NULL);

	FUNC20(c->EncryptedPassword, "", 0);

#ifdef	OS_WIN32
	c->GlobalPulse = MsOpenOrCreateGlobalPulse(CLIENT_GLOBAL_PULSE_NAME);
#endif	// OS_WIN32

	if (c->GlobalPulse != NULL)
	{
		c->PulseRecvThread = FUNC18(CiPulseRecvThread, c);
	}

	FUNC5(c);

	// Log Settings
	if(c->NoSaveLog == false)
	{
		FUNC7(CLIENT_LOG_DIR_NAME);
		c->Logger = FUNC15(CLIENT_LOG_DIR_NAME, CLIENT_LOG_PREFIX, LOG_SWITCH_DAY);
	}

	FUNC0(c, "L_LINE");
	FUNC0(c, "LC_START_2", CEDAR_CLIENT_STR, c->Cedar->VerString);
	FUNC0(c, "LC_START_3", c->Cedar->BuildInfo);
	FUNC0(c, "LC_START_1");

#ifdef	OS_WIN32
	{
		// Initialize the Win32 UI
		wchar_t tmp[MAX_SIZE];
		StrToUni(tmp, sizeof(tmp), CEDAR_CLIENT_STR);

		InitWinUi(tmp, _SS("DEFAULT_FONT"), _II("DEFAULT_FONT_SIZE"));
	}
#endif	// OS_WIN32

	// Initialize the settings
	FUNC4(c);

	// Raise the priority
	FUNC19();



#ifdef	OS_WIN32
	// For Win9x, release the DHCP address of all the virtual LAN card
	if (MsIsNt() == false)
	{
		Win32ReleaseAllDhcp9x(true);
	}
#endif	// OS_WIN32

	FUNC3(c);

	FUNC2(c);

	// Initialize the internal VPN server
	FUNC1(c);

	return c;
}