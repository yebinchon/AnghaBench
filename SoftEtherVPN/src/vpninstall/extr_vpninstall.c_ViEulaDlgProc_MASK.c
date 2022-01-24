#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  wchar_t ;
typedef  int /*<<< orphan*/  WPARAM ;
typedef  int UINT ;
typedef  int /*<<< orphan*/  LPARAM ;
typedef  int /*<<< orphan*/ * HWND ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  EM_SETSEL ; 
 int E_EULA ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int) ; 
#define  IDCANCEL 132 
#define  IDOK 131 
 scalar_t__ IDS_DLG_TITLE ; 
 scalar_t__ IDS_EULA_AGREE ; 
 scalar_t__ IDS_EULA_DISAGREE ; 
 scalar_t__ IDS_EULA_NOTICE1 ; 
 scalar_t__ IDS_EULA_NOTICE2 ; 
 scalar_t__ IDS_EULA_NOTICE3 ; 
 int S_BOLD ; 
 int S_EULA_NOTICE1 ; 
 int S_EULA_NOTICE3 ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ *) ; 
#define  WM_CLOSE 130 
#define  WM_COMMAND 129 
#define  WM_INITDIALOG 128 
 int /*<<< orphan*/ * FUNC7 (scalar_t__) ; 
 scalar_t__ skip ; 

UINT FUNC8(HWND hWnd, UINT msg, WPARAM wParam, LPARAM lParam, void *param)
{
	wchar_t *text = (wchar_t *)param;
	// Validate arguments
	if (hWnd == NULL)
	{
		return 0;
	}

	switch (msg)
	{
	case WM_INITDIALOG:
		FUNC6(hWnd, 0, FUNC7(IDS_DLG_TITLE+skip));
		FUNC6(hWnd, S_EULA_NOTICE1, FUNC7(IDS_EULA_NOTICE1+skip));
		FUNC6(hWnd, S_BOLD, FUNC7(IDS_EULA_NOTICE2+skip));
		FUNC6(hWnd, S_EULA_NOTICE3, FUNC7(IDS_EULA_NOTICE3+skip));
		FUNC6(hWnd, IDOK, FUNC7(IDS_EULA_AGREE+skip));
		FUNC6(hWnd, IDCANCEL, FUNC7(IDS_EULA_DISAGREE+skip));

		FUNC2(hWnd, S_BOLD, 0, true);
		FUNC6(hWnd, E_EULA, text);
		FUNC4(hWnd, E_EULA);
		FUNC5(hWnd, E_EULA, EM_SETSEL, 0, 0);
		FUNC0(hWnd);
		break;

	case WM_COMMAND:
		switch (wParam)
		{
		case IDOK:
			FUNC3(hWnd, 1);
			break;

		case IDCANCEL:
			FUNC1(hWnd);
			break;
		}
		break;

	case WM_CLOSE:
		FUNC3(hWnd, 0);
		break;
	}

	return 0;
}