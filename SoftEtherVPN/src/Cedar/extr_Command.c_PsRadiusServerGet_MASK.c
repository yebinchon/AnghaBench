#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_3__ ;
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  wchar_t ;
typedef  int /*<<< orphan*/  tmp ;
typedef  int /*<<< orphan*/  t ;
typedef  scalar_t__ UINT ;
struct TYPE_13__ {int /*<<< orphan*/  (* Write ) (TYPE_3__*,int /*<<< orphan*/ *) ;} ;
struct TYPE_12__ {int /*<<< orphan*/  Rpc; int /*<<< orphan*/ * HubName; } ;
struct TYPE_11__ {int /*<<< orphan*/  RadiusRetryInterval; int /*<<< orphan*/  RadiusSecret; int /*<<< orphan*/  RadiusPort; int /*<<< orphan*/  RadiusServerName; int /*<<< orphan*/  HubName; } ;
typedef  TYPE_1__ RPC_RADIUS ;
typedef  TYPE_2__ PS ;
typedef  int /*<<< orphan*/  LIST ;
typedef  int /*<<< orphan*/  CT ;
typedef  TYPE_3__ CONSOLE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_3__*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 () ; 
 scalar_t__ ERR_INVALID_PARAMETER ; 
 scalar_t__ ERR_NO_ERROR ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 int MAX_SIZE ; 
 int /*<<< orphan*/ * FUNC6 (TYPE_3__*,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_1__*,int) ; 
 int /*<<< orphan*/ * FUNC12 (char*) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_3__*,int /*<<< orphan*/ *) ; 

UINT FUNC14(CONSOLE *c, char *cmd_name, wchar_t *str, void *param)
{
	LIST *o;
	PS *ps = (PS *)param;
	UINT ret = 0;
	RPC_RADIUS t;

	// If virtual HUB is not selected, it's an error
	if (ps->HubName == NULL)
	{
		c->Write(c, FUNC12("CMD_Hub_Not_Selected"));
		return ERR_INVALID_PARAMETER;
	}

	o = FUNC6(c, cmd_name, str, NULL, 0);
	if (o == NULL)
	{
		return ERR_INVALID_PARAMETER;
	}

	FUNC11(&t, sizeof(t));

	FUNC8(t.HubName, sizeof(t.HubName), ps->HubName);

	// RPC call
	ret = FUNC7(ps->Rpc, &t);

	if (ret != ERR_NO_ERROR)
	{
		// An error has occured
		FUNC0(c, ret);
		FUNC4(o);
		return ret;
	}
	else
	{
		CT *ct;
		wchar_t tmp[MAX_SIZE];

		ct = FUNC3();

		if (FUNC5(t.RadiusServerName))
		{
			FUNC2(ct, FUNC12("CMD_RadiusServerGet_STATUS"), FUNC12("CMD_MSG_DISABLE"));
		}
		else
		{
			FUNC2(ct, FUNC12("CMD_RadiusServerGet_STATUS"), FUNC12("CMD_MSG_ENABLE"));

			FUNC9(tmp, sizeof(tmp), t.RadiusServerName);
			FUNC2(ct, FUNC12("CMD_RadiusServerGet_HOST"), tmp);

			FUNC10(tmp, t.RadiusPort);
			FUNC2(ct, FUNC12("CMD_RadiusServerGet_PORT"), tmp);

			FUNC9(tmp, sizeof(tmp), t.RadiusSecret);
			FUNC2(ct, FUNC12("CMD_RadiusServerGet_SECRET"), tmp);

			FUNC10(tmp, t.RadiusRetryInterval);
			FUNC2(ct, FUNC12("CMD_RadiusServerGet_RetryInterval"), tmp);
		}

		FUNC1(ct, c);
	}

	FUNC4(o);

	return 0;
}