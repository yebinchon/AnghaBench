#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  wchar_t ;
typedef  int /*<<< orphan*/  tmp ;
typedef  int /*<<< orphan*/  t ;
typedef  scalar_t__ UINT ;
struct TYPE_12__ {int /*<<< orphan*/  (* Write ) (TYPE_3__*,int /*<<< orphan*/ *) ;} ;
struct TYPE_11__ {int /*<<< orphan*/  RemoteClient; } ;
struct TYPE_10__ {scalar_t__ DeviceId; } ;
typedef  TYPE_1__ RPC_USE_SECURE ;
typedef  TYPE_2__ PC ;
typedef  int /*<<< orphan*/  LIST ;
typedef  TYPE_3__ CONSOLE ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*,scalar_t__) ; 
 scalar_t__ ERR_INVALID_PARAMETER ; 
 scalar_t__ ERR_NO_ERROR ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int MAX_SIZE ; 
 int /*<<< orphan*/ * FUNC3 (TYPE_3__*,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_3__*,int /*<<< orphan*/ *) ; 

UINT FUNC9(CONSOLE *c, char *cmd_name, wchar_t *str, void *param)
{
	LIST *o;
	PC *pc = (PC *)param;
	UINT ret = ERR_NO_ERROR;
	RPC_USE_SECURE t;

	// Get the parameter list
	o = FUNC3(c, cmd_name, str, NULL, 0);
	if (o == NULL)
	{
		return ERR_INVALID_PARAMETER;
	}

	// RPC call
	FUNC6(&t, sizeof(t));

	ret = FUNC0(pc->RemoteClient, &t);

	if (ret == ERR_NO_ERROR)
	{
		// Success
		wchar_t tmp[MAX_SIZE];

		if (t.DeviceId != 0)
		{
			FUNC4(tmp, sizeof(tmp), FUNC7("CMD_SecureGet_Print"), t.DeviceId);
		}
		else
		{
			FUNC5(tmp, sizeof(tmp), FUNC7("CMD_SecureGet_NoPrint"));
		}
		c->Write(c, tmp);
	}

	if (ret != ERR_NO_ERROR)
	{
		// Error has occurred
		FUNC1(c, ret);
	}

	// Release of the parameter list
	FUNC2(o);

	return ret;
}