#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_24__   TYPE_7__ ;
typedef  struct TYPE_23__   TYPE_6__ ;
typedef  struct TYPE_22__   TYPE_5__ ;
typedef  struct TYPE_21__   TYPE_4__ ;
typedef  struct TYPE_20__   TYPE_3__ ;
typedef  struct TYPE_19__   TYPE_2__ ;
typedef  struct TYPE_18__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  wchar_t ;
typedef  int /*<<< orphan*/  t ;
typedef  int /*<<< orphan*/  args ;
typedef  scalar_t__ UINT ;
struct TYPE_24__ {int Size; int /*<<< orphan*/  Buf; } ;
struct TYPE_23__ {int /*<<< orphan*/  (* Write ) (TYPE_6__*,int /*<<< orphan*/ ) ;} ;
struct TYPE_22__ {int /*<<< orphan*/  DigestSHA1; int /*<<< orphan*/  DigestMD5; int /*<<< orphan*/  Serial; TYPE_4__* Name; } ;
struct TYPE_21__ {void* CommonName; } ;
struct TYPE_20__ {char* member_0; int /*<<< orphan*/ * member_4; int /*<<< orphan*/ * member_3; int /*<<< orphan*/ * member_2; int /*<<< orphan*/ * member_1; } ;
struct TYPE_19__ {int /*<<< orphan*/  Rpc; int /*<<< orphan*/ * HubName; } ;
struct TYPE_18__ {TYPE_5__* Crl; int /*<<< orphan*/  HubName; } ;
typedef  TYPE_1__ RPC_CRL ;
typedef  TYPE_2__ PS ;
typedef  TYPE_3__ PARAM ;
typedef  TYPE_4__ NAME ;
typedef  int /*<<< orphan*/  LIST ;
typedef  TYPE_5__ CRL ;
typedef  TYPE_6__ CONSOLE ;
typedef  TYPE_7__ BUF ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_6__*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 
 void* FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ ERR_INVALID_PARAMETER ; 
 scalar_t__ ERR_NO_ERROR ; 
 int /*<<< orphan*/  FUNC3 (TYPE_7__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,char*) ; 
 int FUNC8 (int /*<<< orphan*/ ) ; 
 scalar_t__ MD5_SIZE ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/ * FUNC10 (TYPE_6__*,char*,int /*<<< orphan*/ *,TYPE_3__*,int) ; 
 scalar_t__ SHA1_SIZE ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ *) ; 
 TYPE_7__* FUNC13 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (TYPE_1__*,int) ; 
 void* FUNC15 (int) ; 
 int /*<<< orphan*/  FUNC16 (char*) ; 
 int /*<<< orphan*/  FUNC17 (TYPE_6__*,int /*<<< orphan*/ ) ; 

UINT FUNC18(CONSOLE *c, char *cmd_name, wchar_t *str, void *param)
{
	LIST *o;
	PS *ps = (PS *)param;
	UINT ret = 0;
	RPC_CRL t;
	// Parameter list that can be specified
	PARAM args[] =
	{
		{"SERIAL", NULL, NULL, NULL, NULL},
		{"MD5", NULL, NULL, NULL, NULL},
		{"SHA1", NULL, NULL, NULL, NULL},
		{"CN", NULL, NULL, NULL, NULL},
		{"O", NULL, NULL, NULL, NULL},
		{"OU", NULL, NULL, NULL, NULL},
		{"C", NULL, NULL, NULL, NULL},
		{"ST", NULL, NULL, NULL, NULL},
		{"L", NULL, NULL, NULL, NULL},
	};

	// If virtual HUB is not selected, it's an error
	if (ps->HubName == NULL)
	{
		c->Write(c, FUNC16("CMD_Hub_Not_Selected"));
		return ERR_INVALID_PARAMETER;
	}

	o = FUNC10(c, cmd_name, str, args, sizeof(args) / sizeof(args[0]));
	if (o == NULL)
	{
		return ERR_INVALID_PARAMETER;
	}

	FUNC14(&t, sizeof(t));
	FUNC12(t.HubName, sizeof(t.HubName), ps->HubName);

	{
		bool param_exists = false;
		CRL *crl = FUNC15(sizeof(CRL));
		NAME *n;
		n = crl->Name = FUNC15(sizeof(NAME));

		if (FUNC8(FUNC6(o, "CN")) == false)
		{
			n->CommonName = FUNC2(FUNC7(o, "CN"));
			param_exists = true;
		}

		if (FUNC8(FUNC6(o, "O")) == false)
		{
			n->CommonName = FUNC2(FUNC7(o, "O"));
			param_exists = true;
		}

		if (FUNC8(FUNC6(o, "OU")) == false)
		{
			n->CommonName = FUNC2(FUNC7(o, "OU"));
			param_exists = true;
		}

		if (FUNC8(FUNC6(o, "C")) == false)
		{
			n->CommonName = FUNC2(FUNC7(o, "C"));
			param_exists = true;
		}

		if (FUNC8(FUNC6(o, "ST")) == false)
		{
			n->CommonName = FUNC2(FUNC7(o, "ST"));
			param_exists = true;
		}

		if (FUNC8(FUNC6(o, "L")) == false)
		{
			n->CommonName = FUNC2(FUNC7(o, "L"));
			param_exists = true;
		}

		if (FUNC8(FUNC6(o, "SERIAL")) == false)
		{
			BUF *b;

			b = FUNC13(FUNC6(o, "SERIAL"));

			if (b != NULL && b->Size >= 1)
			{
				crl->Serial = FUNC9(b->Buf, b->Size);
				param_exists = true;
			}

			FUNC3(b);
		}

		if (FUNC8(FUNC6(o, "MD5")) == false)
		{
			BUF *b;

			b = FUNC13(FUNC6(o, "MD5"));

			if (b != NULL && b->Size == MD5_SIZE)
			{
				FUNC1(crl->DigestMD5, b->Buf, MD5_SIZE);
				param_exists = true;
			}

			FUNC3(b);
		}

		if (FUNC8(FUNC6(o, "SHA1")) == false)
		{
			BUF *b;

			b = FUNC13(FUNC6(o, "SHA1"));

			if (b != NULL && b->Size == SHA1_SIZE)
			{
				FUNC1(crl->DigestSHA1, b->Buf, SHA1_SIZE);
				param_exists = true;
			}

			FUNC3(b);
		}

		t.Crl = crl;

		if (param_exists == false)
		{
			FUNC5(&t);
			ret = ERR_INVALID_PARAMETER;
			FUNC0(c, ret);
			FUNC4(o);
			return ret;
		}
	}

	// RPC call
	ret = FUNC11(ps->Rpc, &t);

	if (ret != ERR_NO_ERROR)
	{
		// An error has occured
		FUNC0(c, ret);
		FUNC4(o);
		return ret;
	}

	FUNC5(&t);

	FUNC4(o);

	return 0;
}