#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  size_t UINT ;
struct TYPE_3__ {size_t NumAccess; int /*<<< orphan*/ * Accesses; int /*<<< orphan*/  HubName; } ;
typedef  TYPE_1__ RPC_ENUM_ACCESS_LIST ;
typedef  int /*<<< orphan*/  PACK ;
typedef  int /*<<< orphan*/  ACCESS ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,size_t,size_t) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*) ; 

void FUNC3(PACK *p, RPC_ENUM_ACCESS_LIST *a)
{
	UINT i;
	// Validate arguments
	if (a == NULL || p == NULL)
	{
		return;
	}
	FUNC1(p, "HubName", a->HubName);

	FUNC2(p, "AccessList");
	for (i = 0;i < a->NumAccess;i++)
	{
		ACCESS *e = &a->Accesses[i];

		FUNC0(p, e, i, a->NumAccess);
	}
	FUNC2(p, NULL);
}