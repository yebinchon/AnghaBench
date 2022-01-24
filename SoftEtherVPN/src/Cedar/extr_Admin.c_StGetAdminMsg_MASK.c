#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_34__   TYPE_7__ ;
typedef  struct TYPE_33__   TYPE_6__ ;
typedef  struct TYPE_32__   TYPE_4__ ;
typedef  struct TYPE_31__   TYPE_3__ ;
typedef  struct TYPE_30__   TYPE_2__ ;
typedef  struct TYPE_29__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  winver_msg_server ;
typedef  int /*<<< orphan*/  winver_msg_client ;
struct TYPE_29__ {struct TYPE_29__* Msg; } ;
typedef  TYPE_1__ wchar_t ;
typedef  scalar_t__ UINT ;
struct TYPE_34__ {int /*<<< orphan*/  ClientWinVer; TYPE_3__* Server; } ;
struct TYPE_33__ {int Bridge; } ;
struct TYPE_32__ {int /*<<< orphan*/  Title; } ;
struct TYPE_31__ {TYPE_6__* Cedar; } ;
struct TYPE_30__ {int /*<<< orphan*/  wMonth; int /*<<< orphan*/  wYear; } ;
typedef  TYPE_2__ SYSTEMTIME ;
typedef  TYPE_3__ SERVER ;
typedef  TYPE_4__ RPC_WINVER ;
typedef  TYPE_1__ RPC_MSG ;
typedef  TYPE_6__ CEDAR ;
typedef  TYPE_7__ ADMIN ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_4__*,int /*<<< orphan*/ *,int) ; 
 scalar_t__ ERR_NO_ERROR ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  GSF_SHOW_OSS_MSG ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_4__*) ; 
 int FUNC4 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*) ; 
 int /*<<< orphan*/  SUPPORTED_WINDOWS_LIST ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,int,TYPE_1__*,TYPE_1__*,int /*<<< orphan*/ ,TYPE_1__*,int /*<<< orphan*/ ,TYPE_1__*,TYPE_1__*,TYPE_1__*,TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*,scalar_t__,TYPE_1__*) ; 
 scalar_t__ FUNC8 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_1__*,int) ; 
 TYPE_1__* FUNC10 (scalar_t__) ; 
 TYPE_1__* FUNC11 (char*) ; 

UINT FUNC12(ADMIN *a, RPC_MSG *t)
{
	SERVER *s = a->Server;
	CEDAR *c = s->Cedar;
	UINT ret = ERR_NO_ERROR;
	RPC_WINVER server_ver;
	RPC_WINVER client_ver;
	wchar_t winver_msg_client[3800];
	wchar_t winver_msg_server[3800];
	UINT tmpsize;
	wchar_t *tmp;

	FUNC1(t);
	FUNC9(t, sizeof(RPC_MSG));

	// Check for Windows version
	FUNC3(&server_ver);
	FUNC0(&client_ver, &a->ClientWinVer, sizeof(RPC_WINVER));

	FUNC9(winver_msg_client, sizeof(winver_msg_client));
	FUNC9(winver_msg_server, sizeof(winver_msg_server));

	if (FUNC4(&client_ver) == false)
	{
		SYSTEMTIME st;

		FUNC5(&st);

		FUNC6(winver_msg_client, sizeof(winver_msg_client), FUNC11("WINVER_ERROR_FORMAT"),
			FUNC11("WINVER_ERROR_PC_LOCAL"),
			client_ver.Title,
			FUNC11("WINVER_ERROR_VPNSERVER"),
			SUPPORTED_WINDOWS_LIST,
			FUNC11("WINVER_ERROR_PC_LOCAL"),
			FUNC11("WINVER_ERROR_VPNSERVER"),
			FUNC11("WINVER_ERROR_VPNSERVER"),
			FUNC11("WINVER_ERROR_VPNSERVER"),
			st.wYear, st.wMonth);
	}

	if (FUNC4(&server_ver) == false)
	{
		SYSTEMTIME st;

		FUNC5(&st);

		FUNC6(winver_msg_server, sizeof(winver_msg_server), FUNC11("WINVER_ERROR_FORMAT"),
			FUNC11("WINVER_ERROR_PC_REMOTE"),
			server_ver.Title,
			FUNC11("WINVER_ERROR_VPNSERVER"),
			SUPPORTED_WINDOWS_LIST,
			FUNC11("WINVER_ERROR_PC_REMOTE"),
			FUNC11("WINVER_ERROR_VPNSERVER"),
			FUNC11("WINVER_ERROR_VPNSERVER"),
			FUNC11("WINVER_ERROR_VPNSERVER"),
			st.wYear, st.wMonth);
	}

	tmpsize = FUNC8(winver_msg_client) + FUNC8(winver_msg_server) + 10000;

	tmp = FUNC10(tmpsize);

	if (
		c->Bridge == false)
	{
		if (FUNC2(GSF_SHOW_OSS_MSG) != 0)
		{
			FUNC7(tmp, tmpsize, FUNC11("OSS_MSG"));
		}
	}

	FUNC7(tmp, tmpsize, winver_msg_client);
	FUNC7(tmp, tmpsize, winver_msg_server);

	t->Msg = tmp;

	return ERR_NO_ERROR;
}