#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_23__   TYPE_7__ ;
typedef  struct TYPE_22__   TYPE_6__ ;
typedef  struct TYPE_21__   TYPE_5__ ;
typedef  struct TYPE_20__   TYPE_4__ ;
typedef  struct TYPE_19__   TYPE_3__ ;
typedef  struct TYPE_18__   TYPE_2__ ;
typedef  struct TYPE_17__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  wchar_t ;
typedef  int /*<<< orphan*/  tmp ;
typedef  int /*<<< orphan*/  t ;
typedef  int /*<<< orphan*/  str ;
typedef  int /*<<< orphan*/  args ;
typedef  scalar_t__ UINT ;
struct TYPE_23__ {int /*<<< orphan*/  (* Write ) (TYPE_7__*,int /*<<< orphan*/ ) ;} ;
struct TYPE_22__ {int /*<<< orphan*/  DigestSHA1; int /*<<< orphan*/  DigestMD5; TYPE_1__* Serial; TYPE_5__* Name; } ;
struct TYPE_21__ {int /*<<< orphan*/ * Local; int /*<<< orphan*/ * State; int /*<<< orphan*/ * Country; int /*<<< orphan*/ * Unit; int /*<<< orphan*/ * Organization; int /*<<< orphan*/ * CommonName; } ;
struct TYPE_20__ {char* member_0; int /*<<< orphan*/ * member_4; int /*<<< orphan*/  member_3; int /*<<< orphan*/  member_2; int /*<<< orphan*/  member_1; } ;
struct TYPE_19__ {int /*<<< orphan*/  Rpc; int /*<<< orphan*/ * HubName; } ;
struct TYPE_18__ {TYPE_6__* Crl; int /*<<< orphan*/  Key; int /*<<< orphan*/  HubName; } ;
struct TYPE_17__ {int size; int /*<<< orphan*/  data; } ;
typedef  TYPE_2__ RPC_CRL ;
typedef  TYPE_3__ PS ;
typedef  TYPE_4__ PARAM ;
typedef  TYPE_5__ NAME ;
typedef  int /*<<< orphan*/  LIST ;
typedef  int /*<<< orphan*/  CT ;
typedef  TYPE_6__ CRL ;
typedef  TYPE_7__ CONSOLE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  CmdEvalNotEmpty ; 
 int /*<<< orphan*/  FUNC1 (TYPE_7__*,scalar_t__) ; 
 int /*<<< orphan*/  CmdPrompt ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,TYPE_7__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 () ; 
 scalar_t__ ERR_INVALID_PARAMETER ; 
 scalar_t__ ERR_NO_ERROR ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,char*) ; 
 int FUNC8 (int /*<<< orphan*/ ,int) ; 
 int MAX_SIZE ; 
 int MD5_SIZE ; 
 int /*<<< orphan*/ * FUNC9 (TYPE_7__*,char*,int /*<<< orphan*/ *,TYPE_4__*,int) ; 
 int SHA1_SIZE ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ ,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,int,char*) ; 
 int FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (TYPE_2__*,int) ; 
 int /*<<< orphan*/  FUNC15 (char*) ; 
 int /*<<< orphan*/  FUNC16 (TYPE_7__*,int /*<<< orphan*/ ) ; 

UINT FUNC17(CONSOLE *c, char *cmd_name, wchar_t *str, void *param)
{
	LIST *o;
	PS *ps = (PS *)param;
	UINT ret = 0;
	RPC_CRL t;
	// Parameter list that can be specified
	PARAM args[] =
	{
		// "name", prompt_proc, prompt_param, eval_proc, eval_param
		{"[id]", &CmdPrompt, FUNC15("CMD_CrlGet_Prompt_ID"), CmdEvalNotEmpty, NULL},
	};

	// If virtual HUB is not selected, it's an error
	if (ps->HubName == NULL)
	{
		c->Write(c, FUNC15("CMD_Hub_Not_Selected"));
		return ERR_INVALID_PARAMETER;
	}

	o = FUNC9(c, cmd_name, str, args, sizeof(args) / sizeof(args[0]));
	if (o == NULL)
	{
		return ERR_INVALID_PARAMETER;
	}

	FUNC14(&t, sizeof(t));
	FUNC11(t.HubName, sizeof(t.HubName), ps->HubName);
	t.Key = FUNC7(o, "[id]");

	// RPC call
	ret = FUNC10(ps->Rpc, &t);

	if (ret != ERR_NO_ERROR)
	{
		// An error has occured
		FUNC1(c, ret);
		FUNC5(o);
		return ret;
	}
	else
	{
		// Show contents
		CT *ct = FUNC4();
		CRL *crl = t.Crl;
		NAME *n;

		if (crl != NULL)
		{
			n = crl->Name;

			if (n != NULL)
			{
				if (FUNC13(n->CommonName) == false)
				{
					FUNC3(ct, FUNC15("CMD_CrlGet_CN"), n->CommonName);
				}
				if (FUNC13(n->Organization) == false)
				{
					FUNC3(ct, FUNC15("CMD_CrlGet_O"), n->Organization);
				}
				if (FUNC13(n->Unit) == false)
				{
					FUNC3(ct, FUNC15("CMD_CrlGet_OU"), n->Unit);
				}
				if (FUNC13(n->Country) == false)
				{
					FUNC3(ct, FUNC15("CMD_CrlGet_C"), n->Country);
				}
				if (FUNC13(n->State) == false)
				{
					FUNC3(ct, FUNC15("CMD_CrlGet_ST"), n->State);
				}
				if (FUNC13(n->Local) == false)
				{
					FUNC3(ct, FUNC15("CMD_CrlGet_L"), n->Local);
				}
			}

			if (crl->Serial != NULL && crl->Serial->size >= 1)
			{
				wchar_t tmp[MAX_SIZE];
				char str[MAX_SIZE];

				FUNC0(str, sizeof(str), crl->Serial->data, crl->Serial->size);
				FUNC12(tmp, sizeof(tmp), str);

				FUNC3(ct, FUNC15("CMD_CrlGet_SERI"), tmp);
			}

			if (FUNC8(crl->DigestMD5, MD5_SIZE) == false)
			{
				wchar_t tmp[MAX_SIZE];
				char str[MAX_SIZE];

				FUNC0(str, sizeof(str), crl->DigestMD5, MD5_SIZE);
				FUNC12(tmp, sizeof(tmp), str);

				FUNC3(ct, FUNC15("CMD_CrlGet_MD5_HASH"), tmp);
			}

			if (FUNC8(crl->DigestSHA1, SHA1_SIZE) == false)
			{
				wchar_t tmp[MAX_SIZE];
				char str[MAX_SIZE];

				FUNC0(str, sizeof(str), crl->DigestSHA1, SHA1_SIZE);
				FUNC12(tmp, sizeof(tmp), str);

				FUNC3(ct, FUNC15("CMD_CrlGet_SHA1_HASH"), tmp);
			}
		}
		FUNC2(ct, c);
	}

	FUNC6(&t);

	FUNC5(o);

	return 0;
}