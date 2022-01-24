#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  size_t UINT ;
struct TYPE_4__ {int NumAccess; int /*<<< orphan*/ * Accesses; int /*<<< orphan*/  HubName; } ;
typedef  TYPE_1__ RPC_ENUM_ACCESS_LIST ;
typedef  int /*<<< orphan*/  PACK ;
typedef  int /*<<< orphan*/  ACCESS ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,size_t) ; 
 int FUNC1 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int) ; 
 int /*<<< orphan*/ * FUNC4 (int) ; 

void FUNC5(RPC_ENUM_ACCESS_LIST *a, PACK *p)
{
	UINT i;
	// Validate arguments
	if (a == NULL || p == NULL)
	{
		return;
	}

	FUNC3(a, sizeof(RPC_ENUM_ACCESS_LIST));
	FUNC2(p, "HubName", a->HubName, sizeof(a->HubName));
	a->NumAccess = FUNC1(p, "Protocol");
	a->Accesses = FUNC4(sizeof(ACCESS) * a->NumAccess);

	for (i = 0;i < a->NumAccess;i++)
	{
		ACCESS *e = &a->Accesses[i];

		FUNC0(e, p, i);
	}
}