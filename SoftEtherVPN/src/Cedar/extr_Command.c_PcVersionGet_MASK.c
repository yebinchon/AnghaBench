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
typedef  int /*<<< orphan*/  wchar_t ;
typedef  int /*<<< orphan*/  tmp ;
typedef  int /*<<< orphan*/  t ;
typedef  scalar_t__ UINT ;
struct TYPE_6__ {int /*<<< orphan*/  RemoteClient; } ;
struct TYPE_5__ {int /*<<< orphan*/  OsType; int /*<<< orphan*/  ProcessId; int /*<<< orphan*/  ClientBuildInfoString; int /*<<< orphan*/  ClientVersionString; int /*<<< orphan*/  ClientProductName; } ;
typedef  TYPE_1__ RPC_CLIENT_VERSION ;
typedef  TYPE_2__ PC ;
typedef  int /*<<< orphan*/  LIST ;
typedef  int /*<<< orphan*/  CT ;
typedef  int /*<<< orphan*/  CONSOLE ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 () ; 
 scalar_t__ ERR_INVALID_PARAMETER ; 
 scalar_t__ ERR_NO_ERROR ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int MAX_SIZE ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC7 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC11 (char*) ; 

UINT FUNC12(CONSOLE *c, char *cmd_name, wchar_t *str, void *param)
{
	LIST *o;
	PC *pc = (PC *)param;
	UINT ret = ERR_NO_ERROR;
	RPC_CLIENT_VERSION t;

	// Get the parameter list
	o = FUNC7(c, cmd_name, str, NULL, 0);
	if (o == NULL)
	{
		return ERR_INVALID_PARAMETER;
	}

	// RPC call
	FUNC10(&t, sizeof(t));

	ret = FUNC0(pc->RemoteClient, &t);

	if (ret == ERR_NO_ERROR)
	{
		wchar_t tmp[MAX_SIZE];
		CT *ct;

		// Success
		ct = FUNC4();

		FUNC8(tmp, sizeof(tmp), t.ClientProductName);
		FUNC3(ct, FUNC11("CMD_VersionGet_1"), tmp);

		FUNC8(tmp, sizeof(tmp), t.ClientVersionString);
		FUNC3(ct, FUNC11("CMD_VersionGet_2"), tmp);

		FUNC8(tmp, sizeof(tmp), t.ClientBuildInfoString);
		FUNC3(ct, FUNC11("CMD_VersionGet_3"), tmp);

		FUNC9(tmp, t.ProcessId);
		FUNC3(ct, FUNC11("CMD_VersionGet_4"), tmp);

		FUNC8(tmp, sizeof(tmp), FUNC6(t.OsType));
		FUNC3(ct, FUNC11("CMD_VersionGet_5"), tmp);

		FUNC2(ct, c);
	}

	if (ret != ERR_NO_ERROR)
	{
		// Error has occurred
		FUNC1(c, ret);
	}

	// Release the parameter list
	FUNC5(o);

	return ret;
}