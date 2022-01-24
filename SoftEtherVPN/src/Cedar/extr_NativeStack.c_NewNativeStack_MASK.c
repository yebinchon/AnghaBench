#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_15__   TYPE_3__ ;
typedef  struct TYPE_14__   TYPE_2__ ;
typedef  struct TYPE_13__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  tmp ;
struct TYPE_15__ {int /*<<< orphan*/  ref; } ;
struct TYPE_14__ {int /*<<< orphan*/  IsRawIpMode; } ;
struct TYPE_13__ {TYPE_2__* Eth; int /*<<< orphan*/  IsIpRawMode; int /*<<< orphan*/  MainThread; int /*<<< orphan*/  Cancel; int /*<<< orphan*/  DeviceName; int /*<<< orphan*/  MacAddress; int /*<<< orphan*/  Sock2; int /*<<< orphan*/  Ipc; TYPE_3__* Cedar; int /*<<< orphan*/  Sock1; } ;
typedef  TYPE_1__ NATIVE_STACK ;
typedef  int /*<<< orphan*/  IP ;
typedef  TYPE_2__ ETH ;
typedef  TYPE_3__ CEDAR ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 TYPE_3__* FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_3__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,char*,char*) ; 
 int /*<<< orphan*/  NsMainThread ; 
 TYPE_2__* FUNC10 (char*,int,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int,char*) ; 
 TYPE_1__* FUNC13 (int) ; 

NATIVE_STACK *FUNC14(CEDAR *cedar, char *device_name, char *mac_address_seed)
{
	ETH *eth;
	NATIVE_STACK *a;
	IP localhost;
	char tmp[64];
	bool release_cedar = false;
	// Validate arguments
	if (device_name == NULL || mac_address_seed == NULL)
	{
		return NULL;
	}

	FUNC4(&localhost);

	// Open the Eth device
	eth = FUNC10(device_name, false, false, NULL);
	if (eth == NULL)
	{
		return NULL;
	}

	if (cedar == NULL)
	{
		cedar = FUNC5(NULL, NULL);
		release_cedar = true;
	}

	a = FUNC13(sizeof(NATIVE_STACK));

	FUNC7(&a->Sock1, &a->Sock2, &localhost, 1, &localhost, 1);

	a->Cedar = cedar;
	FUNC0(a->Cedar->ref);

	FUNC9(a->MacAddress, mac_address_seed, device_name);

	FUNC1(tmp, sizeof(tmp), a->MacAddress, sizeof(a->MacAddress));
	FUNC2("NewNativeStack: MAC Address = %s\n", tmp);

	a->Ipc = FUNC6(cedar, a->Sock2, a->MacAddress);

	FUNC12(a->DeviceName, sizeof(a->DeviceName), device_name);

	a->Eth = eth;
	a->Cancel = FUNC3(eth);

	a->MainThread = FUNC8(NsMainThread, a);

	if (release_cedar)
	{
		FUNC11(cedar);
	}

	a->IsIpRawMode = a->Eth->IsRawIpMode;

	return a;
}