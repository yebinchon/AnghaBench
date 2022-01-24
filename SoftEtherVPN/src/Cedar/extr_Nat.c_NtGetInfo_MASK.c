#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  UINT ;
struct TYPE_10__ {TYPE_1__* Cedar; } ;
struct TYPE_9__ {int /*<<< orphan*/  MemInfo; int /*<<< orphan*/  OsInfo; int /*<<< orphan*/  NatHostName; int /*<<< orphan*/  NatBuildInt; int /*<<< orphan*/  NatVerInt; int /*<<< orphan*/  NatBuildInfoString; int /*<<< orphan*/  NatVersionString; int /*<<< orphan*/  NatProductName; } ;
struct TYPE_8__ {int /*<<< orphan*/  Build; int /*<<< orphan*/  BuildInfo; int /*<<< orphan*/  VerString; } ;
typedef  TYPE_2__ RPC_NAT_INFO ;
typedef  int /*<<< orphan*/  OS_INFO ;
typedef  TYPE_3__ NAT ;

/* Variables and functions */
 int /*<<< orphan*/  CEDAR_ROUTER_STR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  ERR_NO_ERROR ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*,int) ; 

UINT FUNC7(NAT *n, RPC_NAT_INFO *t)
{
	OS_INFO *info;
	FUNC1(t);
	FUNC6(t, sizeof(RPC_NAT_INFO));

	FUNC5(t->NatProductName, sizeof(t->NatProductName), CEDAR_ROUTER_STR);
	FUNC5(t->NatVersionString, sizeof(t->NatVersionString), n->Cedar->VerString);
	FUNC5(t->NatBuildInfoString, sizeof(t->NatBuildInfoString), n->Cedar->BuildInfo);
	t->NatVerInt = n->Cedar->Build;
	t->NatBuildInt = n->Cedar->Build;

	FUNC2(t->NatHostName, sizeof(t->NatHostName));

	info = FUNC4();

	FUNC0(&t->OsInfo, info);

	FUNC3(&t->MemInfo);

	return ERR_NO_ERROR;
}