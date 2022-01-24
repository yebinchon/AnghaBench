#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_17__   TYPE_3__ ;
typedef  struct TYPE_16__   TYPE_2__ ;
typedef  struct TYPE_15__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  wchar_t ;
typedef  int /*<<< orphan*/  o ;
typedef  scalar_t__ UINT ;
typedef  int /*<<< orphan*/  UCHAR ;
struct TYPE_17__ {int /*<<< orphan*/  ProxyType; scalar_t__ Port; int /*<<< orphan*/  Hostname; int /*<<< orphan*/  AccountName; } ;
struct TYPE_16__ {int ProgrammingMode; char* (* ReadPassword ) (TYPE_2__*,char*) ;int /*<<< orphan*/  (* Write ) (TYPE_2__*,char*) ;} ;
struct TYPE_15__ {scalar_t__ LastError; } ;
typedef  int /*<<< orphan*/  RPC ;
typedef  TYPE_1__ PS ;
typedef  TYPE_2__ CONSOLE ;
typedef  TYPE_3__ CLIENT_OPTION ;
typedef  int /*<<< orphan*/  CEDAR ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ *,TYPE_3__*,char*,int /*<<< orphan*/ *,scalar_t__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  CEDAR_CUI_STR ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,scalar_t__) ; 
 scalar_t__ ERR_ACCESS_DENIED ; 
 scalar_t__ ERR_INVALID_PARAMETER ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 int FUNC5 (char*) ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC7 (TYPE_2__*,int /*<<< orphan*/ *,char*,scalar_t__,char*,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  PROXY_DIRECT ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int SHA1_SIZE ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int,char*) ; 
 int /*<<< orphan*/  FUNC12 (char*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,int,char*) ; 
 int /*<<< orphan*/  FUNC14 (TYPE_3__*,int) ; 
 char* FUNC15 (char*) ; 
 int /*<<< orphan*/  FUNC16 (TYPE_2__*,char*) ; 
 char* FUNC17 (TYPE_2__*,char*) ; 
 int /*<<< orphan*/  FUNC18 (TYPE_2__*,char*) ; 

UINT FUNC19(CONSOLE *c, char *host, UINT port, char *hub, char *adminhub, wchar_t *cmdline, char *password)
{
	UINT retcode = 0;
	RPC *rpc = NULL;
	CEDAR *cedar;
	CLIENT_OPTION o;
	UCHAR hashed_password[SHA1_SIZE];
	bool b = false;
	// Validate arguments
	if (c == NULL || host == NULL)
	{
		return ERR_INVALID_PARAMETER;
	}
	if (port == 0)
	{
		port = 443;
	}
	if (hub != NULL)
	{
		adminhub = NULL;
	}

	cedar = FUNC6(NULL, NULL);

	FUNC14(&o, sizeof(o));
	FUNC13(o.AccountName, sizeof(o.AccountName), L"VPNCMD");
	FUNC11(o.Hostname, sizeof(o.Hostname), host);
	o.Port = port;
	o.ProxyType = PROXY_DIRECT;

	FUNC10(hashed_password, password, FUNC12(password));

	if (FUNC5(password) == false)
	{
		b = true;
	}

	// Connect
	while (true)
	{
		UINT err;

		rpc = FUNC0(cedar, &o, hub, hashed_password, &err, CEDAR_CUI_STR);
		if (rpc == NULL)
		{
			// Failure
			retcode = err;

			if (err == ERR_ACCESS_DENIED && c->ProgrammingMode == false)
			{
				char *pass;
				// Password is incorrect
				if (b)
				{
					// Input the password
					c->Write(c, FUNC15("CMD_VPNCMD_PASSWORD_1"));
				}

				b = true;

				pass = c->ReadPassword(c, FUNC15("CMD_VPNCMD_PASSWORD_2"));
				c->Write(c, L"");

				if (pass != NULL)
				{
					FUNC10(hashed_password, pass, FUNC12(pass));
					FUNC3(pass);
				}
				else
				{
					break;
				}
			}
			else
			{
				// Other errors
				FUNC2(c, err);
				break;
			}
		}
		else
		{
			PS *ps;

			// Success
			ps = FUNC7(c, rpc, host, port, hub, adminhub, cmdline);
			FUNC8(ps);
			retcode = ps->LastError;
			FUNC4(ps);
			FUNC1(rpc);
			break;
		}
	}

	FUNC9(cedar);

	return retcode;
}