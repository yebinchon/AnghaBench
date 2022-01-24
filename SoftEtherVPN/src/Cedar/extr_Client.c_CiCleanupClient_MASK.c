#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int HaltPulseThread; int /*<<< orphan*/ * MsSuspendHandler; struct TYPE_6__* CmSetting; int /*<<< orphan*/  SockList; int /*<<< orphan*/  NotifyCancelList; int /*<<< orphan*/ * GlobalPulse; int /*<<< orphan*/ * PulseRecvThread; int /*<<< orphan*/ * lock; int /*<<< orphan*/ * lockForConnect; int /*<<< orphan*/  Cedar; int /*<<< orphan*/ * Logger; int /*<<< orphan*/  Eraser; } ;
typedef  TYPE_1__ CLIENT ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,char*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  INFINITE ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int FUNC10 () ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 () ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (int) ; 
 int /*<<< orphan*/ * ci_active_sessions_lock ; 
 scalar_t__ ci_num_active_sessions ; 

void FUNC18(CLIENT *c)
{
	// Validate arguments
	if (c == NULL)
	{
		return;
	}


	// Release the settings
	FUNC1(c);

#ifdef	OS_WIN32
	// Release the Win32 UI
	FreeWinUi();
#endif	// OS_WIN32

	FUNC0(c, "LC_END");
	FUNC0(c, "L_LINE");
	FUNC4(c->Eraser);
	FUNC5(c->Logger);
	c->Logger = NULL;


	FUNC12(c->Cedar);

	FUNC2(c->lockForConnect);
	FUNC2(c->lock);

	c->HaltPulseThread = true;

	if (c->GlobalPulse != NULL)
	{
#ifdef	OS_WIN32
		MsSendGlobalPulse(c->GlobalPulse);
#endif	// OS_WIN32
	}

	if (c->PulseRecvThread != NULL)
	{
		FUNC16(c->PulseRecvThread, INFINITE);
		FUNC14(c->PulseRecvThread);
	}

	if (c->GlobalPulse != NULL)
	{
#ifdef	OS_WIN32
		MsCloseGlobalPulse(c->GlobalPulse);
#endif	// OS_WIN32
	}

	FUNC13(c->NotifyCancelList);

	FUNC6(c->SockList);

	FUNC3(c->CmSetting);


#ifdef	OS_WIN32
	if (c->MsSuspendHandler != NULL)
	{
		MsFreeSuspendHandler(c->MsSuspendHandler);
	}
#endif	// OS_WIN32

	FUNC3(c);

#ifdef	OS_WIN32
	// For Win9x, release the DHCP address of all the virtual LAN card
	if (MsIsNt() == false)
	{
		Win32ReleaseAllDhcp9x(true);
	}
#endif	// OS_WIN32

	FUNC15();

	if (ci_active_sessions_lock != NULL)
	{
		FUNC2(ci_active_sessions_lock);
		ci_active_sessions_lock = NULL;

		ci_num_active_sessions = 0;
	}
}