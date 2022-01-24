#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_4__ ;
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  wchar_t ;
typedef  int /*<<< orphan*/  instdir ;
typedef  int /*<<< orphan*/  info ;
typedef  int /*<<< orphan*/  hamcore ;
typedef  int /*<<< orphan*/  filename ;
typedef  int /*<<< orphan*/  exe ;
typedef  int /*<<< orphan*/  arg ;
struct TYPE_10__ {int /*<<< orphan*/  CurrentInstalledPathW; int /*<<< orphan*/  VpnCMgrExeFileName; scalar_t__ CurrentInstalled; int /*<<< orphan*/  Build; } ;
typedef  TYPE_1__ VI_SETTING_ARCH ;
struct TYPE_11__ {int NoClose; int WindowsShutdowning; } ;
typedef  TYPE_2__ VI_INSTALL_DLG ;
struct TYPE_13__ {int DownloadNotRequired; int /*<<< orphan*/  DownloadedSettingPathW; scalar_t__ NormalMode; scalar_t__ WebMode; int /*<<< orphan*/ * DownloadedInstallerPathW; } ;
struct TYPE_12__ {int cbSize; char* lpVerb; char* lpParameters; int /*<<< orphan*/ * hProcess; int /*<<< orphan*/  nShow; int /*<<< orphan*/  fMask; int /*<<< orphan*/ * lpFile; } ;
typedef  TYPE_3__ SHELLEXECUTEINFOW ;
typedef  int /*<<< orphan*/ * HWND ;
typedef  int /*<<< orphan*/ * HANDLE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (char*,int,char*,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  IDCANCEL ; 
 scalar_t__ IDS_INSTALLSTART ; 
 scalar_t__ IDS_INSTALLSTART_ERROR ; 
 int MAX_PATH ; 
 int /*<<< orphan*/  MB_ICONSTOP ; 
 int FUNC6 (char*) ; 
 int /*<<< orphan*/ * FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC8 (char*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  P_PROGRESS ; 
 int /*<<< orphan*/  SEE_MASK_NOCLOSEPROCESS ; 
 int /*<<< orphan*/  SW_SHOWNORMAL ; 
 int /*<<< orphan*/  S_SIZEINFO ; 
 int /*<<< orphan*/  S_STATUS ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC12 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *,int,char*,char*,...) ; 
 int FUNC16 (int /*<<< orphan*/ ) ; 
 int FUNC17 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC18 (char*,int,int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC19 () ; 
 int /*<<< orphan*/  FUNC20 (TYPE_1__*) ; 
 scalar_t__ WAIT_TIMEOUT ; 
 scalar_t__ FUNC21 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC22 (TYPE_3__*,int) ; 
 int /*<<< orphan*/  FUNC23 (scalar_t__) ; 
 TYPE_4__ setting ; 
 scalar_t__ skip ; 
 int sleep_before_exit ; 

void FUNC24(HWND hWnd, VI_INSTALL_DLG *d)
{
	wchar_t *exew;
	bool ok;
	char instdir[MAX_PATH];
	char hamcore[MAX_PATH];
	// Validate arguments
	if (hWnd == NULL || d == NULL)
	{
		return;
	}

	FUNC18(instdir, sizeof(instdir), FUNC19()->Build);
	FUNC2(hamcore, sizeof(hamcore), instdir, "hamcore.se2");

	exew = setting.DownloadedInstallerPathW;
	d->NoClose = true;

	FUNC5(hWnd, IDCANCEL);
	FUNC10(hWnd, P_PROGRESS, 100);
	FUNC5(hWnd, P_PROGRESS);
	FUNC5(hWnd, S_SIZEINFO);
	FUNC11(hWnd, S_STATUS, FUNC23(IDS_INSTALLSTART+skip));

	ok = true;

	if (setting.DownloadNotRequired == false)
	{
		if (setting.WebMode && FUNC17(hWnd, exew) == false)
		{
			// The digital signature is not reliable
			ok = false;
		}
		else
		{
			// Installation
			HANDLE hProcess;
			SHELLEXECUTEINFOW info;

			// Run
			FUNC22(&info, sizeof(info));
			info.cbSize = sizeof(info);
			info.lpVerb = L"open";
			info.lpFile = exew;
			info.fMask = SEE_MASK_NOCLOSEPROCESS;
			info.lpParameters = L"/HIDESTARTCOMMAND:1 /DISABLEAUTOIMPORT:1 /ISWEBINSTALLER:1";
			info.nShow = SW_SHOWNORMAL;
			if (FUNC12(&info) == false)
			{
				FUNC9(hWnd, MB_ICONSTOP, FUNC23(IDS_INSTALLSTART_ERROR+skip));
				ok = false;
			}
			else
			{
				hProcess = info.hProcess;

				// Wait for the install process to complete
				while (true)
				{
					if (FUNC21(hProcess, 50) != WAIT_TIMEOUT)
					{
						break;
					}

					FUNC4(hWnd);
				}
				FUNC1(hProcess);
			}
		}
	}

	if (ok && d->WindowsShutdowning == false)
	{
		VI_SETTING_ARCH *a = FUNC19();
		wchar_t arg[MAX_PATH];
		wchar_t exe[MAX_PATH];
		char *arg1 = "/easy";
		// Hide the screen
		FUNC5(hWnd, 0);

		if (setting.NormalMode)
		{
			arg1 = "/normal";
		}

		// (Just in case) start the VPN Client service
		if (FUNC6("vpnclient") == false)
		{
			FUNC8("vpnclient");
		}

		// Wait for that the service becomes available
		FUNC14(0);

		if (FUNC16(setting.DownloadedSettingPathW) == false)
		{
			// Start a connection by importing the configuration file into the VPN Client
			FUNC15(arg, sizeof(arg), L"%S \"%s\"", arg1, setting.DownloadedSettingPathW);
		}
		else
		{
			// Just start the Connection Manager
			FUNC15(arg, sizeof(arg), L"%S", arg1);
		}

		// Get the installation state
		FUNC20(a);

		if (a->CurrentInstalled)
		{
			HANDLE h;
			wchar_t filename[MAX_PATH];

			FUNC13(filename, sizeof(filename), a->VpnCMgrExeFileName);

			FUNC3(exe, sizeof(exe), a->CurrentInstalledPathW, filename);

			// Start the Connection Manager
			h = FUNC7(exe, arg, false);
			if (h != NULL)
			{
				if (FUNC16(setting.DownloadedSettingPathW) == false)
				{
					sleep_before_exit = true;
				}

				FUNC1(h);
			}
		}
	}

	d->NoClose = false;
	FUNC0(hWnd);
}