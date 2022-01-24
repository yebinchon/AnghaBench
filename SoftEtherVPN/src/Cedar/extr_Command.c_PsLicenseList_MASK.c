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
typedef  int /*<<< orphan*/  tmp8 ;
typedef  int /*<<< orphan*/  tmp6 ;
typedef  int /*<<< orphan*/  tmp5 ;
typedef  int /*<<< orphan*/  tmp3 ;
typedef  int /*<<< orphan*/  tmp2 ;
typedef  int /*<<< orphan*/  t ;
typedef  scalar_t__ UINT ;
struct TYPE_9__ {int /*<<< orphan*/  Rpc; } ;
struct TYPE_8__ {scalar_t__ NumItem; TYPE_1__* Items; } ;
struct TYPE_7__ {scalar_t__ Expires; int /*<<< orphan*/  SerialId; int /*<<< orphan*/  SystemId; int /*<<< orphan*/  ProductId; int /*<<< orphan*/  LicenseId; int /*<<< orphan*/  Status; int /*<<< orphan*/  LicenseName; int /*<<< orphan*/  LicenseKey; int /*<<< orphan*/  Id; } ;
typedef  TYPE_1__ RPC_ENUM_LICENSE_KEY_ITEM ;
typedef  TYPE_2__ RPC_ENUM_LICENSE_KEY ;
typedef  TYPE_3__ PS ;
typedef  int /*<<< orphan*/  LIST ;
typedef  int /*<<< orphan*/  CT ;
typedef  int /*<<< orphan*/  CONSOLE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/ * FUNC4 () ; 
 scalar_t__ ERR_INVALID_PARAMETER ; 
 scalar_t__ ERR_NO_ERROR ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int,scalar_t__,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  LICENSE_KEYSTR_LEN ; 
 int /*<<< orphan*/  LICENSE_LICENSEID_STR_LEN ; 
 int /*<<< orphan*/  LICENSE_MAX_PRODUCT_NAME_LEN ; 
 int /*<<< orphan*/ * FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC9 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ ,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,int,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (TYPE_2__*,int) ; 
 int /*<<< orphan*/  FUNC16 (char*) ; 

UINT FUNC17(CONSOLE *c, char *cmd_name, wchar_t *str, void *param)
{
	LIST *o;
	PS *ps = (PS *)param;
	UINT ret = 0;
	RPC_ENUM_LICENSE_KEY t;
	CT *ct;
	UINT i;

	o = FUNC9(c, cmd_name, str, NULL, 0);
	if (o == NULL)
	{
		return ERR_INVALID_PARAMETER;
	}

	FUNC15(&t, sizeof(t));

	// RPC call
	ret = FUNC10(ps->Rpc, &t);

	if (ret != ERR_NO_ERROR)
	{
		// An error has occured
		FUNC0(c, ret);
		FUNC5(o);
		return ret;
	}

	ct = FUNC4();
	FUNC3(ct, FUNC16("SM_LICENSE_COLUMN_1"), false);
	FUNC3(ct, FUNC16("SM_LICENSE_COLUMN_2"), false);
	FUNC3(ct, FUNC16("SM_LICENSE_COLUMN_3"), false);
	FUNC3(ct, FUNC16("SM_LICENSE_COLUMN_4"), false);
	FUNC3(ct, FUNC16("SM_LICENSE_COLUMN_5"), false);
	FUNC3(ct, FUNC16("SM_LICENSE_COLUMN_6"), false);
	FUNC3(ct, FUNC16("SM_LICENSE_COLUMN_7"), false);
	FUNC3(ct, FUNC16("SM_LICENSE_COLUMN_8"), false);
	FUNC3(ct, FUNC16("SM_LICENSE_COLUMN_9"), false);

	for (i = 0;i < t.NumItem;i++)
	{
		wchar_t tmp1[32], tmp2[LICENSE_KEYSTR_LEN + 1], tmp3[LICENSE_MAX_PRODUCT_NAME_LEN + 1],
			*tmp4, tmp5[128], tmp6[LICENSE_LICENSEID_STR_LEN + 1], tmp7[64],
			tmp8[64], tmp9[64];
		RPC_ENUM_LICENSE_KEY_ITEM *e = &t.Items[i];

		FUNC14(tmp1, e->Id);
		FUNC11(tmp2, sizeof(tmp2), e->LicenseKey);
		FUNC11(tmp3, sizeof(tmp3), e->LicenseName);
		tmp4 = FUNC8(e->Status);
		if (e->Expires == 0)
		{
			FUNC13(tmp5, sizeof(tmp5), FUNC16("SM_LICENSE_NO_EXPIRES"));
		}
		else
		{
			FUNC7(tmp5, sizeof(tmp5), e->Expires, NULL);
		}
		FUNC11(tmp6, sizeof(tmp6), e->LicenseId);
		FUNC14(tmp7, e->ProductId);
		FUNC12(tmp8, sizeof(tmp8), L"%I64u", e->SystemId);
		FUNC14(tmp9, e->SerialId);

		FUNC2(ct,
			tmp1, tmp2, tmp3, tmp4, tmp5, tmp6, tmp7, tmp8, tmp9);
	}

	FUNC1(ct, c, true);

	FUNC6(&t);

	FUNC5(o);

	return 0;
}