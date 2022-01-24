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
typedef  char wchar_t ;
typedef  int /*<<< orphan*/  tmp ;
typedef  int /*<<< orphan*/  t ;
typedef  scalar_t__ UINT ;
struct TYPE_9__ {int /*<<< orphan*/  RemoteClient; } ;
struct TYPE_8__ {scalar_t__ NumItem; TYPE_1__** Items; } ;
struct TYPE_7__ {char* SubjectName; char* IssuerName; int /*<<< orphan*/  Key; int /*<<< orphan*/  Expires; } ;
typedef  TYPE_1__ RPC_CLIENT_ENUM_CA_ITEM ;
typedef  TYPE_2__ RPC_CLIENT_ENUM_CA ;
typedef  TYPE_3__ PC ;
typedef  int /*<<< orphan*/  LIST ;
typedef  int /*<<< orphan*/  CT ;
typedef  int /*<<< orphan*/  CONSOLE ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*,char*) ; 
 int /*<<< orphan*/ * FUNC5 () ; 
 scalar_t__ ERR_INVALID_PARAMETER ; 
 scalar_t__ ERR_NO_ERROR ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (char*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int MAX_SIZE ; 
 int /*<<< orphan*/ * FUNC8 (int /*<<< orphan*/ *,char*,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_2__*,int) ; 
 char* FUNC12 (char*) ; 

UINT FUNC13(CONSOLE *c, char *cmd_name, wchar_t *str, void *param)
{
	LIST *o;
	PC *pc = (PC *)param;
	UINT ret = ERR_NO_ERROR;
	RPC_CLIENT_ENUM_CA t;

	// Get the parameter list
	o = FUNC8(c, cmd_name, str, NULL, 0);
	if (o == NULL)
	{
		return ERR_INVALID_PARAMETER;
	}

	// RPC call
	FUNC11(&t, sizeof(t));

	ret = FUNC0(pc->RemoteClient, &t);

	if (ret == ERR_NO_ERROR)
	{
		// Success
		UINT i;
		CT *ct = FUNC5();

		for (i = 0;i < t.NumItem;i++)
		{
			wchar_t tmp[MAX_SIZE];
			wchar_t tmp2[64];
			RPC_CLIENT_ENUM_CA_ITEM *e = t.Items[i];

			FUNC7(tmp, sizeof(tmp), FUNC9(e->Expires), NULL);

			FUNC10(tmp2, e->Key);

			FUNC4(ct, FUNC12("CMD_CAList_COLUMN_ID"), tmp2);
			FUNC4(ct, FUNC12("CM_CERT_COLUMN_1"), e->SubjectName);
			FUNC4(ct, FUNC12("CM_CERT_COLUMN_2"), e->IssuerName);
			FUNC4(ct, FUNC12("CM_CERT_COLUMN_3"), tmp);

			if (i != (t.NumItem - 1))
			{
				FUNC4(ct, L"---", L"---");
			}
		}

		FUNC3(ct, c);

		FUNC1(&t);
	}

	if (ret != ERR_NO_ERROR)
	{
		// Error has occurred
		FUNC2(c, ret);
	}


	// Release of the parameter list
	FUNC6(o);

	return ret;
}