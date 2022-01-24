#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_28__   TYPE_7__ ;
typedef  struct TYPE_27__   TYPE_6__ ;
typedef  struct TYPE_26__   TYPE_5__ ;
typedef  struct TYPE_25__   TYPE_4__ ;
typedef  struct TYPE_24__   TYPE_3__ ;
typedef  struct TYPE_23__   TYPE_2__ ;
typedef  struct TYPE_22__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  wchar_t ;
typedef  int /*<<< orphan*/  title ;
typedef  int /*<<< orphan*/  t ;
typedef  scalar_t__ UINT ;
typedef  scalar_t__ UCHAR ;
struct TYPE_28__ {scalar_t__* ShortcutKey; int /*<<< orphan*/  lock; TYPE_1__* ClientOption; } ;
struct TYPE_23__ {int AllowRemoteConfig; } ;
struct TYPE_27__ {scalar_t__ Err; scalar_t__* EncryptedPassword; int /*<<< orphan*/  lock; TYPE_2__ Config; scalar_t__ PasswordRemoteOnly; int /*<<< orphan*/  AccountList; } ;
struct TYPE_26__ {int /*<<< orphan*/ * AccountName; } ;
struct TYPE_24__ {int* addr; } ;
struct TYPE_25__ {TYPE_3__ RemoteIP; } ;
struct TYPE_22__ {int /*<<< orphan*/ * AccountName; } ;
typedef  TYPE_4__ SOCK ;
typedef  TYPE_5__ RPC_CLIENT_CONNECT ;
typedef  int /*<<< orphan*/  RPC ;
typedef  TYPE_6__ CLIENT ;
typedef  TYPE_7__ ACCOUNT ;

/* Variables and functions */
 scalar_t__ CLIENT_RPC_MODE_NOTIFY ; 
 scalar_t__ CLIENT_RPC_MODE_SHORTCUT ; 
 scalar_t__ CLIENT_RPC_MODE_SHORTCUT_DISCONNECT ; 
 int /*<<< orphan*/  FUNC0 (TYPE_6__*,TYPE_4__*) ; 
 int /*<<< orphan*/  CiRpcDispatch ; 
 scalar_t__ FUNC1 (scalar_t__*,scalar_t__*,int) ; 
 scalar_t__ FUNC2 (TYPE_6__*,TYPE_5__*) ; 
 scalar_t__ FUNC3 (TYPE_6__*,TYPE_5__*,int) ; 
 scalar_t__ ERR_ACCOUNT_NOT_FOUND ; 
 scalar_t__ ERR_NO_ERROR ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (scalar_t__) ; 
 TYPE_7__* FUNC6 (int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  MAX_ACCOUNT_NAME_LEN ; 
 int FUNC10 (TYPE_4__*,scalar_t__*,int,int) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int SHA1_SIZE ; 
 int FUNC12 (TYPE_4__*,scalar_t__*,int,int) ; 
 int /*<<< orphan*/ * FUNC13 (TYPE_4__*,int /*<<< orphan*/ ,TYPE_6__*) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (TYPE_5__*,int) ; 

void FUNC18(CLIENT *c, SOCK *s)
{
	UCHAR hashed_password[SHA1_SIZE];
	UINT rpc_mode;
	UINT retcode;
	RPC *rpc;
	// Validate arguments
	if (c == NULL || s == NULL)
	{
		return;
	}

	// Receive the RPC mode
	if (FUNC10(s, &rpc_mode, sizeof(UINT), false) == false)
	{
		return;
	}

	rpc_mode = FUNC5(rpc_mode);

	if (rpc_mode == CLIENT_RPC_MODE_NOTIFY)
	{
		// Notification mode
		FUNC0(c, s);
		return;
	}
	else if (rpc_mode == CLIENT_RPC_MODE_SHORTCUT || rpc_mode == CLIENT_RPC_MODE_SHORTCUT_DISCONNECT)
	{
		// Shortcut key received
		UCHAR key[SHA1_SIZE];
		UINT err = ERR_NO_ERROR;
		if (FUNC10(s, key, SHA1_SIZE, false))
		{
			UINT i;
			wchar_t title[MAX_ACCOUNT_NAME_LEN + 1];
			bool ok = false;
			// Connect to the specified setting
			FUNC9(c->AccountList);
			{
				for (i = 0;i < FUNC7(c->AccountList);i++)
				{
					ACCOUNT *a = FUNC6(c->AccountList, i);
					FUNC8(a->lock);
					{
						if (FUNC1(a->ShortcutKey, key, SHA1_SIZE) == 0)
						{
							ok = true;
							FUNC14(title, sizeof(title), a->ClientOption->AccountName);
						}
					}
					FUNC15(a->lock);
				}
			}
			FUNC16(c->AccountList);

			if (ok == false)
			{
				err = ERR_ACCOUNT_NOT_FOUND;
			}
			else
			{
				RPC_CLIENT_CONNECT t;
				FUNC17(&t, sizeof(t));
				FUNC14(t.AccountName, sizeof(t.AccountName), title);

				if (rpc_mode == CLIENT_RPC_MODE_SHORTCUT)
				{
					// Connect
					if (FUNC2(c, &t))
					{
						err = ERR_NO_ERROR;
					}
					else
					{
						err = c->Err;
					}
				}
				else
				{
					// Connect
					if (FUNC3(c, &t, false))
					{
						err = ERR_NO_ERROR;
					}
					else
					{
						err = c->Err;
					}
				}
			}

			err = FUNC5(err);
			FUNC12(s, &err, sizeof(UINT), false);
			(void)FUNC10(s, &err, sizeof(UINT), false);
		}
		return;
	}

	// Password reception
	if (FUNC10(s, hashed_password, SHA1_SIZE, false) == false)
	{
		return;
	}

	retcode = 0;

	// Password comparison
	if (FUNC1(hashed_password, c->EncryptedPassword, SHA1_SIZE) != 0)
	{
		retcode = 1;
	}

	if (c->PasswordRemoteOnly && s->RemoteIP.addr[0] == 127)
	{
		// If in a mode that requires a password only remote,
		// the password sent from localhost is considered to be always correct
		retcode = 0;
	}

	FUNC8(c->lock);
	{
		if (c->Config.AllowRemoteConfig == false)
		{
			// If the remote control is prohibited,
			// identify whether this connection is from remote
			if (s->RemoteIP.addr[0] != 127)
			{
				retcode = 2;
			}
		}
	}
	FUNC15(c->lock);

	retcode = FUNC5(retcode);
	// Error code transmission
	if (FUNC12(s, &retcode, sizeof(UINT), false) == false)
	{
		return;
	}



	if (retcode != 0)
	{
		// Disconnect due to an error
		return;
	}

	// Create a RPC server
	rpc = FUNC13(s, CiRpcDispatch, c);

	// RPC server operation
	FUNC11(rpc);

	// Release the RPC server
	FUNC4(rpc);
}