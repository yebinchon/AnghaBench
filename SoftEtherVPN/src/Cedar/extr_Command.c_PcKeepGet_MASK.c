#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  char wchar_t ;
typedef  int /*<<< orphan*/  tmp ;
typedef  int /*<<< orphan*/  t ;
typedef  scalar_t__ UINT ;
struct TYPE_6__ {scalar_t__ KeepConnectProtocol; scalar_t__ UseKeepConnect; int /*<<< orphan*/  KeepConnectInterval; int /*<<< orphan*/  KeepConnectPort; int /*<<< orphan*/  KeepConnectHost; } ;
struct TYPE_5__ {int /*<<< orphan*/  RemoteClient; } ;
typedef  TYPE_1__ PC ;
typedef  int /*<<< orphan*/  LIST ;
typedef  int /*<<< orphan*/  CT ;
typedef  int /*<<< orphan*/  CONSOLE ;
typedef  TYPE_2__ CLIENT_CONFIG ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,char*) ; 
 int /*<<< orphan*/ * FUNC4 () ; 
 scalar_t__ ERR_INVALID_PARAMETER ; 
 scalar_t__ ERR_NO_ERROR ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int MAX_SIZE ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ *,char*,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (char*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_2__*,int) ; 
 char* FUNC10 (char*) ; 

UINT FUNC11(CONSOLE *c, char *cmd_name, wchar_t *str, void *param)
{
	LIST *o;
	PC *pc = (PC *)param;
	UINT ret = ERR_NO_ERROR;
	CLIENT_CONFIG t;

	o = FUNC6(c, cmd_name, str, NULL, 0);
	if (o == NULL)
	{
		return ERR_INVALID_PARAMETER;
	}

	// RPC call
	FUNC9(&t, sizeof(t));

	ret = FUNC0(pc->RemoteClient, &t);

	if (ret == ERR_NO_ERROR)
	{
		wchar_t tmp[MAX_SIZE];
		CT *ct = FUNC4();

		FUNC7(tmp, sizeof(tmp), t.KeepConnectHost);
		FUNC3(ct, FUNC10("CMD_KeepGet_COLUMN_1"), tmp);

		FUNC8(tmp, t.KeepConnectPort);
		FUNC3(ct, FUNC10("CMD_KeepGet_COLUMN_2"), tmp);

		FUNC8(tmp, t.KeepConnectInterval);
		FUNC3(ct, FUNC10("CMD_KeepGet_COLUMN_3"), tmp);

		FUNC3(ct, FUNC10("CMD_KeepGet_COLUMN_4"),
			t.KeepConnectProtocol == 0 ? L"TCP/IP" : L"UDP/IP");

		FUNC3(ct, FUNC10("CMD_KeepGet_COLUMN_5"),
			t.UseKeepConnect ? FUNC10("SM_ACCESS_ENABLE") : FUNC10("SM_ACCESS_DISABLE"));

		FUNC2(ct, c);
	}

	if (ret != ERR_NO_ERROR)
	{
		// Error has occurred
		FUNC1(c, ret);
	}

	// Release of the parameter list
	FUNC5(o);

	return ret;
}