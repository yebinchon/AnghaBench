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
struct TYPE_4__ {void* ReleaseDate; void* NumUserCreationLicense; void* IsSubscriptionExpired; void* SubscriptionExpires; void* AllowEnterpriseFunction; void* NeedSubscription; void* NumBridgeConnectLicense; void* NumClientConnectLicense; void* SystemExpires; void* SystemId; int /*<<< orphan*/  EditionStr; void* EditionId; } ;
typedef  TYPE_1__ RPC_LICENSE_STATUS ;
typedef  int /*<<< orphan*/  PACK ;

/* Variables and functions */
 void* FUNC0 (int /*<<< orphan*/ *,char*) ; 
 void* FUNC1 (int /*<<< orphan*/ *,char*) ; 
 void* FUNC2 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,int) ; 

void FUNC5(RPC_LICENSE_STATUS *t, PACK *p)
{
	// Validate arguments
	if (t == NULL || p == NULL)
	{
		return;
	}

	FUNC4(t, sizeof(RPC_LICENSE_STATUS));

	t->EditionId = FUNC1(p, "EditionId");
	FUNC3(p, "EditionStr", t->EditionStr, sizeof(t->EditionStr) );
	t->SystemId = FUNC2(p, "SystemId");
	t->SystemExpires = FUNC2(p, "SystemExpires");
	t->NumClientConnectLicense = FUNC1(p, "NumClientConnectLicense");
	t->NumBridgeConnectLicense = FUNC1(p, "NumBridgeConnectLicense");

	// v3.0
	t->NeedSubscription = FUNC0(p, "NeedSubscription");
	t->AllowEnterpriseFunction = FUNC0(p, "AllowEnterpriseFunction");
	t->SubscriptionExpires = FUNC2(p, "SubscriptionExpires");
	t->IsSubscriptionExpired = FUNC0(p, "IsSubscriptionExpired");
	t->NumUserCreationLicense = FUNC1(p, "NumUserCreationLicense");
	t->ReleaseDate = FUNC2(p, "ReleaseDate");
}