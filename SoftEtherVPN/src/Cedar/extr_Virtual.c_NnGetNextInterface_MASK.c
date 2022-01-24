#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_26__   TYPE_6__ ;
typedef  struct TYPE_25__   TYPE_5__ ;
typedef  struct TYPE_24__   TYPE_4__ ;
typedef  struct TYPE_23__   TYPE_3__ ;
typedef  struct TYPE_22__   TYPE_2__ ;
typedef  struct TYPE_21__   TYPE_1__ ;
typedef  struct TYPE_20__   TYPE_12__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  tmp ;
typedef  int /*<<< orphan*/  opt ;
typedef  int /*<<< orphan*/  gateway_ip ;
typedef  int /*<<< orphan*/  dhcp_ip ;
typedef  int /*<<< orphan*/  client_mask ;
typedef  int /*<<< orphan*/  client_ip ;
typedef  scalar_t__ UINT ;
struct TYPE_26__ {int /*<<< orphan*/  Gateway; int /*<<< orphan*/  DnsServer2; int /*<<< orphan*/  DnsServer; int /*<<< orphan*/  ClasslessRoute; int /*<<< orphan*/  SubnetMask; int /*<<< orphan*/  ClientAddress; int /*<<< orphan*/  ServerAddress; } ;
struct TYPE_25__ {int NextWaitTimeForRetry; scalar_t__ LastInterfaceDeviceHash; scalar_t__ LastHostAddressHash; scalar_t__ LastInterfaceIndex; TYPE_6__* CurrentMacAddress; scalar_t__ FailedCount; int /*<<< orphan*/  HaltTube2; TYPE_2__* v; } ;
struct TYPE_24__ {int /*<<< orphan*/  DnsServerIP2; int /*<<< orphan*/  DnsServerIP; TYPE_12__* Ipc; TYPE_6__ CurrentDhcpOptionList; int /*<<< orphan*/  DeviceName; int /*<<< orphan*/  MacAddress; } ;
struct TYPE_23__ {scalar_t__ NumTokens; char** Token; } ;
struct TYPE_22__ {int /*<<< orphan*/  MacAddress; TYPE_1__* HubOption; } ;
struct TYPE_21__ {scalar_t__ DisableIpRawModeSecureNAT; scalar_t__ DisableKernelModeSecureNAT; } ;
struct TYPE_20__ {int /*<<< orphan*/  ClientHostname; TYPE_6__* MacAddress; } ;
typedef  TYPE_3__ TOKEN_LIST ;
typedef  TYPE_4__ NATIVE_STACK ;
typedef  TYPE_5__ NATIVE_NAT ;
typedef  int /*<<< orphan*/  IP ;
typedef  TYPE_6__ DHCP_OPTION_LIST ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_6__*,TYPE_6__*,int) ; 
 int /*<<< orphan*/  FUNC2 (char*,...) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_3__*) ; 
 scalar_t__ FUNC6 () ; 
 TYPE_3__* FUNC7 (int /*<<< orphan*/ *,int,int) ; 
 scalar_t__ FUNC8 () ; 
 scalar_t__ INFINITE ; 
 scalar_t__ FUNC9 (TYPE_12__*,TYPE_6__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_12__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (char*,int,int /*<<< orphan*/ ) ; 
 int FUNC12 (int /*<<< orphan*/ ,char*,int) ; 
 scalar_t__ FUNC13 (int /*<<< orphan*/ *) ; 
 int MAX_SIZE ; 
 int FUNC14 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  NN_HOSTNAME_FORMAT ; 
 int NN_NEXT_WAIT_TIME_FOR_DEVICE_ENUM ; 
 int /*<<< orphan*/  NN_NEXT_WAIT_TIME_MAX_FAIL_COUNT ; 
 int /*<<< orphan*/  NN_NO_NATIVE_NAT_FILENAME ; 
 TYPE_4__* FUNC15 (int /*<<< orphan*/ *,char*,char*) ; 
 scalar_t__ FUNC16 (TYPE_4__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *,int,int,int,int) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC20 (TYPE_6__*,int) ; 

NATIVE_STACK *FUNC21(NATIVE_NAT *t)
{
	NATIVE_STACK *ret = NULL;
	UINT current_hash;
	TOKEN_LIST *device_list;
	UINT i;
	char tmp[MAX_SIZE];
	char *dev_name;
	UINT current_ip_hash;
	// Validate arguments
	if (t == NULL)
	{
		return NULL;
	}

	t->NextWaitTimeForRetry = NN_NEXT_WAIT_TIME_FOR_DEVICE_ENUM * FUNC14((t->FailedCount + 1), NN_NEXT_WAIT_TIME_MAX_FAIL_COUNT);

	// Get the device list
	device_list = FUNC7(NULL,
		!(t->v->HubOption != NULL && t->v->HubOption->DisableKernelModeSecureNAT),
		!(t->v->HubOption != NULL && t->v->HubOption->DisableIpRawModeSecureNAT));

	if (device_list == NULL || device_list->NumTokens == 0)
	{
		// Device list acquisition failure (Or no device acquired as a result)
		FUNC5(device_list);
		t->FailedCount++;
		return NULL;
	}

	current_hash = FUNC6();
	current_ip_hash = FUNC8();

	if (t->LastInterfaceDeviceHash != current_hash || t->LastHostAddressHash != current_ip_hash)
	{
		// Device list is altered from the previous search
		t->LastInterfaceIndex = INFINITE;
		t->FailedCount = 0;
	}

	t->LastInterfaceDeviceHash = current_hash;
	t->LastHostAddressHash = current_ip_hash;

	if (t->LastInterfaceIndex == INFINITE)
	{
		i = 0;
	}
	else
	{
		i = t->LastInterfaceIndex + 1;
		if (i >= device_list->NumTokens)
		{
			i = 0;
		}
	}

	if ((i + 1) == device_list->NumTokens)
	{
		// Searched to the end
		t->LastInterfaceIndex = INFINITE;

		// Increase the number of search failures by one
		t->FailedCount++;
	}
	else
	{
		// It is not the end yet
		t->LastInterfaceIndex = i;
		t->NextWaitTimeForRetry = 0;
	}

	dev_name = device_list->Token[i];

	if (FUNC12(NN_NO_NATIVE_NAT_FILENAME, dev_name, true) == false)
	{
		// Try to open the device
		FUNC0(tmp, sizeof(tmp), t->v->MacAddress, 6);
		ret = FUNC15(NULL, dev_name, tmp);

		if (ret != NULL)
		{
			// Test whether an IP address can be obtained from a DHCP server
			DHCP_OPTION_LIST opt;

			FUNC1(t->CurrentMacAddress, ret->Ipc->MacAddress, 6);

			FUNC20(&opt, sizeof(opt));

			FUNC0(tmp, sizeof(tmp), ret->MacAddress, 6);
			FUNC3(ret->Ipc->ClientHostname, sizeof(ret->Ipc->ClientHostname), NN_HOSTNAME_FORMAT, tmp);
			FUNC18(ret->Ipc->ClientHostname);

			FUNC2("IPCDhcpAllocateIP for %s\n", ret->DeviceName);
			if (FUNC9(ret->Ipc, &opt, t->HaltTube2))
			{
				char client_ip[64];
				char dhcp_ip[64];
				char client_mask[64];
				char gateway_ip[64];

				IP ip;
				IP subnet;
				IP gw;

				FUNC11(client_ip, sizeof(client_ip), opt.ClientAddress);
				FUNC11(client_mask, sizeof(client_mask), opt.SubnetMask);
				FUNC11(dhcp_ip, sizeof(dhcp_ip), opt.ServerAddress);
				FUNC11(gateway_ip, sizeof(gateway_ip), opt.Gateway);

				FUNC2("DHCP: client_ip=%s, client_mask=%s, dhcp_ip=%s, gateway_ip=%s\n",
					client_ip, client_mask, dhcp_ip, gateway_ip);

				FUNC1(&ret->CurrentDhcpOptionList, &opt, sizeof(DHCP_OPTION_LIST));

				// IP parameter settings
				FUNC19(&ip, opt.ClientAddress);
				FUNC19(&subnet, opt.SubnetMask);
				FUNC19(&gw, opt.Gateway);

				FUNC10(ret->Ipc, &ip, &subnet, &gw, &opt.ClasslessRoute);

				// Determine the DNS server to use
				FUNC19(&ret->DnsServerIP, opt.DnsServer);
				FUNC19(&ret->DnsServerIP2, opt.DnsServer2);
				if (FUNC13(&ret->DnsServerIP))
				{
					// Use 8.8.8.8 instead If the DNS is not assigned from the DHCP server
					FUNC17(&ret->DnsServerIP, 8, 8, 8, 8);
				}
				if (FUNC13(&ret->DnsServerIP2))
				{
					// Use 8.8.4.4 instead If the DNS is not assigned from the DHCP server
					FUNC17(&ret->DnsServerIP2, 8, 8, 4, 4);
				}

				// Connectivity test
				// (always fail if the default gateway is not set)
				if (opt.Gateway != 0 &&
					FUNC16(ret, t->HaltTube2))
				{
					// Reset the number of search failures
					t->FailedCount = 0;
					FUNC2("Connectivity OK.\n");
				}
				else
				{
					FUNC2("Connectivity Failed.\n");
					FUNC4(ret);
					ret = NULL;
				}
			}
			else
			{
				FUNC2("DHCP Failed.\n");
				FUNC4(ret);
				ret = NULL;

				FUNC20(t->CurrentMacAddress, sizeof(t->CurrentMacAddress));
			}
		}
	}

	FUNC5(device_list);

	return ret;
}