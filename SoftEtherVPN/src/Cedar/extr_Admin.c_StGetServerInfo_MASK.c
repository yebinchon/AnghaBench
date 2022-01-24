#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_16__   TYPE_5__ ;
typedef  struct TYPE_15__   TYPE_4__ ;
typedef  struct TYPE_14__   TYPE_2__ ;
typedef  struct TYPE_13__   TYPE_1__ ;
typedef  struct TYPE_12__   TYPE_10__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  st ;
typedef  int /*<<< orphan*/  UINT ;
struct TYPE_16__ {TYPE_10__* Server; } ;
struct TYPE_15__ {TYPE_1__* Server; int /*<<< orphan*/  Build; int /*<<< orphan*/  Version; int /*<<< orphan*/  BuildInfo; int /*<<< orphan*/  VerString; } ;
struct TYPE_14__ {int /*<<< orphan*/  OsInfo; int /*<<< orphan*/  ServerFamilyName; int /*<<< orphan*/  ServerBuildDate; int /*<<< orphan*/  wSecond; int /*<<< orphan*/  wMinute; int /*<<< orphan*/  wHour; int /*<<< orphan*/  wDay; int /*<<< orphan*/  wMonth; int /*<<< orphan*/  wYear; int /*<<< orphan*/  ServerType; int /*<<< orphan*/  ServerHostName; int /*<<< orphan*/  ServerBuildInt; int /*<<< orphan*/  ServerVerInt; int /*<<< orphan*/  ServerBuildInfoString; int /*<<< orphan*/  ServerVersionString; int /*<<< orphan*/  ServerProductName; } ;
struct TYPE_13__ {int /*<<< orphan*/  ServerType; } ;
struct TYPE_12__ {TYPE_4__* Cedar; } ;
typedef  TYPE_2__ SYSTEMTIME ;
typedef  TYPE_2__ RPC_SERVER_INFO ;
typedef  int /*<<< orphan*/  OS_INFO ;
typedef  TYPE_4__ CEDAR ;
typedef  TYPE_5__ ADMIN ;

/* Variables and functions */
 int /*<<< orphan*/  BUILD_DATE_D ; 
 int /*<<< orphan*/  BUILD_DATE_HO ; 
 int /*<<< orphan*/  BUILD_DATE_M ; 
 int /*<<< orphan*/  BUILD_DATE_MI ; 
 int /*<<< orphan*/  BUILD_DATE_SE ; 
 int /*<<< orphan*/  BUILD_DATE_Y ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  ERR_INTERNAL_ERROR ; 
 int /*<<< orphan*/  ERR_NO_ERROR ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/ * FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (TYPE_10__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*) ; 
 int /*<<< orphan*/  UPDATE_FAMILY_NAME ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__*,int) ; 

UINT FUNC8(ADMIN *a, RPC_SERVER_INFO *t)
{
	CEDAR *c;
	OS_INFO *info;
	SYSTEMTIME st;
	// Validate arguments
	if (a == NULL || t == NULL)
	{
		return ERR_INTERNAL_ERROR;
	}

	FUNC1(t);
	FUNC7(t, sizeof(RPC_SERVER_INFO));

	c = a->Server->Cedar;

	FUNC4(a->Server, t->ServerProductName, sizeof(t->ServerProductName));

	FUNC5(t->ServerVersionString, sizeof(t->ServerVersionString), c->VerString);
	FUNC5(t->ServerBuildInfoString, sizeof(t->ServerBuildInfoString), c->BuildInfo);
	t->ServerVerInt = c->Version;
	t->ServerBuildInt = c->Build;
	FUNC2(t->ServerHostName, sizeof(t->ServerHostName));
	t->ServerType = c->Server->ServerType;

	FUNC7(&st, sizeof(st));
	st.wYear = BUILD_DATE_Y;
	st.wMonth = BUILD_DATE_M;
	st.wDay = BUILD_DATE_D;
	st.wHour = BUILD_DATE_HO;
	st.wMinute = BUILD_DATE_MI;
	st.wSecond = BUILD_DATE_SE;

	t->ServerBuildDate = FUNC6(&st);
	FUNC5(t->ServerFamilyName, sizeof(t->ServerFamilyName), UPDATE_FAMILY_NAME);

	info = FUNC3();
	if (info != NULL)
	{
		FUNC0(&t->OsInfo, info);
	}

	return ERR_NO_ERROR;
}