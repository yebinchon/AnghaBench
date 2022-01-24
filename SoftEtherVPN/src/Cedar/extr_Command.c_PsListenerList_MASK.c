#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  wchar_t ;
typedef  int /*<<< orphan*/  tmp ;
typedef  int /*<<< orphan*/  t ;
typedef  scalar_t__ UINT ;
struct TYPE_7__ {int /*<<< orphan*/  Rpc; } ;
struct TYPE_6__ {scalar_t__ NumPort; int /*<<< orphan*/ * Ports; scalar_t__* Enables; scalar_t__* Errors; } ;
typedef  TYPE_1__ RPC_LISTENER_LIST ;
typedef  TYPE_2__ PS ;
typedef  int /*<<< orphan*/  LIST ;
typedef  int /*<<< orphan*/  CT ;
typedef  int /*<<< orphan*/  CONSOLE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/ * FUNC4 () ; 
 scalar_t__ ERR_INVALID_PARAMETER ; 
 scalar_t__ ERR_NO_ERROR ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*) ; 
 int /*<<< orphan*/ * FUNC7 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_1__*,int) ; 
 int /*<<< orphan*/ * FUNC11 (char*) ; 

UINT FUNC12(CONSOLE *c, char *cmd_name, wchar_t *str, void *param)
{
	LIST *o;
	PS *ps = (PS *)param;
	UINT ret;
	RPC_LISTENER_LIST t;
	UINT i;
	CT *ct;

	o = FUNC7(c, cmd_name, str, NULL, 0);
	if (o == NULL)
	{
		return ERR_INVALID_PARAMETER;
	}

	FUNC10(&t, sizeof(t));

	ret = FUNC8(ps->Rpc, &t);

	if (ret != ERR_NO_ERROR)
	{
		FUNC0(c, ret);
		FUNC5(o);
		return ret;
	}

	ct = FUNC4();

	FUNC3(ct, FUNC11("CM_LISTENER_COLUMN_1"), false);
	FUNC3(ct, FUNC11("CM_LISTENER_COLUMN_2"), false);

	for (i = 0;i < t.NumPort;i++)
	{
		wchar_t *status = FUNC11("CM_LISTENER_OFFLINE");
		wchar_t tmp[128];

		if (t.Errors[i])
		{
			status = FUNC11("CM_LISTENER_ERROR");
		}
		else if (t.Enables[i])
		{
			status = FUNC11("CM_LISTENER_ONLINE");
		}

		FUNC9(tmp, sizeof(tmp), FUNC11("CM_LISTENER_TCP_PORT"), t.Ports[i]);

		FUNC2(ct, tmp, status);
	}

	FUNC1(ct, c);

	FUNC6(&t);

	FUNC5(o);

	return 0;
}