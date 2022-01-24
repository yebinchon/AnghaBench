#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_20__   TYPE_5__ ;
typedef  struct TYPE_19__   TYPE_3__ ;
typedef  struct TYPE_18__   TYPE_2__ ;
typedef  struct TYPE_17__   TYPE_1__ ;

/* Type definitions */
struct TYPE_20__ {scalar_t__ AuthType; int /*<<< orphan*/ * CheckCertProc; int /*<<< orphan*/ * SecureSignProc; } ;
struct TYPE_19__ {int /*<<< orphan*/  LinkList; int /*<<< orphan*/  StopAllLinkFlag; scalar_t__ Halt; } ;
struct TYPE_18__ {int /*<<< orphan*/  ref; TYPE_1__* Policy; TYPE_3__* Hub; TYPE_5__* Auth; TYPE_1__* Option; int /*<<< orphan*/ * Cedar; int /*<<< orphan*/  lock; int /*<<< orphan*/ * StopAllLinkFlag; } ;
struct TYPE_17__ {int RequireBridgeRoutingMode; int RequireMonitorMode; int RetryInterval; int NoRoutingTracking; int /*<<< orphan*/  NumRetry; int /*<<< orphan*/  DeviceName; int /*<<< orphan*/  AccountName; } ;
typedef  TYPE_1__ POLICY ;
typedef  TYPE_2__ LINK ;
typedef  TYPE_3__ HUB ;
typedef  TYPE_1__ CLIENT_OPTION ;
typedef  TYPE_5__ CLIENT_AUTH ;
typedef  int /*<<< orphan*/  CEDAR ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ CLIENT_AUTHTYPE_ANONYMOUS ; 
 scalar_t__ CLIENT_AUTHTYPE_CERT ; 
 scalar_t__ CLIENT_AUTHTYPE_PASSWORD ; 
 scalar_t__ CLIENT_AUTHTYPE_PLAIN_PASSWORD ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,TYPE_1__*,int) ; 
 TYPE_5__* FUNC3 (TYPE_5__*) ; 
 int /*<<< orphan*/  INFINITE ; 
 int /*<<< orphan*/  LINK_DEVICE_NAME ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 scalar_t__ MAX_HUB_LINKS ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 void* FUNC12 (int) ; 

LINK *FUNC13(CEDAR *cedar, HUB *hub, CLIENT_OPTION *option, CLIENT_AUTH *auth, POLICY *policy)
{
	CLIENT_OPTION *o;
	LINK *k;
	CLIENT_AUTH *a;
	// Validate arguments
	if (cedar == NULL || hub == NULL || option == NULL || auth == NULL || policy == NULL)
	{
		return NULL;
	}
	if (hub->Halt)
	{
		return NULL;
	}

	if (FUNC4(hub->LinkList) >= MAX_HUB_LINKS)
	{
		return NULL;
	}

	if (FUNC10(option->AccountName))
	{
		return NULL;
	}

	// Limitation of authentication method
	if (auth->AuthType != CLIENT_AUTHTYPE_ANONYMOUS && auth->AuthType != CLIENT_AUTHTYPE_PASSWORD &&
		auth->AuthType != CLIENT_AUTHTYPE_PLAIN_PASSWORD && auth->AuthType != CLIENT_AUTHTYPE_CERT)
	{
		// Authentication method other than anonymous authentication, password authentication, plain password, certificate authentication cannot be used
		return NULL;
	}

	// Copy of the client options (for modification)
	o = FUNC12(sizeof(CLIENT_OPTION));
	FUNC2(o, option, sizeof(CLIENT_OPTION));
	FUNC9(o->DeviceName, sizeof(o->DeviceName), LINK_DEVICE_NAME);

	o->RequireBridgeRoutingMode = true;	// Request the bridge mode
	o->RequireMonitorMode = false;	// Not to require the monitor mode

	o->NumRetry = INFINITE;			// Retry the connection infinitely
	o->RetryInterval = 10;			// Retry interval is 10 seconds
	o->NoRoutingTracking = true;	// Stop the routing tracking

	// Copy the authentication data
	a = FUNC3(auth);
	a->SecureSignProc = NULL;
	a->CheckCertProc = NULL;

	// Link object
	k = FUNC12(sizeof(LINK));

	k->StopAllLinkFlag = &hub->StopAllLinkFlag;

	k->lock = FUNC6();
	k->ref = FUNC7();

	k->Cedar = cedar;
	k->Option = o;
	k->Auth = a;
	k->Hub = hub;

	// Copy the policy
	k->Policy = FUNC12(sizeof(POLICY));
	FUNC2(k->Policy, policy, sizeof(POLICY));

	// Normalize the policy
	FUNC8(k->Policy);

	// Register in the link list of the HUB
	FUNC5(hub->LinkList);
	{
		FUNC0(hub->LinkList, k);
		FUNC1(k->ref);
	}
	FUNC11(hub->LinkList);

	return k;
}