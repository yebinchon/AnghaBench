#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_2__ ;
typedef  struct TYPE_13__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  wchar_t ;
typedef  int /*<<< orphan*/  pass ;
typedef  int /*<<< orphan*/  UINT ;
struct TYPE_14__ {char* (* ReadPassword ) (TYPE_2__*,char*) ;int /*<<< orphan*/  (* Write ) (TYPE_2__*,char*) ;} ;
struct TYPE_13__ {int /*<<< orphan*/  LastError; } ;
typedef  int /*<<< orphan*/  REMOTE_CLIENT ;
typedef  TYPE_1__ PC ;
typedef  TYPE_2__ CONSOLE ;
typedef  int /*<<< orphan*/  CEDAR ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (char*,char*,int*,int*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ERR_ACCESS_DENIED ; 
 int /*<<< orphan*/  ERR_CONNECT_FAILED ; 
 int /*<<< orphan*/  ERR_INTERNAL_ERROR ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 int MAX_SIZE ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC6 (TYPE_2__*,int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (char*,int,char*) ; 
 char* FUNC10 (char*) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_2__*,char*) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_2__*,char*) ; 
 char* FUNC13 (TYPE_2__*,char*) ; 
 int /*<<< orphan*/  FUNC14 (TYPE_2__*,char*) ; 

UINT FUNC15(CONSOLE *c, char *target, wchar_t *cmdline, char *password)
{
	CEDAR *cedar;
	REMOTE_CLIENT *client;
	bool bad_pass;
	bool no_remote;
	char pass[MAX_SIZE];
	UINT ret = 0;
	// Validate arguments
	if (c == NULL || target == NULL)
	{
		return ERR_INTERNAL_ERROR;
	}

	FUNC9(pass, sizeof(pass), password);

	cedar = FUNC5(NULL, NULL);

RETRY:
	client = FUNC0(target, pass, &bad_pass, &no_remote, 0);

	if (client == NULL)
	{
		if (no_remote)
		{
			// Remote connection refusal
			c->Write(c, FUNC10("CMD_VPNCMD_CLIENT_NO_REMODE"));
			FUNC8(cedar);
			return ERR_INTERNAL_ERROR;
		}
		else if (bad_pass)
		{
			char *tmp;
			// Password is different
			c->Write(c, FUNC10("CMD_VPNCMD_PASSWORD_1"));
			tmp = c->ReadPassword(c, FUNC10("CMD_VPNCMD_PASSWORD_2"));
			c->Write(c, L"");

			if (tmp == NULL)
			{
				// Cancel
				FUNC8(cedar);
				return ERR_ACCESS_DENIED;
			}
			else
			{
				FUNC9(pass, sizeof(pass), tmp);
				FUNC3(tmp);
			}

			goto RETRY;
		}
		else
		{
			// Connection failure
			FUNC2(c, ERR_CONNECT_FAILED);
			FUNC8(cedar);
			return ERR_CONNECT_FAILED;
		}
	}
	else
	{
		// Connection complete
		PC *pc = FUNC6(c, client, target, cmdline);
		FUNC7(pc);
		ret = pc->LastError;
		FUNC4(pc);
	}

	FUNC1(client);

	FUNC8(cedar);

	return ret;
}