#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_17__   TYPE_5__ ;
typedef  struct TYPE_16__   TYPE_4__ ;
typedef  struct TYPE_15__   TYPE_3__ ;
typedef  struct TYPE_14__   TYPE_2__ ;
typedef  struct TYPE_13__   TYPE_1__ ;

/* Type definitions */
struct TYPE_17__ {TYPE_4__* Session; TYPE_3__* Sock; } ;
struct TYPE_16__ {TYPE_2__* Account; } ;
struct TYPE_15__ {TYPE_5__* Param; } ;
struct TYPE_14__ {TYPE_1__* ClientOption; } ;
struct TYPE_13__ {int /*<<< orphan*/  AccountName; } ;
typedef  int /*<<< orphan*/  THREAD ;
typedef  TYPE_3__ SOCK ;
typedef  TYPE_4__ SESSION ;
typedef  int /*<<< orphan*/  PACK ;
typedef  TYPE_5__ CNC_STATUS_PRINTER_WINDOW_PARAM ;

/* Variables and functions */
 TYPE_3__* FUNC0 () ; 
 int /*<<< orphan*/  CncStatusPrinterWindowThreadProc ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 () ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ ,TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*,char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int FUNC8 (TYPE_3__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 TYPE_5__* FUNC10 (int) ; 

SOCK *FUNC11(SESSION *s)
{
	SOCK *sock;
	PACK *p;
	THREAD *t;
	CNC_STATUS_PRINTER_WINDOW_PARAM *param;
	// Validate arguments
	if (s == NULL)
	{
		return NULL;
	}

	sock = FUNC0();

	if (sock == NULL)
	{
		return NULL;
	}

	p = FUNC2();
	FUNC4(p, "function", "status_printer");
	FUNC5(p, "account_name", s->Account->ClientOption->AccountName);

	if (FUNC8(sock, p) == false)
	{
		FUNC1(p);
		FUNC6(sock);

		return NULL;
	}

	FUNC1(p);

	param = FUNC10(sizeof(CNC_STATUS_PRINTER_WINDOW_PARAM));
	param->Sock = sock;
	param->Session = s;

	sock->Param = param;

	t = FUNC3(CncStatusPrinterWindowThreadProc, param);
	FUNC9(t);

	FUNC7(t);

	return sock;
}