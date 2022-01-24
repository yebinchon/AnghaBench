#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  wchar_t ;
typedef  int /*<<< orphan*/  tmp4 ;
typedef  int /*<<< orphan*/  tmp2 ;
typedef  int /*<<< orphan*/  tmp ;
typedef  int /*<<< orphan*/  t ;
typedef  int /*<<< orphan*/  ip_str ;
typedef  scalar_t__ UINT ;
struct TYPE_9__ {int /*<<< orphan*/  RemoteClient; } ;
struct TYPE_8__ {scalar_t__ NumItem; TYPE_1__** Items; } ;
struct TYPE_7__ {scalar_t__ Port; int Active; scalar_t__ Connected; int /*<<< orphan*/  AccountName; int /*<<< orphan*/  DeviceName; int /*<<< orphan*/  HubName; int /*<<< orphan*/  ProxyType; int /*<<< orphan*/  ServerName; } ;
typedef  TYPE_1__ RPC_CLIENT_ENUM_ACCOUNT_ITEM ;
typedef  TYPE_2__ RPC_CLIENT_ENUM_ACCOUNT ;
typedef  TYPE_3__ PC ;
typedef  int /*<<< orphan*/  LIST ;
typedef  int /*<<< orphan*/  IP ;
typedef  int /*<<< orphan*/  CT ;
typedef  int /*<<< orphan*/  CONSOLE ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/ * FUNC6 () ; 
 scalar_t__ ERR_INVALID_PARAMETER ; 
 scalar_t__ ERR_NO_ERROR ; 
 int /*<<< orphan*/  FUNC7 (char*,int,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int MAX_SIZE ; 
 int /*<<< orphan*/ * FUNC10 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC11 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC12 (char*,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC13 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *,int,char*,char*,scalar_t__,...) ; 
 int /*<<< orphan*/  FUNC16 (TYPE_2__*,int) ; 
 int /*<<< orphan*/  FUNC17 (char*) ; 

UINT FUNC18(CONSOLE *c, char *cmd_name, wchar_t *str, void *param)
{
	LIST *o;
	PC *pc = (PC *)param;
	UINT ret = ERR_NO_ERROR;
	RPC_CLIENT_ENUM_ACCOUNT t;

	// Get the parameter list
	o = FUNC10(c, cmd_name, str, NULL, 0);
	if (o == NULL)
	{
		return ERR_INVALID_PARAMETER;
	}

	// RPC call
	FUNC16(&t, sizeof(t));

	ret = FUNC0(pc->RemoteClient, &t);

	if (ret == ERR_NO_ERROR)
	{
		UINT i;
		CT *ct;

		// Success
		ct = FUNC6();
		FUNC5(ct, FUNC17("CM_ACCOUNT_COLUMN_1"), false);
		FUNC5(ct, FUNC17("CM_ACCOUNT_COLUMN_2"), false);
		FUNC5(ct, FUNC17("CM_ACCOUNT_COLUMN_3"), false);
		FUNC5(ct, FUNC17("CM_ACCOUNT_COLUMN_3_2"), false);
		FUNC5(ct, FUNC17("CM_ACCOUNT_COLUMN_4"), false);

		for (i = 0;i < t.NumItem;i++)
		{
			RPC_CLIENT_ENUM_ACCOUNT_ITEM *e = t.Items[i];
			wchar_t tmp[MAX_SIZE];
			wchar_t tmp2[MAX_SIZE];
			wchar_t tmp4[MAX_SIZE];
			IP ip;
			char ip_str[MAX_SIZE];

			// Special treatment for IPv6 addresses
			if (FUNC13(&ip, e->ServerName) && FUNC11(e->ServerName, "[") == false)
			{
				FUNC7(ip_str, sizeof(ip_str),
					"[%s]", e->ServerName);
			}
			else
			{
				FUNC12(ip_str, sizeof(ip_str), e->ServerName);
			}

			if (e->Port == 0)
			{
				// Port number unknown
				FUNC15(tmp2, sizeof(tmp2), L"%S (%s)", ip_str, FUNC9(e->ProxyType));
			}
			else
			{
				// Port number are also shown
				FUNC15(tmp2, sizeof(tmp2), L"%S:%u (%s)", ip_str, e->Port, FUNC9(e->ProxyType));
			}

			// Virtual HUB name
			FUNC14(tmp4, sizeof(tmp4), e->HubName);

			// Add
			FUNC14(tmp, sizeof(tmp), e->DeviceName);

			FUNC4(ct,
				e->AccountName,
				e->Active == false ? FUNC17("CM_ACCOUNT_OFFLINE") :
				(e->Connected ? FUNC17("CM_ACCOUNT_ONLINE") : FUNC17("CM_ACCOUNT_CONNECTING")),
				tmp2, tmp4,
				tmp);
		}

		FUNC3(ct, c, true);
	}

	FUNC1(&t);

	if (ret != ERR_NO_ERROR)
	{
		// Error has occurred
		FUNC2(c, ret);
	}

	// Release of the parameter list
	FUNC8(o);

	return ret;
}