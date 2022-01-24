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
struct TYPE_3__ {int /*<<< orphan*/  ReleaseDate; int /*<<< orphan*/  NumUserCreationLicense; int /*<<< orphan*/  IsSubscriptionExpired; int /*<<< orphan*/  SubscriptionExpires; int /*<<< orphan*/  AllowEnterpriseFunction; int /*<<< orphan*/  NeedSubscription; int /*<<< orphan*/  NumBridgeConnectLicense; int /*<<< orphan*/  NumClientConnectLicense; int /*<<< orphan*/  SystemExpires; int /*<<< orphan*/  SystemId; int /*<<< orphan*/  EditionStr; int /*<<< orphan*/  EditionId; } ;
typedef  TYPE_1__ RPC_LICENSE_STATUS ;
typedef  int /*<<< orphan*/  PACK ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 

void FUNC5(PACK *p, RPC_LICENSE_STATUS *t)
{
	// Validate arguments
	if (t == NULL || p == NULL)
	{
		return;
	}

	FUNC1(p, "EditionId", t->EditionId);
	FUNC3(p, "EditionStr", t->EditionStr);
	FUNC2(p, "SystemId", t->SystemId);
	FUNC4(p, "SystemExpires", t->SystemExpires);
	FUNC1(p, "NumClientConnectLicense", t->NumClientConnectLicense);
	FUNC1(p, "NumBridgeConnectLicense", t->NumBridgeConnectLicense);

	// v3.0
	FUNC0(p, "NeedSubscription", t->NeedSubscription);
	FUNC0(p, "AllowEnterpriseFunction", t->AllowEnterpriseFunction);
	FUNC4(p, "SubscriptionExpires", t->SubscriptionExpires);
	FUNC0(p, "IsSubscriptionExpired", t->IsSubscriptionExpired);
	FUNC1(p, "NumUserCreationLicense", t->NumUserCreationLicense);
	FUNC4(p, "ReleaseDate", t->ReleaseDate);
}