#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {char* ServerName; void* SaveServerCert; void* DiffWarning; void* Ok; int /*<<< orphan*/  old_x; int /*<<< orphan*/  parent_x; int /*<<< orphan*/  x; int /*<<< orphan*/  AccountName; } ;
typedef  TYPE_1__ UI_CHECKCERT ;
struct TYPE_8__ {int HaltThread; int /*<<< orphan*/  Event; int /*<<< orphan*/ * Session; int /*<<< orphan*/ * Sock; } ;
typedef  int /*<<< orphan*/  THREAD ;
typedef  int /*<<< orphan*/  SOCK ;
typedef  int /*<<< orphan*/  SESSION ;
typedef  int /*<<< orphan*/  PACK ;
typedef  TYPE_2__ CNC_CONNECT_ERROR_DLG_THREAD_PARAM ;

/* Variables and functions */
 int /*<<< orphan*/  CncCheckCertHaltThread ; 
 int /*<<< orphan*/ * FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  INFINITE ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/ * FUNC5 () ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ ,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,char*,void*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,char*,char*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 void* FUNC11 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/ * FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC19 (int) ; 

void FUNC20(SESSION *session, UI_CHECKCERT *dlg)
{
	SOCK *s;
	PACK *p;
	CNC_CONNECT_ERROR_DLG_THREAD_PARAM *dp;
	THREAD *t;
	// Validate arguments
	if (dlg == NULL || session == NULL)
	{
		return;
	}

	s = FUNC0();
	if (s == NULL)
	{
		return;
	}

	p = FUNC5();
	FUNC8(p, "function", "check_cert");
	FUNC9(p, "AccountName", dlg->AccountName);
	FUNC8(p, "ServerName", dlg->ServerName);
	FUNC10(p, "x", dlg->x);
	FUNC10(p, "parent_x", dlg->parent_x);
	FUNC10(p, "old_x", dlg->old_x);
	FUNC7(p, "DiffWarning", dlg->DiffWarning);
	FUNC7(p, "Ok", dlg->Ok);
	FUNC7(p, "SaveServerCert", dlg->SaveServerCert);

	FUNC16(s, p);
	FUNC3(p);

	dp = FUNC19(sizeof(CNC_CONNECT_ERROR_DLG_THREAD_PARAM));
	dp->Sock = s;
	dp->Event = FUNC4();
	dp->Session = session;

	t = FUNC6(CncCheckCertHaltThread, dp);

	p = FUNC12(s);
	if (p != NULL)
	{
		dlg->Ok = FUNC11(p, "Ok");
		dlg->DiffWarning = FUNC11(p, "DiffWarning");
		dlg->SaveServerCert = FUNC11(p, "SaveServerCert");

		FUNC3(p);
	}

	dp->HaltThread = true;
	FUNC17(dp->Event);

	FUNC18(t, INFINITE);

	FUNC13(dp->Event);
	FUNC2(dp);
	FUNC15(t);

	FUNC1(s);
	FUNC14(s);
}