#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/ * hWnd; } ;
typedef  TYPE_1__ VI_INSTALL_DLG ;
typedef  int /*<<< orphan*/ * HWND ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,scalar_t__,int,int) ; 
 scalar_t__ IDCANCEL ; 
 int /*<<< orphan*/  IDI_MAIN ; 
 scalar_t__ IDS_DLG_TITLE ; 
 scalar_t__ IDS_INSTALL_CANCEL ; 
 scalar_t__ IDS_INSTALL_DLG__STATUS_INIT ; 
 int /*<<< orphan*/  P_PROGRESS ; 
 scalar_t__ S_STATUS ; 
 scalar_t__ S_TITLE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__) ; 
 scalar_t__ skip ; 

void FUNC7(HWND hWnd, VI_INSTALL_DLG *d)
{
	// Validate arguments
	if (hWnd == NULL || d == NULL)
	{
		return;
	}

	d->hWnd = hWnd;

	FUNC1(hWnd, 0, IDI_MAIN);

	FUNC4(hWnd, 0, FUNC6(IDS_DLG_TITLE+skip));
	FUNC4(hWnd, S_TITLE, FUNC6(IDS_DLG_TITLE+skip));

	FUNC4(hWnd, S_STATUS, FUNC6(IDS_INSTALL_DLG__STATUS_INIT+skip));
	FUNC4(hWnd, IDCANCEL, FUNC6(IDS_INSTALL_CANCEL+skip));

	FUNC0(hWnd, S_TITLE+skip, 12, true);
	FUNC3(hWnd, P_PROGRESS, 0, 100);
	FUNC2(hWnd, P_PROGRESS, 0);

	FUNC5(hWnd, 1, 22, NULL);
}