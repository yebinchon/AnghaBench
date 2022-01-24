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
typedef  int /*<<< orphan*/  tmp ;
typedef  int /*<<< orphan*/  t ;
typedef  scalar_t__ UINT ;
struct TYPE_9__ {int /*<<< orphan*/  Rpc; } ;
struct TYPE_7__ {scalar_t__ OsServicePack; int /*<<< orphan*/  KernelVersion; int /*<<< orphan*/  KernelName; int /*<<< orphan*/  OsVersion; int /*<<< orphan*/  OsVendorName; int /*<<< orphan*/  OsProductName; int /*<<< orphan*/  OsSystemName; } ;
struct TYPE_8__ {TYPE_1__ OsInfo; int /*<<< orphan*/  ServerType; int /*<<< orphan*/  ServerHostName; int /*<<< orphan*/  ServerBuildInfoString; int /*<<< orphan*/  ServerVersionString; int /*<<< orphan*/  ServerProductName; } ;
typedef  TYPE_2__ RPC_SERVER_INFO ;
typedef  TYPE_3__ PS ;
typedef  int /*<<< orphan*/  LIST ;
typedef  int /*<<< orphan*/  CT ;
typedef  int /*<<< orphan*/  CONSOLE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/ * FUNC4 () ; 
 scalar_t__ ERR_INVALID_PARAMETER ; 
 scalar_t__ ERR_NO_ERROR ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*) ; 
 int /*<<< orphan*/ * FUNC7 (int /*<<< orphan*/ ) ; 
 int MAX_SIZE ; 
 int /*<<< orphan*/ * FUNC8 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_2__*,int) ; 
 int /*<<< orphan*/  FUNC13 (char*) ; 

UINT FUNC14(CONSOLE *c, char *cmd_name, wchar_t *str, void *param)
{
	LIST *o;
	PS *ps = (PS *)param;
	UINT ret;
	RPC_SERVER_INFO t;
	CT *ct;
	wchar_t tmp[MAX_SIZE];

	o = FUNC8(c, cmd_name, str, NULL, 0);
	if (o == NULL)
	{
		return ERR_INVALID_PARAMETER;
	}

	FUNC12(&t, sizeof(t));
	ret = FUNC9(ps->Rpc, &t);
	if (ret != ERR_NO_ERROR)
	{
		FUNC0(c, ret);
		FUNC5(o);
		return ret;
	}

	ct = FUNC4();

	FUNC3(ct, FUNC13("SM_STATUS_COLUMN_1"), false);
	FUNC3(ct, FUNC13("SM_STATUS_COLUMN_2"), false);

	// Product name
	FUNC10(tmp, sizeof(tmp), t.ServerProductName);
	FUNC2(ct, FUNC13("SM_INFO_PRODUCT_NAME"), tmp);

	// Version
	FUNC10(tmp, sizeof(tmp), t.ServerVersionString);
	FUNC2(ct, FUNC13("SM_INFO_VERSION"), tmp);

	// Build
	FUNC10(tmp, sizeof(tmp), t.ServerBuildInfoString);
	FUNC2(ct, FUNC13("SM_INFO_BUILD"), tmp);

	// Host name
	FUNC10(tmp, sizeof(tmp), t.ServerHostName);
	FUNC2(ct, FUNC13("SM_INFO_HOSTNAME"), tmp);

	// Type
	FUNC2(ct, FUNC13("SM_ST_SERVER_TYPE"), FUNC7(t.ServerType));

	// OS
	FUNC10(tmp, sizeof(tmp), t.OsInfo.OsSystemName);
	FUNC2(ct, FUNC13("SM_OS_SYSTEM_NAME"), tmp);

	FUNC10(tmp, sizeof(tmp), t.OsInfo.OsProductName);
	FUNC2(ct, FUNC13("SM_OS_PRODUCT_NAME"), tmp);

	if (t.OsInfo.OsServicePack != 0)
	{
		FUNC11(tmp, sizeof(tmp), FUNC13("SM_OS_SP_TAG"), t.OsInfo.OsServicePack);
		FUNC2(ct, FUNC13("SM_OS_SERVICE_PACK"), tmp);
	}

	FUNC10(tmp, sizeof(tmp), t.OsInfo.OsVendorName);
	FUNC2(ct, FUNC13("SM_OS_VENDER_NAME"), tmp);

	FUNC10(tmp, sizeof(tmp), t.OsInfo.OsVersion);
	FUNC2(ct, FUNC13("SM_OS_VERSION"), tmp);

	FUNC10(tmp, sizeof(tmp), t.OsInfo.KernelName);
	FUNC2(ct, FUNC13("SM_OS_KERNEL_NAME"), tmp);

	FUNC10(tmp, sizeof(tmp), t.OsInfo.KernelVersion);
	FUNC2(ct, FUNC13("SM_OS_KERNEL_VERSION"), tmp);

	FUNC1(ct, c);

	FUNC6(&t);

	FUNC5(o);

	return 0;
}