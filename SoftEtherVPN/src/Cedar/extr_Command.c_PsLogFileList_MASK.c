#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_18__   TYPE_4__ ;
typedef  struct TYPE_17__   TYPE_3__ ;
typedef  struct TYPE_16__   TYPE_2__ ;
typedef  struct TYPE_15__   TYPE_1__ ;

/* Type definitions */
typedef  char wchar_t ;
typedef  int /*<<< orphan*/  tmp4 ;
typedef  int /*<<< orphan*/  tmp3 ;
typedef  int /*<<< orphan*/  tmp2 ;
typedef  int /*<<< orphan*/  tmp1 ;
typedef  int /*<<< orphan*/  tmp ;
typedef  int /*<<< orphan*/  t ;
typedef  scalar_t__ UINT ;
struct TYPE_18__ {int /*<<< orphan*/  (* Write ) (TYPE_4__*,char*) ;} ;
struct TYPE_17__ {int /*<<< orphan*/  Rpc; } ;
struct TYPE_16__ {scalar_t__ NumItem; TYPE_1__* Items; } ;
struct TYPE_15__ {char* FilePath; char* ServerName; int /*<<< orphan*/  UpdatedTime; int /*<<< orphan*/  FileSize; } ;
typedef  TYPE_1__ RPC_ENUM_LOG_FILE_ITEM ;
typedef  TYPE_2__ RPC_ENUM_LOG_FILE ;
typedef  TYPE_3__ PS ;
typedef  int /*<<< orphan*/  LIST ;
typedef  int /*<<< orphan*/  CT ;
typedef  TYPE_4__ CONSOLE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_4__*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,TYPE_4__*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,char*,char*,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/ * FUNC4 () ; 
 scalar_t__ ERR_INVALID_PARAMETER ; 
 scalar_t__ ERR_NO_ERROR ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC7 (char*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  MAX_HOST_NAME_LEN ; 
 int MAX_PATH ; 
 int MAX_SIZE ; 
 int /*<<< orphan*/ * FUNC8 (TYPE_4__*,char*,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC10 (char*,int,char*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (char*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (char*,int,char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC14 (TYPE_2__*,int) ; 
 char* FUNC15 (char*) ; 
 int /*<<< orphan*/  FUNC16 (TYPE_4__*,char*) ; 
 int /*<<< orphan*/  FUNC17 (TYPE_4__*,char*) ; 
 int /*<<< orphan*/  FUNC18 (TYPE_4__*,char*) ; 

UINT FUNC19(CONSOLE *c, char *cmd_name, wchar_t *str, void *param)
{
	LIST *o;
	PS *ps = (PS *)param;
	UINT ret = 0;
	RPC_ENUM_LOG_FILE t;

	o = FUNC8(c, cmd_name, str, NULL, 0);
	if (o == NULL)
	{
		return ERR_INVALID_PARAMETER;
	}

	FUNC14(&t, sizeof(t));

	c->Write(c, FUNC15("CMD_LogFileList_START"));
	c->Write(c, L"");

	// RPC call
	ret = FUNC9(ps->Rpc, &t);

	if (ret != ERR_NO_ERROR)
	{
		// An error has occured
		FUNC0(c, ret);
		FUNC5(o);
		return ret;
	}
	else
	{
		UINT i;
		wchar_t tmp[MAX_SIZE];
		CT *ct;

		FUNC13(tmp, sizeof(tmp), FUNC15("CMD_LogFileList_NUM_LOGS"), t.NumItem);
		c->Write(c, tmp);

		ct = FUNC4();

		FUNC3(ct, FUNC15("SM_LOG_FILE_COLUMN_1"), false);
		FUNC3(ct, FUNC15("SM_LOG_FILE_COLUMN_2"), true);
		FUNC3(ct, FUNC15("SM_LOG_FILE_COLUMN_3"), false);
		FUNC3(ct, FUNC15("SM_LOG_FILE_COLUMN_4"), false);

		for (i = 0;i < t.NumItem;i++)
		{
			RPC_ENUM_LOG_FILE_ITEM *e = &t.Items[i];
			wchar_t tmp1[MAX_PATH], tmp2[128], tmp3[128], tmp4[MAX_HOST_NAME_LEN + 1];
			char tmp[MAX_SIZE];

			FUNC10(tmp1, sizeof(tmp1), e->FilePath);

			FUNC12(tmp, sizeof(tmp), e->FileSize);
			FUNC10(tmp2, sizeof(tmp2), tmp);

			FUNC7(tmp3, sizeof(tmp3), FUNC11(e->UpdatedTime));

			FUNC10(tmp4, sizeof(tmp4), e->ServerName);

			FUNC2(ct, tmp1, tmp2, tmp3, tmp4);
		}

		FUNC1(ct, c, true);
	}

	FUNC6(&t);

	FUNC5(o);

	return 0;
}