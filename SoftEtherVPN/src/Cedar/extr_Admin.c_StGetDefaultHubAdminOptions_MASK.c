#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_15__   TYPE_5__ ;
typedef  struct TYPE_14__   TYPE_4__ ;
typedef  struct TYPE_13__   TYPE_3__ ;
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
typedef  size_t UINT ;
struct TYPE_15__ {int /*<<< orphan*/  Value; int /*<<< orphan*/  Name; } ;
struct TYPE_14__ {TYPE_1__* Server; } ;
struct TYPE_13__ {int /*<<< orphan*/  Name; int /*<<< orphan*/  Descrption; int /*<<< orphan*/  Value; } ;
struct TYPE_12__ {int NumItem; TYPE_3__* Items; } ;
struct TYPE_11__ {scalar_t__ ServerType; } ;
typedef  TYPE_2__ RPC_ADMIN_OPTION ;
typedef  TYPE_3__ ADMIN_OPTION ;
typedef  TYPE_4__ ADMIN ;

/* Variables and functions */
 size_t ERR_NOT_SUPPORTED ; 
 size_t ERR_NO_ERROR ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  NO_SUPPORT_FOR_BRIDGE ; 
 scalar_t__ SERVER_TYPE_FARM_MEMBER ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*,int) ; 
 TYPE_3__* FUNC5 (int) ; 
 TYPE_5__* admin_options ; 
 int num_admin_options ; 

UINT FUNC6(ADMIN *a, RPC_ADMIN_OPTION *t)
{
	UINT i;

	NO_SUPPORT_FOR_BRIDGE;
	if (a->Server->ServerType == SERVER_TYPE_FARM_MEMBER)
	{
		return ERR_NOT_SUPPORTED;
	}

	FUNC0(t);
	FUNC4(t, sizeof(RPC_ADMIN_OPTION));

	t->NumItem = num_admin_options;
	t->Items = FUNC5(sizeof(ADMIN_OPTION) * t->NumItem);

	for (i = 0;i < t->NumItem;i++)
	{
		ADMIN_OPTION *a = &t->Items[i];

		FUNC2(a->Name, sizeof(a->Name), admin_options[i].Name);
		a->Value = admin_options[i].Value;
		FUNC3(a->Descrption, sizeof(a->Descrption), FUNC1(a->Name));
	}

	return ERR_NO_ERROR;
}