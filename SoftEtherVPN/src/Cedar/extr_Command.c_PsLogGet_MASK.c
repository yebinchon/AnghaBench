#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_15__   TYPE_4__ ;
typedef  struct TYPE_14__   TYPE_3__ ;
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
typedef  char wchar_t ;
typedef  int /*<<< orphan*/  t ;
typedef  scalar_t__ UINT ;
struct TYPE_15__ {int /*<<< orphan*/  (* Write ) (TYPE_4__*,char*) ;} ;
struct TYPE_14__ {int /*<<< orphan*/  Rpc; int /*<<< orphan*/ * HubName; } ;
struct TYPE_12__ {int* PacketLogConfig; int /*<<< orphan*/  PacketLogSwitchType; scalar_t__ SavePacketLog; int /*<<< orphan*/  SecurityLogSwitchType; scalar_t__ SaveSecurityLog; } ;
struct TYPE_13__ {TYPE_1__ LogSetting; int /*<<< orphan*/  HubName; } ;
typedef  TYPE_2__ RPC_HUB_LOG ;
typedef  TYPE_3__ PS ;
typedef  int /*<<< orphan*/  LIST ;
typedef  int /*<<< orphan*/  CT ;
typedef  TYPE_4__ CONSOLE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_4__*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,char*) ; 
 int /*<<< orphan*/ * FUNC3 () ; 
 scalar_t__ ERR_INVALID_PARAMETER ; 
 scalar_t__ ERR_NO_ERROR ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 char* FUNC5 (int /*<<< orphan*/ ) ; 
 char* FUNC6 (scalar_t__) ; 
#define  PACKET_LOG_ALL 130 
#define  PACKET_LOG_HEADER 129 
#define  PACKET_LOG_NONE 128 
 int /*<<< orphan*/ * FUNC7 (TYPE_4__*,char*,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_2__*,int) ; 
 char* FUNC11 (char*) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_4__*,char*) ; 

UINT FUNC13(CONSOLE *c, char *cmd_name, wchar_t *str, void *param)
{
	LIST *o;
	PS *ps = (PS *)param;
	UINT ret = 0;
	RPC_HUB_LOG t;

	// If virtual HUB is not selected, it's an error
	if (ps->HubName == NULL)
	{
		c->Write(c, FUNC11("CMD_Hub_Not_Selected"));
		return ERR_INVALID_PARAMETER;
	}

	o = FUNC7(c, cmd_name, str, NULL, 0);
	if (o == NULL)
	{
		return ERR_INVALID_PARAMETER;
	}

	FUNC10(&t, sizeof(t));

	FUNC9(t.HubName, sizeof(t.HubName), ps->HubName);

	// RPC call
	ret = FUNC8(ps->Rpc, &t);

	if (ret != ERR_NO_ERROR)
	{
		// An error has occured
		FUNC0(c, ret);
		FUNC4(o);
		return ret;
	}
	else
	{
		CT *ct = FUNC3();

		FUNC2(ct, FUNC11("CMD_Log_SecurityLog"),
			t.LogSetting.SaveSecurityLog ? FUNC11("CMD_MSG_ENABLE") : FUNC11("CMD_MSG_DISABLE"));
		if (t.LogSetting.SaveSecurityLog)
		{
			FUNC2(ct, FUNC11("CMD_Log_SwitchType"), FUNC5(t.LogSetting.SecurityLogSwitchType));
		}

		FUNC2(ct, L"", L"");

		FUNC2(ct, FUNC11("CMD_Log_PacketLog"),
			t.LogSetting.SavePacketLog ? FUNC11("CMD_MSG_ENABLE") : FUNC11("CMD_MSG_DISABLE"));
		if (t.LogSetting.SavePacketLog)
		{
			UINT i;

			FUNC2(ct, FUNC11("CMD_Log_SwitchType"), FUNC5(t.LogSetting.PacketLogSwitchType));

			for (i = 0;i <= 7;i++)
			{
				wchar_t *tmp = NULL;

				switch (t.LogSetting.PacketLogConfig[i])
				{
				case PACKET_LOG_NONE:
					tmp = FUNC11("D_SM_LOG@B_PACKET_0_0");
					break;

				case PACKET_LOG_HEADER:
					tmp = FUNC11("D_SM_LOG@B_PACKET_0_1");
					break;

				case PACKET_LOG_ALL:
					tmp = FUNC11("D_SM_LOG@B_PACKET_0_2");
					break;
				}

				FUNC2(ct, FUNC6(i),
					tmp);
			}
		}

		FUNC1(ct, c);
	}

	FUNC4(o);

	return 0;
}