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
typedef  int /*<<< orphan*/  t ;
typedef  scalar_t__ UINT64 ;
typedef  scalar_t__ UINT ;
typedef  scalar_t__ UCHAR ;
struct TYPE_12__ {int /*<<< orphan*/  ClientId; int /*<<< orphan*/  ShowVgcLink; int /*<<< orphan*/  IsVgcSupported; int /*<<< orphan*/  OsType; int /*<<< orphan*/  Win9x; int /*<<< orphan*/  Unix; TYPE_2__* Rpc; } ;
struct TYPE_11__ {TYPE_3__* Param; } ;
struct TYPE_10__ {int /*<<< orphan*/  ClientId; int /*<<< orphan*/  ShowVgcLink; int /*<<< orphan*/  IsVgcSupported; int /*<<< orphan*/  OsType; } ;
typedef  int /*<<< orphan*/  SOCK ;
typedef  TYPE_1__ RPC_CLIENT_VERSION ;
typedef  TYPE_2__ RPC ;
typedef  TYPE_3__ REMOTE_CLIENT ;

/* Variables and functions */
 scalar_t__ CLIENT_CONFIG_PORT ; 
 scalar_t__ CLIENT_RPC_MODE_MANAGEMENT ; 
 scalar_t__ CLIENT_RPC_MODE_SHORTCUT ; 
 scalar_t__ CLIENT_RPC_MODE_SHORTCUT_DISCONNECT ; 
 int /*<<< orphan*/  CLIENT_WIN32_REGKEYNAME ; 
 int /*<<< orphan*/  CLIENT_WIN32_REGVALUE_PID ; 
 int /*<<< orphan*/  CLIENT_WIN32_REGVALUE_PORT ; 
 int /*<<< orphan*/  FUNC0 (TYPE_3__*,TYPE_1__*) ; 
 scalar_t__ FUNC1 (char*,scalar_t__) ; 
 int /*<<< orphan*/ * FUNC2 (char*,scalar_t__) ; 
 scalar_t__ ERR_CONNECT_FAILED ; 
 scalar_t__ ERR_NO_ERROR ; 
 scalar_t__ FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  GC_SVC_NAME_VPNCLIENT ; 
 int INFINITE ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  REG_LOCAL_MACHINE ; 
 int FUNC8 (int /*<<< orphan*/ *,scalar_t__*,int,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int SHA1_SIZE ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,scalar_t__*,int) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,scalar_t__*,int,int) ; 
 int FUNC12 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC14 (scalar_t__*,char*,int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC15 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC16 (char*,char*) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (char*) ; 
 scalar_t__ FUNC19 () ; 
 int /*<<< orphan*/  FUNC20 (TYPE_1__*,int) ; 
 TYPE_3__* FUNC21 (int) ; 

REMOTE_CLIENT *FUNC22(char *server_name, char *password, bool *bad_pass, bool *no_remote, UCHAR *key, UINT *key_error_code, bool shortcut_disconnect, UINT wait_retry)
{
	SOCK *s = NULL;
	UINT i;
	UINT retcode;
	UINT rpc_mode = CLIENT_RPC_MODE_MANAGEMENT;
	RPC *rpc;
	REMOTE_CLIENT *ret;
	UCHAR hash_password[SHA1_SIZE];
	UINT port_start;
	UINT64 try_started = 0;
	bool ok;
	UINT reg_port = 0;
	UINT reg_pid = 0;
	// Validate arguments
	if (server_name == NULL)
	{
		return NULL;
	}
	if (password == NULL)
	{
		password = "";
	}

	if (key_error_code != NULL)
	{
		*key_error_code = ERR_NO_ERROR;
	}

	if (bad_pass != NULL)
	{
		*bad_pass = false;
	}

	if (no_remote != NULL)
	{
		*no_remote = false;
	}

#ifdef	OS_WIN32
	// read the current port number from the registry of the localhost
	if (StrCmpi(server_name, "localhost") == 0)
	{
		reg_port = MsRegReadIntEx2(REG_LOCAL_MACHINE, CLIENT_WIN32_REGKEYNAME, CLIENT_WIN32_REGVALUE_PORT, false, true);
		reg_pid = MsRegReadIntEx2(REG_LOCAL_MACHINE, CLIENT_WIN32_REGKEYNAME, CLIENT_WIN32_REGVALUE_PID, false, true);

		if (reg_pid != 0)
		{
			if (MsIsServiceRunning(GC_SVC_NAME_VPNCLIENT) == false)
			{
				reg_port = 0;
			}
		}
		else
		{
			reg_port = 0;
		}
	}

	if (reg_port != 0)
	{
		s = Connect(server_name, reg_port);

		if (s != NULL)
		{
			goto L_TRY;
		}
	}

#endif	// OS_WIN32

	port_start = CLIENT_CONFIG_PORT - 1;

RETRY:
	port_start++;

	if (port_start >= (CLIENT_CONFIG_PORT + 5))
	{
		return NULL;
	}

	ok = false;

	while (true)
	{
		for (i = port_start;i < (CLIENT_CONFIG_PORT + 5);i++)
		{
			if (FUNC1(server_name, i))
			{
				ok = true;
				break;
			}
		}

		if (ok)
		{
			break;
		}

		if (wait_retry == 0)
		{
			break;
		}

		if (try_started == 0)
		{
			try_started = FUNC19();
		}

		if ((try_started + (UINT64)wait_retry) <= FUNC19())
		{
			break;
		}
	}

	if (ok == false)
	{
		if (key_error_code)
		{
			*key_error_code = ERR_CONNECT_FAILED;
		}
		return NULL;
	}

	port_start = i;

	s = FUNC2(server_name, i);
	if (s == NULL)
	{
		if (key_error_code)
		{
			*key_error_code = ERR_CONNECT_FAILED;
		}
		goto RETRY;
	}
L_TRY:

	FUNC13(s, 10000);

	FUNC14(hash_password, password, FUNC18(password));

	if (key != NULL)
	{
		if (shortcut_disconnect == false)
		{
			rpc_mode = CLIENT_RPC_MODE_SHORTCUT;
		}
		else
		{
			rpc_mode = CLIENT_RPC_MODE_SHORTCUT_DISCONNECT;
		}
	}

	rpc_mode = FUNC3(rpc_mode);
	FUNC10(s, &rpc_mode, sizeof(UINT));

	if (key != NULL)
	{
		FUNC10(s, key, SHA1_SIZE);
	}
	else
	{
		FUNC10(s, hash_password, SHA1_SIZE);
	}

	if (FUNC12(s, false) == false)
	{
		FUNC9(s);
		goto RETRY;
	}

	if (FUNC8(s, &retcode, sizeof(UINT), false) == false)
	{
		FUNC9(s);
		goto RETRY;
	}

	retcode = FUNC3(retcode);

	if (retcode >= 1024)
	{
		FUNC9(s);
		goto RETRY;
	}

	if (key != NULL)
	{
		if (key_error_code)
		{
			*key_error_code = retcode;
		}
		FUNC11(s, &retcode, sizeof(UINT), false);
		FUNC9(s);
		return NULL;
	}

	switch (retcode)
	{
	case 1:
		if (bad_pass != NULL)
		{
			*bad_pass = true;
		}
		break;
	case 2:
		if (no_remote != NULL)
		{
			*no_remote = true;
		}
		break;
	}

	if (retcode != 0)
	{
		FUNC9(s);
		return NULL;
	}

	FUNC13(s, INFINITE);

	rpc = FUNC15(s, NULL);

	FUNC9(s);

	ret = FUNC21(sizeof(REMOTE_CLIENT));
	rpc->Param = ret;

	if (ret != NULL)
	{
		RPC_CLIENT_VERSION t;

		ret->Rpc = rpc;
		FUNC20(&t, sizeof(t));
		FUNC0(ret, &t);
		ret->OsType = t.OsType;
		ret->Unix = FUNC6(ret->OsType);
		ret->Win9x = FUNC7(ret->OsType);
		ret->IsVgcSupported = t.IsVgcSupported;
		ret->ShowVgcLink = t.ShowVgcLink;
		FUNC17(ret->ClientId, sizeof(ret->ClientId), t.ClientId);
	}

	return ret;
}