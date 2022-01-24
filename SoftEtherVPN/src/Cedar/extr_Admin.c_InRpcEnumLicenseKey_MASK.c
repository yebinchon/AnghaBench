#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  size_t UINT ;
struct TYPE_7__ {int NumItem; TYPE_1__* Items; } ;
struct TYPE_6__ {void* SerialId; void* SystemId; void* ProductId; void* Status; void* Expires; int /*<<< orphan*/  LicenseName; int /*<<< orphan*/  LicenseId; int /*<<< orphan*/  LicenseKey; void* Id; } ;
typedef  TYPE_1__ RPC_ENUM_LICENSE_KEY_ITEM ;
typedef  TYPE_2__ RPC_ENUM_LICENSE_KEY ;
typedef  int /*<<< orphan*/  PACK ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *,char*) ; 
 void* FUNC1 (int /*<<< orphan*/ *,char*,size_t) ; 
 void* FUNC2 (int /*<<< orphan*/ *,char*,size_t) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,int,size_t) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*,int) ; 
 TYPE_1__* FUNC5 (int) ; 

void FUNC6(RPC_ENUM_LICENSE_KEY *t, PACK *p)
{
	UINT i;
	// Validate arguments
	if (t == NULL || p == NULL)
	{
		return;
	}

	FUNC4(t, sizeof(RPC_ENUM_LICENSE_KEY));
	t->NumItem = FUNC0(p, "NumItem");
	t->Items = FUNC5(sizeof(RPC_ENUM_LICENSE_KEY_ITEM) * t->NumItem);
	for (i = 0;i < t->NumItem;i++)
	{
		RPC_ENUM_LICENSE_KEY_ITEM *e = &t->Items[i];

		e->Id = FUNC2(p, "Id", i);
		FUNC3(p, "LicenseKey", e->LicenseKey, sizeof(e->LicenseKey), i);
		FUNC3(p, "LicenseId", e->LicenseId, sizeof(e->LicenseId), i);
		FUNC3(p, "LicenseName", e->LicenseName, sizeof(e->LicenseName), i);
		e->Expires = FUNC1(p, "Expires", i);
		e->Status = FUNC2(p, "Status", i);
		e->ProductId = FUNC2(p, "ProductId", i);
		e->SystemId = FUNC1(p, "SystemId", i);
		e->SerialId = FUNC2(p, "SerialId", i);
	}
}