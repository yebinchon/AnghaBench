#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  size_t UINT ;
struct TYPE_5__ {size_t NumItem; TYPE_1__* Items; } ;
struct TYPE_4__ {int /*<<< orphan*/  SerialId; int /*<<< orphan*/  SystemId; int /*<<< orphan*/  ProductId; int /*<<< orphan*/  Status; int /*<<< orphan*/  Expires; int /*<<< orphan*/  LicenseName; int /*<<< orphan*/  LicenseId; int /*<<< orphan*/  LicenseKey; int /*<<< orphan*/  Id; } ;
typedef  TYPE_1__ RPC_ENUM_LICENSE_KEY_ITEM ;
typedef  TYPE_2__ RPC_ENUM_LICENSE_KEY ;
typedef  int /*<<< orphan*/  PACK ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,size_t) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,size_t,size_t) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,size_t,size_t) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,size_t,size_t) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,size_t,size_t) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char*) ; 

void FUNC6(PACK *p, RPC_ENUM_LICENSE_KEY *t)
{
	UINT i;
	// Validate arguments
	if (t == NULL || p == NULL)
	{
		return;
	}

	FUNC0(p, "NumItem", t->NumItem);

	FUNC5(p, "LicenseKeyList");
	for (i = 0;i < t->NumItem;i++)
	{
		RPC_ENUM_LICENSE_KEY_ITEM *e = &t->Items[i];

		FUNC2(p, "Id", e->Id, i, t->NumItem);
		FUNC3(p, "LicenseKey", e->LicenseKey, i, t->NumItem);
		FUNC3(p, "LicenseId", e->LicenseId, i, t->NumItem);
		FUNC3(p, "LicenseName", e->LicenseName, i, t->NumItem);
		FUNC4(p, "Expires", e->Expires, i, t->NumItem);
		FUNC2(p, "Status", e->Status, i, t->NumItem);
		FUNC2(p, "ProductId", e->ProductId, i, t->NumItem);
		FUNC1(p, "SystemId", e->SystemId, i, t->NumItem);
		FUNC2(p, "SerialId", e->SerialId, i, t->NumItem);
	}
	FUNC5(p, NULL);
}