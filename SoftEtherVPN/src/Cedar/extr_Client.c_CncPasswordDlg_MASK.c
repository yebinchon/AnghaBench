#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {char* Username; char* Password; char* ServerName; int /*<<< orphan*/  Type; void* ProxyServer; void* NoSavePassword; void* ShowNoSavePassword; void* AdminMode; int /*<<< orphan*/  RetryIntervalSec; } ;
typedef  TYPE_1__ UI_PASSWORD_DLG ;
struct TYPE_11__ {int HaltThread; int /*<<< orphan*/  Event; int /*<<< orphan*/ * Sock; TYPE_2__* Session; } ;
struct TYPE_10__ {int /*<<< orphan*/  RetryInterval; int /*<<< orphan*/  HaltEvent; } ;
typedef  int /*<<< orphan*/  THREAD ;
typedef  int /*<<< orphan*/  SOCK ;
typedef  TYPE_2__ SESSION ;
typedef  int /*<<< orphan*/  PACK ;
typedef  TYPE_3__ CNC_CONNECT_ERROR_DLG_THREAD_PARAM ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 () ; 
 int /*<<< orphan*/  CncConnectErrorDlgHaltThread ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  INFINITE ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/ * FUNC5 () ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ ,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,char*,void*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,char*,char*) ; 
 void* FUNC10 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,char*,char*,int) ; 
 int /*<<< orphan*/ * FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 TYPE_3__* FUNC21 (int) ; 

bool FUNC22(SESSION *session, UI_PASSWORD_DLG *dlg)
{
	SOCK *s;
	PACK *p;
	CNC_CONNECT_ERROR_DLG_THREAD_PARAM *dp;
	THREAD *t;
	bool ret = false;
	// Validate arguments
	if (dlg == NULL || session == NULL)
	{
		return false;
	}

	s = FUNC0();
	if (s == NULL)
	{
		FUNC19(session->HaltEvent, session->RetryInterval);
		return true;
	}

	p = FUNC5();
	FUNC9(p, "function", "password_dialog");
	FUNC8(p, "Type", dlg->Type);
	FUNC9(p, "Username", dlg->Username);
	FUNC9(p, "Password", dlg->Password);
	FUNC9(p, "ServerName", dlg->ServerName);
	FUNC8(p, "RetryIntervalSec", dlg->RetryIntervalSec);
	FUNC7(p, "ProxyServer", dlg->ProxyServer);
	FUNC7(p, "AdminMode", dlg->AdminMode);
	FUNC7(p, "ShowNoSavePassword", dlg->ShowNoSavePassword);
	FUNC7(p, "NoSavePassword", dlg->NoSavePassword);

	FUNC17(s, p);
	FUNC3(p);

	dp = FUNC21(sizeof(CNC_CONNECT_ERROR_DLG_THREAD_PARAM));
	dp->Session = session;
	dp->Sock = s;
	dp->Event = FUNC4();

	t = FUNC6(CncConnectErrorDlgHaltThread, dp);

	p = FUNC13(s);
	if (p != NULL)
	{
		ret = FUNC10(p, "ok");
		dlg->NoSavePassword = FUNC10(p, "NoSavePassword");
		dlg->ProxyServer = FUNC10(p, "ProxyServer");
		dlg->Type = FUNC11(p, "Type");
		FUNC12(p, "Username", dlg->Username, sizeof(dlg->Username));
		FUNC12(p, "Password", dlg->Password, sizeof(dlg->Password));

		FUNC3(p);
	}

	dp->HaltThread = true;
	FUNC18(dp->Event);

	FUNC20(t, INFINITE);

	FUNC14(dp->Event);
	FUNC2(dp);
	FUNC16(t);

	FUNC1(s);
	FUNC15(s);

	return ret;
}