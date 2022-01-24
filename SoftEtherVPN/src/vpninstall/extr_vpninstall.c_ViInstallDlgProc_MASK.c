#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  wchar_t ;
typedef  int /*<<< orphan*/  WPARAM ;
struct TYPE_5__ {int WindowsShutdowning; } ;
typedef  TYPE_1__ VI_INSTALL_DLG ;
typedef  int UINT ;
typedef  scalar_t__ LPARAM ;
typedef  int /*<<< orphan*/ * HWND ;

/* Variables and functions */
#define  IDCANCEL 137 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  P_PROGRESS ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,void*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,TYPE_1__*) ; 
#define  WM_CLOSE 136 
#define  WM_COMMAND 135 
#define  WM_INITDIALOG 134 
#define  WM_QUERYENDSESSION 133 
#define  WM_TIMER 132 
#define  WM_VI_CANCEL 131 
#define  WM_VI_DOWNLOAD_FINISHED 130 
#define  WM_VI_SETPOS 129 
#define  WM_VI_SETTEXT 128 

UINT FUNC8(HWND hWnd, UINT msg, WPARAM wParam, LPARAM lParam, void *param)
{
	VI_INSTALL_DLG *d = (VI_INSTALL_DLG *)param;
	UINT pos;
	wchar_t *text;
	// Validate arguments
	if (hWnd == NULL)
	{
		return 0;
	}

	switch (msg)
	{
	case WM_INITDIALOG:
		FUNC5(hWnd, param);
		break;

	case WM_TIMER:
		switch (wParam)
		{
		case 1:
			FUNC0(hWnd, 1);
			FUNC6(hWnd, d);
			break;
		}
		break;

	case WM_VI_SETPOS:
		// Setting the progress bar
		pos = (UINT)lParam;
		FUNC2(hWnd, P_PROGRESS, FUNC1(pos, 0, 100));
		break;

	case WM_VI_SETTEXT:
		// Set the string
		text = (wchar_t *)lParam;
		FUNC3(hWnd, (UINT)wParam, text);
		break;

	case WM_VI_CANCEL:
		// There was a cancellation from the thread side
		FUNC4(hWnd, d);
		break;

	case WM_VI_DOWNLOAD_FINISHED:
		// Download Complete
		FUNC7(hWnd, d);
		break;

	case WM_COMMAND:
		switch (wParam)
		{
		case IDCANCEL:
			FUNC4(hWnd, d);
			break;
		}
		break;

	case WM_QUERYENDSESSION:
		d->WindowsShutdowning = true;
		break;

	case WM_CLOSE:
		break;
	}

	return 0;
}