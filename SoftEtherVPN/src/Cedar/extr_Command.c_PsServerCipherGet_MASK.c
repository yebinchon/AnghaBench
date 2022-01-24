#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_22__   TYPE_4__ ;
typedef  struct TYPE_21__   TYPE_3__ ;
typedef  struct TYPE_20__   TYPE_2__ ;
typedef  struct TYPE_19__   TYPE_1__ ;

/* Type definitions */
typedef  char wchar_t ;
typedef  int /*<<< orphan*/  tmp ;
typedef  int /*<<< orphan*/  t ;
typedef  scalar_t__ UINT ;
struct TYPE_22__ {int /*<<< orphan*/  (* Write ) (TYPE_4__*,char*) ;} ;
struct TYPE_21__ {int /*<<< orphan*/  Rpc; } ;
struct TYPE_20__ {int /*<<< orphan*/  String; } ;
struct TYPE_19__ {scalar_t__ NumTokens; int /*<<< orphan*/ * Token; } ;
typedef  TYPE_1__ TOKEN_LIST ;
typedef  TYPE_2__ RPC_STR ;
typedef  TYPE_3__ PS ;
typedef  int /*<<< orphan*/  LIST ;
typedef  TYPE_4__ CONSOLE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_4__*,scalar_t__) ; 
 scalar_t__ ERR_INVALID_PARAMETER ; 
 scalar_t__ ERR_NO_ERROR ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/ * FUNC4 (TYPE_4__*,char*,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC5 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,TYPE_2__*) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC8 (char*,int,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_2__*,int) ; 
 char* FUNC10 (char*) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_4__*,char*) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_4__*,char*) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_4__*,char*) ; 
 int /*<<< orphan*/  FUNC14 (TYPE_4__*,char*) ; 
 int /*<<< orphan*/  FUNC15 (TYPE_4__*,char*) ; 

UINT FUNC16(CONSOLE *c, char *cmd_name, wchar_t *str, void *param)
{
	LIST *o;
	PS *ps = (PS *)param;
	UINT ret = 0;
	RPC_STR t;
	TOKEN_LIST *ciphers;
	UINT i;
	wchar_t tmp[4096];

	o = FUNC4(c, cmd_name, str, NULL, 0);
	if (o == NULL)
	{
		return ERR_INVALID_PARAMETER;
	}

	FUNC9(&t, sizeof(t));

	// RPC call
	ret = FUNC6(ps->Rpc, &t);

	if (ret != ERR_NO_ERROR)
	{
		// An error has occured
		FUNC0(c, ret);
		FUNC1(o);
		return ret;
	}

	FUNC8(tmp, sizeof(tmp), L" %S", t.String);
	FUNC2(&t);
	FUNC9(&t, sizeof(RPC_STR));

	c->Write(c, FUNC10("CMD_ServerCipherGet_SERVER"));
	c->Write(c, tmp);

	ret = FUNC7(ps->Rpc, &t);

	if (ret == ERR_NO_ERROR)
	{
		ciphers = FUNC5(t.String, ";");

		FUNC2(&t);

		c->Write(c, L"");
		c->Write(c, FUNC10("CMD_ServerCipherGet_CIPHERS"));

		for (i = 0; i < ciphers->NumTokens; i++)
		{
			FUNC8(tmp, sizeof(tmp), L" %S", ciphers->Token[i]);
			c->Write(c, tmp);
		}

		FUNC3(ciphers);
	}

	FUNC1(o);

	return 0;
}